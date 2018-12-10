package com.lky.face.utils;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import com.baidu.aip.util.Base64Util;
import com.google.gson.JsonArray;
import com.lky.face.test.FileUtil;
import com.lky.face.test.HttpUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
* 人脸探测
* @author liyingming
* @data 2017-11-15
*/
public class A {

    /**
    * 重要提示代码中所需工具类
    * FileUtil,Base64Util,HttpUtil,GsonUtils请从
    * https://ai.baidu.com/file/658A35ABAB2D404FBF903F64D47C1F72
    * https://ai.baidu.com/file/C8D81F3301E24D2892968F09AE1AD6E2
    * https://ai.baidu.com/file/544D677F5D4E4F17B4122FBD60DB82B3
    * https://ai.baidu.com/file/470B3ACCA3FE43788B5A963BF0B625F3
    * 下载
    */
    public static String detect() {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v1/detect";
        try {
            // 本地文件路径
            String filePath = "C:\\2.jpg";
            byte[] imgData = FileUtil.readFileByBytes(filePath);
            String imgStr = Base64Util.encode(imgData);
            String imgParam = URLEncoder.encode(imgStr, "UTF-8");
            String param = "max_face_num=" + 5 + "&face_fields=" + "age,beauty,expression,faceshape,gender,glasses,landmark,race,qualities" + "&image=" + imgParam;

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = "24.d0407b8e51b5a8daddbb3aed49979294.2592000.1534937724.282335-11574616";

            String result = HttpUtil.post(url, accessToken, param);
            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static  Map<String, String> detectby(byte[] arg0) {
    	Map<String, String> map = new HashMap<String,String>();
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/face/v1/detect";
        try {
            // 图片数据
            String imgStr = Base64Util.encode(arg0);
            String imgParam = URLEncoder.encode(imgStr, "UTF-8");
            String param = "max_face_num=" + 1 + "&face_fields=" + "age,beauty,expression,faceshape,gender,glasses,landmark,race,qualities" + "&image=" + imgParam;
            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = "24.d0407b8e51b5a8daddbb3aed49979294.2592000.1534937724.282335-11574616";
            String str = HttpUtil.post(url, accessToken, param);
            System.out.println(str);
            
	     	JSONObject jsonobject = JSONObject.fromObject(str);
	     	String result = jsonobject.getString("result");
	     	
	     	JSONArray json = JSONArray.fromObject(result); // 首先把字符串转成 JSONArray  对象
	     	 for(int i=0;i<json.size();i++){
			        JSONObject job = json.getJSONObject(i);  // 遍历 jsonarray 数组，把每一个对象转成 json 对象
			        
			    	//获取年龄
			        Double ageOne = (Double) job.get("age");
			     	//处理年龄
			        String age =String.valueOf(new BigDecimal(ageOne).setScale(0, BigDecimal.ROUND_HALF_UP));
					map.put("age", age);
					
					//获取美丑打分
			        Double beautyOne = (Double) job.get("beauty");
					//处理美丑打分
			     	String beauty =String.valueOf(new BigDecimal(beautyOne).setScale(0, BigDecimal.ROUND_HALF_UP));
					map.put("beauty", beauty);
					
					//获取性别  male(男)、female(女)
					String gender = (String) job.get("gender");
					map.put("gender", gender);
					
					//获取是否带眼睛 0-无眼镜，1-普通眼镜，2-墨镜
					Integer glasses = (Integer) job.get("glasses");
					map.put("glasses", String.valueOf(glasses));
					
					//获取是否微笑，0，不笑；1，微笑；2，大笑
					Integer expression = (Integer) job.get("expression");
					map.put("expression", String.valueOf(expression));
			 }
	     	
            return map;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public static void main(String[] args) {
        A.detect();
    }
}
