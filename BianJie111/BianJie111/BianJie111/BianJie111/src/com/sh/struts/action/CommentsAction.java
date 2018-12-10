package com.sh.struts.action;



import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.sh.dao.CommentsDao;
import com.sh.dao.RoomsDao;
import com.sh.struts.form.RoomsForm;
import com.sh.utils.MyTools;
import com.sh.utils.PageInfo;
import com.sh.utils.UploadUtils;
import com.sh.vo.Comments;
import com.sh.vo.Rooms;
import com.sh.vo.Users;

public class CommentsAction  extends DispatchAction{
	
	/**
	 * 锟斤拷台锟斤拷锟皆凤拷页
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward list_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
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
			CommentsDao cDao = new CommentsDao();
			pi = cDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/admin/comments_list.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 锟斤拷转锟斤拷锟睫革拷锟斤拷锟斤拷锟斤拷息页锟斤拷
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toupdate_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			if(request.getParameter("c_id") != null && !"".equals(request.getParameter("c_id"))){
				CommentsDao cDao = new CommentsDao();
				Comments comm = cDao.query(Integer.parseInt(request.getParameter("c_id")));
				request.setAttribute("obj", comm);
			}else{
				return new ActionForward("/comments.do?m=list_admin");
			}
			return new ActionForward("/admin/comments_update.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 锟睫革拷锟斤拷锟斤拷锟斤拷息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward update_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Comments comments = new Comments();
			if(request.getSession().getAttribute("ADMIN") == null){
				return new ActionForward("/admin/comments_update.jsp");
			}
			if(request.getParameter("c_id") != null && !"".equals(request.getParameter("c_id"))){
				comments.setC_id(Integer.parseInt(request.getParameter("c_id")));
			}else{
				return new ActionForward("/comments.do?m=list_admin");
			}
			if(request.getParameter("c_replay") != null && !"".equals(request.getParameter("c_replay"))){
				comments.setC_replay(MyTools.getGBK(request.getParameter("c_replay")));
			}else{
				request.setAttribute("message", "留言成功!");
				return new ActionForward("/comments.do?m=toupdate_admin");
			}
			
			CommentsDao cDao = new CommentsDao();
			cDao.update(comments);
			return new ActionForward("/comments.do?m=list_admin");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 删锟斤拷锟斤拷锟斤拷锟斤拷息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward delete_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			if(request.getParameter("c_id") != null && !"".equals(request.getParameter("c_id"))){
				CommentsDao cDao = new CommentsDao();
				cDao.delete(Integer.parseInt(request.getParameter("c_id")));
			}
			return new ActionForward("/comments.do?m=list_admin");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 锟斤拷转锟斤拷锟斤拷锟斤拷锟斤拷锟揭筹拷锟�
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toadd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			saveToken(request);
			return new ActionForward("/comments_add.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 锟斤拷锟斤拷锟斤拷锟�
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Comments comments = new Comments();
			if(request.getSession().getAttribute("USERS") == null){
				return new ActionForward("/index.jsp");
			}else{
				Users users = (Users)request.getSession().getAttribute("USERS");
				comments.setUsers(users);
			}
			if(isTokenValid(request,true)){
				if(request.getParameter("c_info") != null && !"".equals(request.getParameter("c_info"))){
					comments.setC_info(MyTools.getGBK(request.getParameter("c_info")));
				}else{
					request.setAttribute("message", "回复成功!");
					return new ActionForward("/comments.do?m=toadd");
				}
				CommentsDao cDao = new CommentsDao();
				cDao.insert(comments);
			}
			return new ActionForward("/comments.do?m=list");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 前台锟斤拷锟斤拷锟斤拷息锟斤拷页
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward list(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
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
			CommentsDao cDao = new CommentsDao();
			pi = cDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/comments_list.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
}
