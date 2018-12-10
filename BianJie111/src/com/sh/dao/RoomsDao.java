package com.sh.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;

import com.sh.utils.HibernateUtils;
import com.sh.utils.PageInfo;
import com.sh.vo.Rooms;
import com.sh.vo.Users;

public class RoomsDao {
	
	Session session = null;
	
	public boolean insert(Rooms rooms) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			session.save(rooms);
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public boolean delete(int r_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="delete from Rooms where r_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, r_id);
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
	
	public boolean update(Rooms rooms) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Rooms set r_name = ? , r_price = ?,r_img = ?,r_bed = ?,r_zc = ?,r_web = ?, r_info = ? where r_id = ?";
			Query q = session.createQuery(hql);
			q.setString(0, rooms.getR_name());
			q.setDouble(1, rooms.getR_price());
			q.setString(2, rooms.getR_img());
			q.setString(3, rooms.getR_bed());
			q.setString(4, rooms.getR_zc());
			q.setString(5, rooms.getR_web());
			q.setString(6, rooms.getR_info());
			q.setInteger(7, rooms.getR_id());
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
	
	public Rooms query(int r_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="from Rooms where r_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, r_id);
			List<Rooms> list = q.list();  
			session.getTransaction().commit();
			return list.get(0);
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
			StringBuffer sql = new StringBuffer(" select count(*) from Rooms where 1 = 1 ");
			if(page.getMap().get("fac") != null){
				sql.append(page.getMap().get("fac"));
			}
			Query cq = session.createQuery(sql.toString());
			session.beginTransaction();
			List lst = cq.list();
			session.getTransaction().commit();
			if(lst.size() > 0){
				page.setSum(Integer.parseInt(lst.get(0)+""));
				
				session.beginTransaction();
				String hql = " from Rooms where 1=1 "; //User������      
				if(page.getMap().get("fac") != null){
					hql +=page.getMap().get("fac");
				}
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
	
	public List getList() {
		// TODO Auto-generated method stub
		session = HibernateUtils.getSession();
		try {
			session.beginTransaction();
			String hql = " from Rooms order by r_price desc "; //User������      
	        Query q = session.createQuery(hql);      
	        q.setFirstResult(0); //�ӵ�0����ʼ      
	        q.setMaxResults(12); //ȡ��10�� 
	        session.getTransaction().commit();
			return q.list();
		} catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	

}
