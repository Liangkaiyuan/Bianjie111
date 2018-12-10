package com.sh.struts.action;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.sh.utils.PoiUtils;
import com.sh.dao.OrdersDao;
import com.sh.dao.RoomsDao;
import com.sh.struts.form.RoomsForm;
import com.sh.utils.MyTools;
import com.sh.utils.PageInfo;
import com.sh.utils.UploadUtils;
import com.sh.vo.Orders;
import com.sh.vo.Rooms;
import com.sh.vo.Users;

public class OrdersAction extends DispatchAction{
	
	/**
	 * 后台订单分页
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
			OrdersDao rDao = new OrdersDao();
			pi = rDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/admin/orders_list.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 跳转添加页面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toadd(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			if(request.getSession().getAttribute("USERS") != null){
				if(request.getParameter("r_id") != null && !"".equals(request.getParameter("r_id"))){
					request.setAttribute("r_id", request.getParameter("r_id"));
					saveToken(request);
					return new ActionForward("/orders_add.jsp");
				}else{
					return new ActionForward("/rooms.do?m=list");
				}
			}else{
				return new ActionForward("/users_login.jsp"); }
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 增加订单
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward add(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			Orders orders = new Orders();
			if(request.getSession().getAttribute("USERS") != null){
				Users users = (Users)request.getSession().getAttribute("USERS");
				orders.setUsers(users);
			}else{
				return new ActionForward("/a.jsp");			}
			if(isTokenValid(request,true)){
				if(request.getParameter("o_rid") != null && !"".equals(request.getParameter("o_rid"))){
					Rooms rooms = new Rooms();
					rooms.setR_id(Integer.parseInt(request.getParameter("o_rid")));
					orders.setRooms(rooms);
				}else{
					return new ActionForward("/rooms.do?m=list");
				}
				if(request.getParameter("o_stime") != null && !"".equals(request.getParameter("o_stime"))){
					orders.setO_stime(request.getParameter("o_stime"));
				}else{
					request.setAttribute("message", "开始时间不能为空！");
					return new ActionForward("/rooms.do?m=list&o_rid="+orders.getO_rid());
				}
				if(request.getParameter("o_etime") != null && !"".equals(request.getParameter("o_etime"))){
					orders.setO_etime(request.getParameter("o_etime"));
				}else{
					request.setAttribute("message", "退房时间不能为空!");
					return new ActionForward("/rooms.do?m=list&o_rid="+orders.getO_rid());
				}
				if(request.getParameter("o_idcard") != null && !"".equals(request.getParameter("o_idcard"))){
					orders.setO_idcard(request.getParameter("o_idcard"));
				}else{
					request.setAttribute("message", "身份证号码不能为空!");
					return new ActionForward("/rooms.do?m=list&o_rid="+orders.getO_rid());
				}
				if(request.getParameter("o_sex") != null && !"".equals(request.getParameter("o_sex"))){
					orders.setO_sex(MyTools.getGBK(request.getParameter("o_sex")));
				}else{
					request.setAttribute("message", "性别不能为空!");
					return new ActionForward("/rooms.do?m=list&o_rid="+orders.getO_rid());
				}
				
				if(request.getParameter("o_name") != null && !"".equals(request.getParameter("o_name"))){
					orders.setO_name(MyTools.getGBK(request.getParameter("o_name")));
				}else{
					request.setAttribute("message", "联系人姓名不能为空!");
					return new ActionForward("/rooms.do?m=list&o_rid="+orders.getO_rid());
				}
				
				if(request.getParameter("o_tel") != null && !"".equals(request.getParameter("o_tel"))){
					orders.setO_tel(MyTools.getGBK(request.getParameter("o_tel")));
				}else{
					request.setAttribute("message", "电话不能为空!");
					return new ActionForward("/rooms.do?m=list&o_rid="+orders.getO_rid());
				}
				
				
				OrdersDao rDao = new OrdersDao();
				rDao.insert(orders);
				return new ActionForward("/orders.do?m=list");
			}else{
				return new ActionForward("/orders.do?m=list");
			}	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 删除订单
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward delete_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int o_id = 0;
			if(request.getParameter("o_id") != null && !"".equals(request.getParameter("o_id"))){
				o_id = Integer.parseInt(request.getParameter("o_id"));
				OrdersDao oDao = new OrdersDao();
				oDao.delete(o_id);
			}
			return new ActionForward("/orders.do?m=list_admin");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 前台订单分页
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
			OrdersDao oDao = new OrdersDao();
			if(request.getSession().getAttribute("USERS") != null){
				pi.getMap().put("o_uid", ((Users)request.getSession().getAttribute("USERS")).getU_id());
			}
			pi = oDao.queryPage(pi);
			request.setAttribute("pageinfo", pi);
			return new ActionForward("/orders_list.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 订单详情
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward info(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int o_id = 0;
			if(request.getParameter("o_id") != null && !"".equals(request.getParameter("o_id"))){
				o_id = Integer.parseInt(request.getParameter("o_id"));
				OrdersDao oDao = new OrdersDao();
				Orders orders = oDao.query(o_id);
				request.setAttribute("obj", orders);
				return new ActionForward("/admin/orders_info.jsp");
			}
			return new ActionForward("/orders.do?m=list");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 后台修改订单状态
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward state_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int o_id = 0;
			if(request.getParameter("o_id") != null && !"".equals(request.getParameter("o_id"))){
				o_id = Integer.parseInt(request.getParameter("o_id"));
				OrdersDao oDao = new OrdersDao();
				Orders orders = new Orders();
				orders.setO_id(o_id);
				orders.setO_state(Integer.parseInt(request.getParameter("o_state")));
				oDao.update(orders);
			}
			return new ActionForward("/orders.do?m=list_admin");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public ActionForward state_orders(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			int o_id = 0;
			if(request.getParameter("o_id") != null && !"".equals(request.getParameter("o_id"))){
				o_id = Integer.parseInt(request.getParameter("o_id"));
				OrdersDao oDao = new OrdersDao();
				Orders orders = new Orders();
				orders.setO_id(o_id);
				orders.setO_state(Integer.parseInt(request.getParameter("o_state")));
				oDao.update(orders);
			}
			return new ActionForward("/orders.do?m=list");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	/**
	 * 导出订单
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward listexecel_admin(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			OrdersDao rDao = new OrdersDao();
			Map map = new HashMap();
			List<Map> glst = rDao.getList_(map);
			if(glst!= null && glst.size() > 0){
				OutputStream os = response.getOutputStream();// 取得输出流
				response.reset();// 清空输出流
				response.setHeader("Content-disposition", "attachment; filename=orders.xls");// 设定输出文件头,该方法有两个参数，分别表示应答头的名字和值。
				response.setContentType("application/msexcel");// 定义输出类型

				HSSFWorkbook wb = new HSSFWorkbook();
				HSSFSheet sheet=wb.createSheet("sheet");
				HSSFPatriarch patriarch = sheet.createDrawingPatriarch();
			    HSSFRow row = sheet.createRow((short)0);
			 
			    sheet.createFreezePane(0,1);
			    PoiUtils poiutils = new PoiUtils();
			    poiutils.cteateCell(wb,row,(short)0,"用户名");
			    poiutils.cteateCell(wb,row,(short)1,"预定客房");
			    poiutils.cteateCell(wb,row,(short)2,"入住时间");
			    poiutils.cteateCell(wb,row,(short)3,"性别");
			    poiutils.cteateCell(wb,row,(short)4,"身份证号");
			    poiutils.cteateCell(wb,row,(short)5,"电话号码");
			    poiutils.cteateCell(wb,row,(short)6,"下单时间");			   
			    for(int i = 0; i< glst.size();i++){
		        	HSSFRow row2 = sheet.createRow((short)(i+1));
		        	row2.setHeightInPoints(50);
		        	sheet.setDefaultColumnWidth((short) (10));
		        	Orders o=(Orders)glst.get(i);
		        	poiutils.cteateCell_(wb,row2,(short)0,o.getO_name().toString());	
		        	poiutils.cteateCell_(wb,row2,(short)1,o.getRooms().getR_name().toString());
		        	poiutils.cteateCell_(wb,row2,(short)2,o.getO_stime().toString());
		        	poiutils.cteateCell_(wb,row2,(short)3,String.valueOf(o.getO_sex()));
		        	poiutils.cteateCell_(wb,row2,(short)4,String.valueOf(o.getO_idcard()));
		        	poiutils.cteateCell_(wb,row2,(short)5,String.valueOf(o.getO_tel()));
		        	poiutils.cteateCell_(wb,row2,(short)6,String.valueOf(o.getO_time()));
			    }
			    wb.write(os);
		        os.flush();
		        os.close();	
			  }
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
}
