package com.sh.struts.action;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.sh.dao.RoomsDao;
import com.sh.struts.form.RoomsForm;
import com.sh.utils.MyTools;
import com.sh.utils.PageInfo;
import com.sh.utils.UploadUtils;
import com.sh.vo.Rooms;

public class RoomsAction extends DispatchAction{
	
	/**
	 * 后台客房分页
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
			RoomsDao rDao = new RoomsDao();
			
			StringBuffer fac = new StringBuffer();
			if(request.getParameter("fac") != null && !request.getParameter("fac").trim().equals("")){
				fac.append(request.getParameter("fac").trim());
			}else{
				if(request.getParameter("kid") != null && !request.getParameter("keyname").trim().equals("")){
					fac.append(" and "+request.getParameter("kid").trim()+" like '%"+MyTools.getGBK(request.getParameter("keyname").trim())+"%' ");
				}
				
			}
			fac.append(" order by r_id  desc");
			request.setAttribute("fac", fac.toString());
			pi.getMap().put("fac", fac.toString());
			
			pi = rDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/admin/rooms_list.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 跳转添加客房页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toadd_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			saveToken(request);
			return new ActionForward("/admin/rooms_add.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 添加客房信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward add_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Rooms rooms = new Rooms();
			if(isTokenValid(request,true)){
				if(request.getParameter("r_name") != null && !"".equals(request.getParameter("r_name"))){
					rooms.setR_name(MyTools.getGBK(request.getParameter("r_name")));
				}else{
					request.setAttribute("message", "名称不能为空");
					return new ActionForward("/rooms.do?m=toadd_admin");
				}
				if(request.getParameter("r_price") != null && !"".equals(request.getParameter("r_price"))){
					rooms.setR_price(Double.parseDouble(request.getParameter("r_price")));
				}else{
					request.setAttribute("message", "价格不能为空!");
					return new ActionForward("/rooms.do?m=toadd_admin");
				}
				if(request.getParameter("r_bed") != null && !"".equals(request.getParameter("r_bed"))){
					rooms.setR_bed(MyTools.getGBK(request.getParameter("r_bed")));
				}
				if(request.getParameter("r_zc") != null && !"".equals(request.getParameter("r_zc"))){
					rooms.setR_zc(MyTools.getGBK(request.getParameter("r_zc")));
				}
				if(request.getParameter("r_web") != null && !"".equals(request.getParameter("r_web"))){
					rooms.setR_web(MyTools.getGBK(request.getParameter("r_web")));
				}
				if(request.getParameter("r_info") != null && !"".equals(request.getParameter("r_info"))){
					rooms.setR_info(MyTools.getGBK(request.getParameter("r_info")));
				}
				RoomsForm rform = (RoomsForm)form;
				String dir = request.getRealPath("/upload/")+"/";//路径
				InputStream stream = null;
				String fileName = null;
				String imgsrc = "";
				if(rform.getImgs() != null && !rform.getImgs().toString().equals("")){
					fileName = rform.getImgs().getFileName();
					//文件类型
					String fileType = (rform.getImgs().getFileName()).substring(rform.getImgs().getFileName().lastIndexOf(".") + 1, 
							rform.getImgs().getFileName().length()).toLowerCase();
					if (!fileType.equals("jpg") && !fileType.equals("gif") && !fileType.equals("png")) {
						request.setAttribute("message","文件类型错误，允许的图片文件后缀是:gif、jpg、png！！");
						return new ActionForward("/rooms.do?m=toadd_admin");
					}else {
						int size = rform.getImgs().getFileSize();
						if (size > 1024 * 400*1024) {//锟叫讹拷logo锟角凤拷锟斤拷锟�4M
							request.setAttribute("message","图片大小不能超过4M");
							return new ActionForward("/rooms.do?m=toadd_admin");
						}
					}
					try {
						stream = rform.getImgs().getInputStream();
						UploadUtils utils = new UploadUtils();
						imgsrc = utils.upload(fileName,dir,stream,fileType);//锟较达拷图片
						rooms.setR_img(imgsrc);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
				}else{
					request.setAttribute("message", "图片不能为空!");
					return new ActionForward("/rooms.do?m=toadd_admin");
				}
				RoomsDao rDao = new RoomsDao();
				rDao.insert(rooms);
				return new ActionForward("/rooms.do?m=list_admin");
			}else{
				return new ActionForward("/rooms.do?m=list_admin");
			}	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 锟斤拷转锟睫改客凤拷锟斤拷息页锟斤拷
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toupdate_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int r_id = 0;
			if(request.getParameter("r_id") != null && !"".equals(request.getParameter("r_id"))){
				r_id = Integer.parseInt(request.getParameter("r_id"));
				RoomsDao rDao = new RoomsDao();
				Rooms rooms = rDao.query(r_id);
				request.setAttribute("obj", rooms);
				return new ActionForward("/admin/rooms_update.jsp");
			}else{
				return new ActionForward("/rooms.do?m=list_admin");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 锟睫改客凤拷锟斤拷息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward update_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Rooms rooms = new Rooms();
			RoomsDao rDao = new RoomsDao();
			if(request.getParameter("r_id") == null){
				return new ActionForward("/rooms.do?m=list_admin");
			}else{
				rooms.setR_id(Integer.parseInt(request.getParameter("r_id")));
				 rooms = rDao.query(Integer.parseInt(request.getParameter("r_id")));
			}
			
			if(request.getParameter("r_name") != null && !"".equals(request.getParameter("r_name"))){
				rooms.setR_name(MyTools.getGBK(request.getParameter("r_name")));
			}else{
				request.setAttribute("message", "名称不能为空!");
				return new ActionForward("/rooms.do?m=toupdate_admin&r_id="+rooms.getR_id());
			}
			if(request.getParameter("r_price") != null && !"".equals(request.getParameter("r_price"))){
				rooms.setR_price(Double.parseDouble(request.getParameter("r_price")));
			}else{
				request.setAttribute("message", "价格不能为空!");
				return new ActionForward("/rooms.do?m=toupdate_admin&r_id="+rooms.getR_id());
			}
			if(request.getParameter("r_bed") != null && !"".equals(request.getParameter("r_bed"))){
				rooms.setR_bed(MyTools.getGBK(request.getParameter("r_bed")));
			}
			if(request.getParameter("r_zc") != null && !"".equals(request.getParameter("r_zc"))){
				rooms.setR_zc(MyTools.getGBK(request.getParameter("r_zc")));
			}
			if(request.getParameter("r_web") != null && !"".equals(request.getParameter("r_web"))){
				rooms.setR_web(MyTools.getGBK(request.getParameter("r_web")));
			}
			if(request.getParameter("r_info") != null && !"".equals(request.getParameter("r_info"))){
				rooms.setR_info(MyTools.getGBK(request.getParameter("r_info")));
			}
			RoomsForm rform = (RoomsForm)form;
			String dir = request.getRealPath("/upload/")+"/";//路径
			InputStream stream = null;
			String fileName = null;
			String imgsrc = "";
			if(rform.getImgs() != null && !rform.getImgs().toString().equals("")){
				fileName = rform.getImgs().getFileName();
				//锟侥硷拷锟斤拷锟斤拷
				String fileType = (rform.getImgs().getFileName()).substring(rform.getImgs().getFileName().lastIndexOf(".") + 1, 
						rform.getImgs().getFileName().length()).toLowerCase();
				if (!fileType.equals("jpg") && !fileType.equals("gif") && !fileType.equals("png")) {
					request.setAttribute("message","文件类型错误，允许的图片文件后缀是:gif、jpg、png！！");
					return new ActionForward("/rooms.do?m=toupdate_admin&r_id="+rooms.getR_id());
				}else {
					int size = rform.getImgs().getFileSize();
					if (size > 1024 * 400*1024) {//锟叫讹拷logo锟角凤拷锟斤拷锟�4M
						request.setAttribute("message","图片大小不能超过4M！");
						return new ActionForward("/rooms.do?m=toupdate_admin&r_id="+rooms.getR_id());
					}
				}
				try {
					stream = rform.getImgs().getInputStream();
					UploadUtils utils = new UploadUtils();
					imgsrc = utils.upload(fileName,dir,stream,fileType);//锟较达拷图片
					rooms.setR_img(imgsrc);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
			rDao.update(rooms);
			return new ActionForward("/rooms.do?m=list_admin");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 *删除客房
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward delete_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int r_id = 0;
			if(request.getParameter("r_id") != null && !"".equals(request.getParameter("r_id"))){
				r_id = Integer.parseInt(request.getParameter("r_id"));
				RoomsDao rDao = new RoomsDao();
				rDao.delete(r_id);
			}
			return new ActionForward("/rooms.do?m=list_admin");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 前台分页
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
			pi.setPagecount(2);
			try {
				if (request.getParameter("page") != null
						&& !request.getParameter("page").equals("")) {
					pi.setPage(Integer.parseInt(request.getParameter("page")));
				}
			} catch (Exception e) {
				pi.setPage(1);
			}
			RoomsDao rDao = new RoomsDao();
			StringBuffer fac = new StringBuffer();
			if(request.getParameter("fac") != null && !request.getParameter("fac").trim().equals("")){
				fac.append(request.getParameter("fac").trim());
			}else{
				if(request.getParameter("kid") != null && !request.getParameter("keyname").trim().equals("")){
					fac.append(" and "+request.getParameter("kid").trim()+" like '%"+MyTools.getGBK(request.getParameter("keyname").trim())+"%' ");
				}
				
			}
			fac.append(" order by r_id  desc");
			request.setAttribute("fac", fac.toString());
			pi.getMap().put("fac", fac.toString());
			
			pi = rDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/jiudian.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 客房详情
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward info(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int r_id = 0;
			if(request.getParameter("r_id") != null && !"".equals(request.getParameter("r_id"))){
				r_id = Integer.parseInt(request.getParameter("r_id"));
				RoomsDao rDao = new RoomsDao();
				Rooms rooms = rDao.query(r_id);
				request.setAttribute("obj", rooms);
				return new ActionForward("/rooms_info.jsp");
			}
			return new ActionForward("/rooms.do?m=list");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
}
