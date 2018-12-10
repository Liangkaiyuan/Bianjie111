package com.sh.test;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import com.sh.dao.CommentsDao;
import com.sh.dao.OrdersDao;
import com.sh.dao.RoomsDao;
import com.sh.dao.UsersDao;
import com.sh.utils.HibernateUtils;
import com.sh.utils.PageInfo;
import com.sh.vo.Comments;
import com.sh.vo.Orders;
import com.sh.vo.Rooms;
import com.sh.vo.Users;

public class Test {
	
	public static void main(String[] args) {
		
		//OrdersDao oDao = new OrdersDao();
		
//		oDao.delete(3);
		
		//RoomsDao rDao = new RoomsDao();
		//rDao.delete(4);
		
//		PageInfo pi = new PageInfo();
//		pi = oDao.queryPage(pi);
//		
//		for(int i = 0 ;i < pi.getList().size(); i++){
//			System.out.println(pi.getList().get(i));
//		}
//		
//		UsersDao uDao = new UsersDao();
//		PageInfo upi = new PageInfo();
//		upi = uDao.queryPage(upi);
//		
//		for(int i = 0 ;i < upi.getList().size(); i++){
//			System.out.println( ((Users)upi.getList().get(i)));
//		}
//		
//		RoomsDao rDao = new RoomsDao();
//		PageInfo rpi = new PageInfo();
//		rpi = rDao.queryPage(rpi);
//		
//		for(int i = 0 ;i < rpi.getList().size(); i++){
//			System.out.println( ((Rooms)rpi.getList().get(i)));
//		}
		
		CommentsDao cDao = new CommentsDao();
		PageInfo cpi = new PageInfo();
		cpi.getMap().put("c_uid", "2");
		cpi = cDao.queryPage(cpi);
		
		for(int i = 0 ;i < cpi.getList().size(); i++){
			System.out.println( cpi.getList().get(i));
		}
	}
}
