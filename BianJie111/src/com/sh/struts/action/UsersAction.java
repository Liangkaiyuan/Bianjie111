package com.sh.struts.action;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import com.sh.utils.MyTools;
import com.sh.dao.UsersDao;
import com.sh.utils.PageInfo;
import com.sh.vo.Users;

public class UsersAction extends DispatchAction{
	
	/**
	 * 后台登录
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward login_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				users.setU_name(MyTools.getGBK(request.getParameter("u_name").trim()));
			}else{request.setAttribute("message", "用户名不能为空");
				return new ActionForward("/admin/users_login.jsp");}
			if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
				users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));}else{
				request.setAttribute("message", "密码不能为空");
				return new ActionForward("/admin/users_login.jsp");}
			UsersDao uDao = new UsersDao();
			users.setU_state(0);
			Users u = (Users) uDao.query_(users);
			if(u != null){
				request.getSession().setAttribute("ADMIN", u);
				return new ActionForward("/users.do?m=list_admin");
			}else{
				request.setAttribute("message", "用户名或密码错误！");
				return new ActionForward("/admin/users_login.jsp");}
		}catch(Exception e){
			e.printStackTrace();}return null;}
	
	/**
	 * 后台用户分页
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward list_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Map<String, String> maps = new HashMap<String, String>();
			PageInfo pi = new PageInfo();
			pi.setPagecount(5);
			try {
				if (request.getParameter("page") != null
						&& !request.getParameter("page").equals("")) {
					pi.setPage(Integer.parseInt(request.getParameter("page")));
				}
			} catch (Exception e) {
				pi.setPage(1);
			}
			UsersDao uDao = new UsersDao();
			pi = uDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/admin/users_list.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	 
	
	/**
	 * 修改密码
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward pwd_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Users users = new Users();
			if(request.getSession().getAttribute("ADMIN") != null){
				users.setU_id(((Users)request.getSession().getAttribute("ADMIN")).getU_id());
			}
			if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
				users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
			}else{
				request.setAttribute("message", "密码不能为空");
				return new ActionForward("/admin/users_pwd.jsp");
			}
			if(request.getParameter("u_rpwd") == null || request.getParameter("u_rpwd").equals("")){
				request.setAttribute("message", "确认密码不能为空");
				return new ActionForward("/admin/users_pwd.jsp");
			}
			if(!request.getParameter("u_rpwd").equals(request.getParameter("u_pwd") )){
				request.setAttribute("message", "两次密码不一致");
				return new ActionForward("/admin/users_pwd.jsp");
			}
			UsersDao uDao = new UsersDao();
			uDao.update_pwd(users);
			request.setAttribute("message", "修改成功!");
			return new ActionForward("/admin/users_pwd.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 *删除用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward delete_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		try{
			Users users = new Users();
			if(request.getParameter("u_id") != null && !request.getParameter("u_id").equals("")){
				users.setU_id(Integer.parseInt(request.getParameter("u_id").trim()));
			}else{
				return new ActionForward("/users.do?m=list_admin");
			}
			UsersDao uDao = new UsersDao();
			uDao.delete(users.getU_id());
			return new ActionForward("/users.do?m=list_admin");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 前台首页登录
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				users.setU_name(request.getParameter("u_name").trim());
			}else{
				request.setAttribute("message", "用户名不能为空");
				return new ActionForward("/a.jsp");
			}
			
			if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
				users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
			}else{
				request.setAttribute("message", "密码不能为空");
				return new ActionForward("/a.jsp");
			}
			users.setU_state(1);
			UsersDao uDao = new UsersDao();
			Users u = (Users) uDao.query_(users);
			if(u != null){
				request.getSession().setAttribute("USERS", u);
				return new ActionForward("/hotel.do?m=index");
			}else{
				request.setAttribute("message", "用户名或密码错误");
				return new ActionForward("/index.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	/**
	 * 电脑前台刷脸登录
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * 
	 * 使用账号和脸进行登录验证
	 */
	public ActionForward face_login(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				
				users.setU_name(request.getParameter("u_name").trim());
			}else{
				request.setAttribute("message", "用户名不能为空");
				return new ActionForward("/facelogin_users.jsp");
			}
			//将密码的传值改为脸部信息
			if(request.getParameter("u_base64") != null && !request.getParameter("u_base64").equals("")){
				users.setU_base64(request.getParameter("u_base64").trim());
			}else{
				request.setAttribute("message", "脸部信息不正确");
				return new ActionForward("/facelogin_users.jsp");
			}
			users.setU_state(1);
			UsersDao uDao = new UsersDao();
			Users u = (Users) uDao.face_query_(users);
			if(u != null){
				request.getSession().setAttribute("USERS", u);
				return new ActionForward("/hotel.do?m=index");
			}else{
				request.setAttribute("message", "脸部信息不正确，请调整脸部姿势");
				return new ActionForward("/facelogin_users.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 前台手机端人脸登录
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	
	
	public ActionForward face_login_phone(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				
				users.setU_name(request.getParameter("u_name").trim());
			}else{
				request.setAttribute("message", "用户名不能为空");
				return new ActionForward("/face_phone.jsp");
			}
			//将密码的传值改为脸部信息
			if(request.getParameter("u_base64") != null && !request.getParameter("u_base64").equals("")){
				users.setU_base64(request.getParameter("u_base64").trim());
			}else{
				request.setAttribute("message", "脸部信息不正确");
				return new ActionForward("/face_phone.jsp");
			}
			users.setU_state(1);
			UsersDao uDao = new UsersDao();
			Users u = (Users) uDao.face_query_phone(users);
			if(u != null){
				request.getSession().setAttribute("USERS", u);
				return new ActionForward("/hotel.do?m=index");
			}else{
				request.setAttribute("message", "脸部信息或用户名不正确，请调整脸部姿势");
				return new ActionForward("/face_phone.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	
	
	/**
	 * 前台登录跳转客房
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward login_rooms(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				users.setU_name(request.getParameter("u_name").trim());
			}else{
				request.setAttribute("message", "用户名不能为空");
				return new ActionForward("/login.jsp");
			}
			
			if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
				users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
			}else{
				request.setAttribute("message", "密码不能为空");
				return new ActionForward("/login.jsp");
			}
			users.setU_state(1);
			UsersDao uDao = new UsersDao();
			Users u = (Users) uDao.query_(users);
			if(u != null){
				request.getSession().setAttribute("USERS", u);
				//return new ActionForward("/hotel.do?m=index");
				return new ActionForward("/rooms.do?m=list");
			}else{
				request.setAttribute("message", "用户名或密码错误");
				return new ActionForward("/login.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 前台登录跳转用户留言
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward login_comments(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				users.setU_name(request.getParameter("u_name").trim());
			}else{
				request.setAttribute("message", "用户名不能为空");
				return new ActionForward("/login1.jsp");
			}
			
			if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
				users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
			}else{
				request.setAttribute("message", "密码不能为空");
				return new ActionForward("/login1.jsp");
			}
			users.setU_state(1);
			UsersDao uDao = new UsersDao();
			Users u = (Users) uDao.query_(users);
			if(u != null){
				request.getSession().setAttribute("USERS", u);
				//return new ActionForward("/hotel.do?m=index");
				return new ActionForward("/comments.do?m=list");
			}else{
				request.setAttribute("message", "用户名或密码错误");
				return new ActionForward("/login1.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 前台修改密码
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward update_pwd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Users users = new Users();
			if(request.getSession().getAttribute("USERS") != null){
				users.setU_id(((Users)request.getSession().getAttribute("USERS")).getU_id());
			}
			if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
				users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
			}else{
				request.setAttribute("message", "密码不能为空");
				return new ActionForward("/users_pwd.jsp");
			}
			if(request.getParameter("u_rpwd") == null || request.getParameter("u_rpwd").equals("")){
				request.setAttribute("message", "确认密码不能为空");
				return new ActionForward("/users_pwd.jsp");
			}
			if(!request.getParameter("u_rpwd").equals(request.getParameter("u_pwd") )){
				request.setAttribute("message", "两次密码不一致");
				return new ActionForward("/users_pwd.jsp");
			}
			UsersDao uDao = new UsersDao();
			if(uDao.update_pwd(users)){
				request.setAttribute("message", "修改成功!");
			}else{
				request.setAttribute("message", "修改失败");
			}
			return new ActionForward("/users_pwd.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 跳转修改个人信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toupdate_info(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			UsersDao usersDao = new UsersDao();
			//判断用户是否登录 如果没有登录返回登录
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/index.jsp");
			}
			Users users = (Users)usersDao.query(((Users)request.getSession().getAttribute("USERS")).getU_id());		
			request.setAttribute("obj", users);
			return new ActionForward("/users_info.jsp");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 修改个人信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward update_info(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/users_login.jsp");
			}
			UsersDao usersDao = new UsersDao();
			Users users = new Users();
			if(request.getParameter("u_email") != null && !request.getParameter("u_email").equals("")){
				users.setU_email(MyTools.getGBK(request.getParameter("u_email")));
			}else{
				users.setU_email(MyTools.getGBK(request.getParameter("u_email")));
			}
			users.setU_phone(MyTools.getGBK(request.getParameter("u_phone").trim()));
			users.setU_addr(MyTools.getGBK(request.getParameter("u_addr").trim()));
			users.setU_sex(MyTools.getGBK(request.getParameter("u_sex").trim()));
			users.setU_id(((Users)request.getSession().getAttribute("USERS")).getU_id());
			
			if(usersDao.update_info(users)){
				Users user = (Users)usersDao.query(users.getU_id());
				if(user != null){
					request.getSession().setAttribute("USERS", user);
				}
				request.setAttribute("message","修改成功");
				return new ActionForward("/users.do?m=toupdate_info");
			}else{
				request.setAttribute("message", "修改失败，请重新填写");
				return new ActionForward("/users.do?m=toupdate_info");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	/**
	 * 跳转修改注册人脸信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toinsert_face(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			UsersDao usersDao = new UsersDao();
			//判断用户是否登录 如果没有登录返回登录
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/a.jsp");
			}
			//将遍历出来的数据传递给跳转的页面
			Users users = (Users)usersDao.query_face(((Users)request.getSession().getAttribute("USERS")).getU_id());		
			request.setAttribute("obj", users);
			return new ActionForward("/users_face_reg.jsp");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	
	/**
	 * 电脑端注册人脸信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	
	
	
	public ActionForward insert_face(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/users_login.jsp");
			}
			UsersDao usersDao = new UsersDao();
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				users.setU_name(MyTools.getGBK(request.getParameter("u_name")));
			}else{
				users.setU_name(MyTools.getGBK(request.getParameter("u_name")));
			}
			users.setU_base64(MyTools.getGBK(request.getParameter("u_base64").trim()));
			
			users.setU_id(((Users)request.getSession().getAttribute("USERS")).getU_id());
			
			if(usersDao.insert_face(users)){
				Users user = (Users)usersDao.query_face(users.getU_id());
				if(user != null){
					request.getSession().setAttribute("USERS", user);
				}
				request.setAttribute("message","注册成功");
				return new ActionForward("/hotel.do?m=index");

			}else{
				request.setAttribute("message", "注册失败，请重新填写");
				return new ActionForward("/users.do?m=toinsert_face");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	/**
	 * 手机端注册
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward insert_face_phone(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/users_login.jsp");
			}
			UsersDao usersDao = new UsersDao();
			Users users = new Users();
			if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
				users.setU_name(MyTools.getGBK(request.getParameter("u_name")));
			}else{
				users.setU_name(MyTools.getGBK(request.getParameter("u_name")));
			}
			users.setU_base64(MyTools.getGBK(request.getParameter("u_base64").trim()));
			
			users.setU_id(((Users)request.getSession().getAttribute("USERS")).getU_id());
			
			if(usersDao.insert_face(users)){
				Users user = (Users)usersDao.query_face(users.getU_id());
				if(user != null){
					request.getSession().setAttribute("USERS", user);
				}
				request.setAttribute("message","注册成功");
				return new ActionForward("/hotel.do?m=index");
				
			}else{
				request.setAttribute("message", "注册失败，请重新填写");
				return new ActionForward("/users.do?m=toinsert_face_phone");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	public ActionForward toinsert_face_phone(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			UsersDao usersDao = new UsersDao();
			//判断用户是否登录 如果没有登录返回登录
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/users_login.jsp");
			}
			//将遍历出来的数据传递给跳转的页面
			Users users = (Users)usersDao.query_face(((Users)request.getSession().getAttribute("USERS")).getU_id());		
			request.setAttribute("obj", users);
			return new ActionForward("/face_phone_reg.jsp");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	
	
	
	
	
	
	/**
	 * 跳转注册页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toreg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		saveToken(request);
		return new ActionForward("/users_reg.jsp");
	}
	
	/**
	 * 注册用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward reg(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		try{
			Users users = new Users();
			if(isTokenValid(request,true)){
				if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
					users.setU_name(MyTools.getGBK(request.getParameter("u_name").trim()));
				}else{
					request.setAttribute("message", "用户名不能为空");
					return new ActionForward("/users_reg.jsp");
				}
				if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
					users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
				}else{
					request.setAttribute("message", "密码不能为空");
					return new ActionForward("/users_reg.jsp");
				}
				if(request.getParameter("u_rpwd") == null || request.getParameter("u_rpwd").equals("")){
					request.setAttribute("message", "确认密码不能为空");
					return new ActionForward("/users_reg.jsp");
				}
				if(!request.getParameter("u_rpwd").equals(request.getParameter("u_pwd") )){
					request.setAttribute("message", "两次密码输入不一致");
					return new ActionForward("/users_reg.jsp");
				}

				if(request.getParameter("u_email") != null && !request.getParameter("u_email").equals("")){
					users.setU_email(MyTools.getGBK(request.getParameter("u_email").trim()));
					
				}else{
					users.setU_email("");
				}
				if(request.getParameter("u_phone") != null && !request.getParameter("u_phone").equals("")){
					users.setU_phone(MyTools.getGBK(request.getParameter("u_phone").trim()));
					
				}else{
					users.setU_phone("");
				}
				if(request.getParameter("u_sex") != null && !request.getParameter("u_sex").equals("")){
					users.setU_sex(MyTools.getGBK(request.getParameter("u_sex").trim()));
					
				}else{
					users.setU_sex("");
				}
				if(request.getParameter("u_addr") != null && !request.getParameter("u_addr").equals("")){
					users.setU_addr(MyTools.getGBK(request.getParameter("u_addr").trim()));
					
				}else{
					users.setU_addr("");
				}
				if(request.getParameter("u_base64") != null && !request.getParameter("u_base64").equals("")){
					users.setU_base64(MyTools.getGBK(request.getParameter("u_base64").trim()));
					
				}else{
					users.setU_base64("");
				}

				
				users.setU_state(1);
				UsersDao uDao = new UsersDao();
				uDao.insert(users);
				Users u = uDao.query_(users);
				if(u != null){
					request.getSession().setAttribute("USERS", u);
				}
			}
			
			return new ActionForward("/hotel.do?m=index");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 后台跳转添加管理员页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toadd_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		saveToken(request);
		return new ActionForward("/admin/users_add.jsp");
	}
	
	/**
	 * 添加管理员
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward add_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		try{
			Users users = new Users();
			if(isTokenValid(request,true)){
				if(request.getParameter("u_name") != null && !request.getParameter("u_name").equals("")){
					users.setU_name(MyTools.getGBK(request.getParameter("u_name").trim()));
				}else{
					request.setAttribute("message", "用户名不能为空");
					return new ActionForward("/admin/users_add.jsp");
				}
				if(request.getParameter("u_pwd") != null && !request.getParameter("u_pwd").equals("")){
					users.setU_pwd(MyTools.md5(request.getParameter("u_pwd").trim()));
				}else{
					request.setAttribute("message", "密码不能为空");
					return new ActionForward("/admin/users_add.jsp");
				}
				if(request.getParameter("u_rpwd") == null || request.getParameter("u_rpwd").equals("")){
					request.setAttribute("message", "确认密码不能为空");
					return new ActionForward("/admin/users_add.jsp");
				}
				if(!request.getParameter("u_rpwd").equals(request.getParameter("u_pwd") )){
					request.setAttribute("message", "两次密码不一致");
					return new ActionForward("/admin/users_add.jsp");
				}
				if(request.getParameter("u_email") != null && !request.getParameter("u_email").equals("")){
					users.setU_pwd(MyTools.getGBK(request.getParameter("u_email").trim()));
				}else{
					users.setU_email("");
				}
				users.setU_phone(request.getParameter("u_phone").trim());
				users.setU_addr(request.getParameter("u_addr").trim());
				users.setU_sex(request.getParameter("u_sex").trim());
				UsersDao uDao = new UsersDao();
				uDao.insert(users);
			}
			return new ActionForward("/users.do?m=list_admin");
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	
}
