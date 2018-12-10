package com.sh.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.transform.Transformers;

import com.sh.utils.HibernateUtils;
import com.sh.utils.PageInfo;
import com.sh.vo.Comments;
import com.sh.vo.Hotel;
import com.sh.vo.Orders;
import com.sh.vo.Rooms;
public class HotelDao {
	
	Session session = null;
	
	public boolean insert(Hotel hotel) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			session.save(hotel);
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}

	
	public Hotel query(int h_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql=" from Hotel  where h_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, h_id);
			List<Hotel> list = q.list();  
			session.getTransaction().commit();
			return list.get(0);
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	public boolean update(Hotel hotel) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Hotel set h_name = ?,h_info = ?,h_tel = ?,h_email = ?,h_address = ?,h_img = ? where h_id = ?";
			Query q = session.createQuery(hql);
			q.setString(0, hotel.getH_name());
			q.setString(1, hotel.getH_info());
			q.setString(2, hotel.getH_tel());
			q.setString(3, hotel.getH_email());
			q.setString(4, hotel.getH_address());
			q.setString(5, hotel.getH_img());
			q.setInteger(6, hotel.getH_id());
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
}
