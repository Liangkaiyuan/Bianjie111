package com.lky.face;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lky.face.test.Base64Util;
import com.lky.face.test.FileUtil;
import com.lky.face.test.GsonUtils;
import com.lky.face.test.HttpUtil;
import com.lky.face.utils.DbUtil;

@WebServlet("/login_admin")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 获取token值

	private static String access_token;

	static {// 获取token值
		String sql="SELECT access_token FROM token WHERE id=?";
		List <Map<String,Object>> results=DbUtil.queryForList(sql, 1);
		//System.out.println(results);
		Map<String,Object>map=results.get(0);
		String access_token1=(String) map.get("access_token");
		access_token=access_token1;		
	}

	// 百度注册api信息获取token

	private static final String MACTCHURL = "https://aip.baidubce.com/rest/2.0/face/v3/match";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String base64 = request.getParameter("base64");
		//System.out.println(base64);

		
		//引用数据库中的数据
		String admin="admin";
		String sql="SELECT u_base64 FROM users WHERE u_name='"+admin+"'";
		List <Map<String,Object>> results=DbUtil.queryForList(sql);
		//System.out.println(results);
		Map<String,Object>map=results.get(0);
		String dbBase=(String) map.get("u_base64");								
		//System.out.println(dbBase);
		boolean flag= false;
		//根据图片进行注册
		//byte[] bytes2 = FileUtil.readFileByBytes("C:\\2.jpg");
		//String image2 = Base64Util.encode(bytes2);
		List<Map<String, Object>> images = new ArrayList<>();
		Map<String, Object> map1 = new HashMap<>();

		map1.put("image", base64);
		map1.put("image_type", "BASE64");
		map1.put("face_type", "LIVE");
		map1.put("quality_control", "LOW");
		map1.put("liveness_control", "NORMAL");

		Map<String, Object> map2 = new HashMap<>();

		//map2.put("image", image2);
		map2.put("image", dbBase);
		map2.put("image_type", "BASE64");
		map2.put("face_type", "LIVE");
		map2.put("quality_control", "LOW");
		map2.put("liveness_control", "NORMAL");
		images.add(map1);
		images.add(map2);

		String param = GsonUtils.toJson(images);      

		try {
			String result = HttpUtil.post(MACTCHURL, access_token, param);
			
			//System.out.println(result);
			//System.out.println("=====接口返回内容:"+result);
			
			JSON json = JSON.parseObject(result);
			FaceV3DetectBean bean = JSONObject.toJavaObject(json, FaceV3DetectBean.class);
			try{
				String d1=bean.getResult().getScore();
            
            	 double d=Double.parseDouble(d1);
 				//System.out.println(d);
 				if(d>90) {
 					flag=true;
 					
 				}else {
 					
 				}
			}catch (Exception e) {
				// TODO: handle exception
			}
//				double d=Double.parseDouble(d1);
//				System.out.println(d);
//			
//			String d1=bean.getResult().getScore();
//			double d=Double.parseDouble(d1);
//			System.out.println(d);
			//判断分数是否>90
			
			
			
			//System.out.println("人脸分数:"+bean.getResult().getScore());
			//System.out.println("美丑打分:"+bean.getResult().getFace_list().get(0).getBeauty());
			//System.out.println("年龄:"+bean.getResult().getFace_list().get(0).getAge());
		

		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			if(flag){
				response.setContentType("text/html;charset=UTF-8"); 
				response.getWriter().print(true);
			}else {
				response.setContentType("text/html;charset=UTF-8"); 
				response.getWriter().print(false);
			}
			
		}

	}
	

}
