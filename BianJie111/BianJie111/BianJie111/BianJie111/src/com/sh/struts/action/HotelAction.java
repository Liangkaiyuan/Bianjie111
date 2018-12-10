package com.sh.struts.action;

import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.sh.dao.HotelDao;
import com.sh.dao.RoomsDao;
import com.sh.struts.form.HotelForm;
import com.sh.struts.form.RoomsForm;
import com.sh.utils.MyTools;
import com.sh.utils.UploadUtils;
import com.sh.vo.Hotel;

public class HotelAction extends DispatchAction{
	
	/**
	 * 后台酒店详情页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward info_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int h_id = 1;
			HotelDao hDao = new HotelDao();
			Hotel hotel = hDao.query(h_id);
			request.setAttribute("obj", hotel);
			return new ActionForward("/admin/hotel_info.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 跳转到修改页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toupdate_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int h_id = 1;
			HotelDao hDao = new HotelDao();
			Hotel hotel = hDao.query(h_id);
			request.setAttribute("obj", hotel);
			return new ActionForward("/admin/hotel_update.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 修改酒店信息
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward update_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int h_id = 1;
			Hotel hotel = new Hotel();
			hotel.setH_id(h_id);
			HotelDao hDao = new HotelDao();
			if(request.getParameter("h_name") != null && !"".equals(request.getParameter("h_name"))){
				hotel.setH_name(MyTools.getGBK(request.getParameter("h_name")));
			}else{
				request.setAttribute("message", "名称不能为空!");
				return new ActionForward("/rooms.do?m=toadd_admin");
			}
			if(request.getParameter("h_info") != null && !"".equals(request.getParameter("h_info"))){
				hotel.setH_info(MyTools.getGBK(request.getParameter("h_info")));
			}else{
				request.setAttribute("message", "简介不能为空!");
				return new ActionForward("/rooms.do?m=toadd_admin");
			}
			if(request.getParameter("h_tel") != null && !"".equals(request.getParameter("h_tel"))){
				hotel.setH_tel(MyTools.getGBK(request.getParameter("h_tel")));
			}else{
				request.setAttribute("message", "电话不能为空!");
				return new ActionForward("/rooms.do?m=toadd_admin");
			}
			if(request.getParameter("h_email") != null && !"".equals(request.getParameter("h_email"))){
				hotel.setH_email(MyTools.getGBK(request.getParameter("h_email")));
			}else{
				hotel.setH_email("");
			}
			
			if(request.getParameter("h_address") != null && !"".equals(request.getParameter("h_address"))){
				hotel.setH_address(MyTools.getGBK(request.getParameter("h_address")));
			}else{
				request.setAttribute("message", "地址不能为空!");
				return new ActionForward("/rooms.do?m=toadd_admin");
			}
			HotelForm hform = (HotelForm)form;
			String dir = request.getRealPath("/upload/")+"/";//路径
			InputStream stream = null;
			String fileName = null;
			String imgsrc = "";
			if(hform.getImg() != null && !hform.getImg().toString().equals("")){
				fileName = hform.getImg().getFileName();
				//文件类型
				String fileType = (hform.getImg().getFileName()).substring(hform.getImg().getFileName().lastIndexOf(".") + 1, 
						hform.getImg().getFileName().length()).toLowerCase();
				if (!fileType.equals("jpg") && !fileType.equals("gif") && !fileType.equals("png")) {
					request.setAttribute("message","文件类型错误，允许的图片文件后缀是:gif、jpg、png！！");
					return new ActionForward("/hotel.do?m=toupdate_admin");
				}else {
					int size = hform.getImg().getFileSize();
					if (size > 1024 * 400*1024) {//判断logo是否大于4M
						request.setAttribute("message","图片大小不能超过4M！");
						return new ActionForward("/hotel.do?m=toupdate_admin");
					}
				}
				try {
					stream = hform.getImg().getInputStream();
					UploadUtils utils = new UploadUtils();
					imgsrc = utils.upload(fileName,dir,stream,fileType);//上传图片
					hotel.setH_img(imgsrc);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}else{
				hotel.setH_img(request.getParameter("h_img"));
			}
			if(hDao.update(hotel)){
				request.setAttribute("message", "修改成功!");
			}else{
				request.setAttribute("message", "修改失败!");
			}
			return new ActionForward("/hotel.do?m=toupdate_admin");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 首页
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward index(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int h_id = 1;
			HotelDao hDao = new HotelDao();
			Hotel hotel = hDao.query(h_id);
			request.setAttribute("obj", hotel);
			
			RoomsDao rDao = new RoomsDao();
			List rlst = rDao.getList();
			request.setAttribute("rlst", rlst);
			
			return new ActionForward("/index.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 查看酒店详情
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward info(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int h_id = 1;
			HotelDao hDao = new HotelDao();
			Hotel hotel = hDao.query(h_id);
			request.setAttribute("obj", hotel);
			
			return new ActionForward("/hotel_info.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
}
