package com.sh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lky.face.DBConnection;
import com.lky.face.FaceV3DetectBean;
import com.lky.face.test.GsonUtils;
import com.lky.face.test.HttpUtil;
import com.lky.face.utils.DbUtil;
import com.sh.utils.HibernateUtils;
import com.sh.utils.PageInfo;
import com.sh.vo.Users;

public class UsersDao {

	Session session = null;
	
	public boolean insert(Users users) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			session.save(users);
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public boolean delete(int u_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="delete from Users where u_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, u_id);
			q.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public boolean update_pwd(Users users) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Users set u_pwd = ? where u_id = ?";
			Query q = session.createQuery(hql);
			q.setString(0, users.getU_pwd());
			q.setInteger(1, users.getU_id());
			q.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public boolean update_info(Users users) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Users set u_email = ?,u_phone=?,u_addr=?,u_sex=? where u_id = ?";
			Query q = session.createQuery(hql);
			q.setString(0, users.getU_email());
			q.setString(1,users.getU_phone());
			q.setString(2,users.getU_addr());
			q.setString(3,users.getU_sex());
			q.setInteger(4, users.getU_id());
			q.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public Users query(int u_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="from Users where u_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, u_id);
			List<Users> list = q.list();  
			session.getTransaction().commit();
			return list.get(0);
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	
	/**
	 * 人脸注册
	 * @param users
	 * @return
	 */
	
	
	public boolean insert_face(Users users) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Users set u_name = ?,u_base64=? where u_id = ?";
			Query q = session.createQuery(hql);
			q.setString(0, users.getU_name());
			q.setString(1,users.getU_base64());			
			q.setInteger(2, users.getU_id());
			q.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public Users query_face(int u_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="from Users where u_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, u_id);
			List<Users> list = q.list();  
			session.getTransaction().commit();
			return list.get(0);
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	
	
	
	
	
	
	
	
	public Users query_(Users users) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="from Users where u_name = ? "
					+ "and u_pwd = ? and u_state = ?";
			Query q = session.createQuery(hql);
			q.setString(0, users.getU_name());
			q.setString(1, users.getU_pwd());
			q.setInteger(2, users.getU_state());
			List<Users> list = q.list();  
			session.getTransaction().commit();
			if(list != null && list.size() > 0){
				return list.get(0);
			}else{
				return null;
			}
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	/**
	 * 刷脸登录验证
	 * @param users
	 * @return
	 */
	

	private static final String MACTCHURL = "https://aip.baidubce.com/rest/2.0/face/v3/match";
	private static String access_token;
	static {// 获取token值
		String sql="SELECT access_token FROM token WHERE id=?";
		List <Map<String,Object>> results=DbUtil.queryForList(sql, 1);
		//System.out.println(results);
		Map<String,Object>map=results.get(0);
		String access_token1=(String) map.get("access_token");
		access_token=access_token1;		
	}
	public Users face_query_(Users users) {
		session = HibernateUtils.getSession();
		//接收前台传递的用户名
		String u_name=users.getU_name();
		//接收前台传递的人脸信息
		String u_base64=users.getU_base64();
		String dbBase=null;
		try {
		//查询对应用户名的数据库中的人脸信息
		String sql="SELECT u_base64 FROM users WHERE u_name=?";
		List <Map<String,Object>> results=DbUtil.queryForList(sql, u_name);
		//System.out.println(results);
		Map<String,Object>map=results.get(0);
		 dbBase=(String) map.get("u_base64");
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		try{
			session.beginTransaction();
			String hql="from Users where u_name = ? and u_state = ?";
			Query q = session.createQuery(hql);
			q.setString(0, users.getU_name());
			//q.setString(1, users.getU_base64());//比较两个是否一样			
			boolean flag= false;
			//根据图片进行注册
			//byte[] bytes2 = FileUtil.readFileByBytes("C:\\2.jpg");
			//String image2 = Base64Util.encode(bytes2);
			List<Map<String, Object>> images = new ArrayList<>();
			Map<String, Object> map1 = new HashMap<>();
			map1.put("image", u_base64);
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
			q.setInteger(1, users.getU_state());
			List<Users> list = q.list();  
			session.getTransaction().commit();
			try {
				String result = HttpUtil.post(MACTCHURL, access_token, param);
				JSON json = JSON.parseObject(result);
				FaceV3DetectBean bean = JSONObject.toJavaObject
						(json, FaceV3DetectBean.class);
				try{
					String d1=bean.getResult().getScore();
	            
	            	 double d=Double.parseDouble(d1);
	 				System.out.println(d);
	 				if(d>90) {
	 					flag=true;
	 					System.out.println("登录成功");
	 					return list.get(0);
	 					//request.getSession().setAttribute("USERS", u);
	 				}else {
	 				}}catch (Exception e) {
					// TODO: handle exception
				}} catch (Exception e) {
				e.printStackTrace();}
			if(list != null && list.size() > 0){
				return null;}else{
				return null;}
		   }catch (Exception exp) {
			exp.printStackTrace(System.out);
	    	} finally {	HibernateUtils.closeSession(session);
		     }
		     return null;}
	
	
	/**
	 * 手机端人脸登录
	 * @param page
	 * @return
	 */
	
	
	public Users face_query_phone(Users users) {
		session = HibernateUtils.getSession();
		//接收前台传递的用户名
		String u_name=users.getU_name();
		//接收前台传递的人脸信息
		String u_base64=users.getU_base64();
		String dbBase=null;
		try {
			
		
		//查询对应用户名的数据库中的人脸信息
		String sql="SELECT u_base64 FROM users WHERE u_name=?";
		List <Map<String,Object>> results=DbUtil.queryForList(sql, u_name);
		//System.out.println(results);
		Map<String,Object>map=results.get(0);
		 dbBase=(String) map.get("u_base64");
		} catch (Exception e) {
			return null;
		}
		
		try{
			session.beginTransaction();
			String hql="from Users where u_name = ? and u_state = ?";
			Query q = session.createQuery(hql);
			q.setString(0, users.getU_name());
		
			//q.setString(1, users.getU_base64());//比较两个是否一样			
			boolean flag= false;
			//根据图片进行注册
			//byte[] bytes2 = FileUtil.readFileByBytes("C:\\2.jpg");
			//String image2 = Base64Util.encode(bytes2);
			List<Map<String, Object>> images = new ArrayList<>();
			Map<String, Object> map1 = new HashMap<>();

			map1.put("image", u_base64);
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
			q.setInteger(1, users.getU_state());
			List<Users> list = q.list();  
			session.getTransaction().commit();
			try {
				String result = HttpUtil.post(MACTCHURL, access_token, param);
				
				//System.out.println(result);
				//System.out.println("=====接口返回内容:"+result);				
				JSON json = JSON.parseObject(result);
				FaceV3DetectBean bean = JSONObject.toJavaObject(json, FaceV3DetectBean.class);
				try{
					String d1=bean.getResult().getScore();
	            
	            	 double d=Double.parseDouble(d1);
	 				System.out.println(d);
	 				if(d>90 && list != null && list.size() > 0) {
	 					flag=true;
	 					System.out.println("登录成功");
	 					return list.get(0);
	 					//request.getSession().setAttribute("USERS", u);
	 				}else {
	 					return null;
	 				}
				}catch (Exception e) {
					// TODO: handle exception
					return null;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	
	
	
	
	
	
	
	public PageInfo queryPage(PageInfo page) {
		// TODO Auto-generated method stub
		session = HibernateUtils.getSession();
		try {
			StringBuffer sql = new StringBuffer(" select count(*) from Users ");
			Query cq = session.createQuery(sql.toString());
			session.beginTransaction();
			List lst = cq.list();
			session.getTransaction().commit();
			if(lst.size() > 0){
				page.setSum(Integer.parseInt(lst.get(0).toString()));
				session.beginTransaction();
				String hql = " from Users order by u_id desc"; //User������     
		        Query q = session.createQuery(hql);      
		        q.setFirstResult(page.getBeginRow()); //�ӵ�0����ʼ      
		        q.setMaxResults(page.getPagecount()); //ȡ��10�� 
		        page.setList(q.list());
		        session.getTransaction().commit();   
		    }
	        return page;
		} catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return page;
	}
	
	
	
	
	
}
