package com.sh.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.transform.Transformers;

import com.sh.utils.HibernateUtils;
import com.sh.utils.PageInfo;
import com.sh.vo.Orders;
import com.sh.vo.Rooms;
public class OrdersDao {
	
	Session session = null;
	
	public boolean insert(Orders orders) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			session.save(orders);
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
			String hql="delete from Orders where o_id = ?";
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
	
	public Orders query(int o_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql=" from Orders  where o_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, o_id);
			List<Orders> list = q.list();  
			session.getTransaction().commit();
			return list.get(0);
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	public boolean update(Orders orders) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Orders set o_state = ? where o_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, orders.getO_state());
			q.setInteger(1, orders.getO_id());
			q.executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
//			session.clear();
//			session.flush();
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	
	
	public PageInfo queryPage(PageInfo page) {
		// TODO Auto-generated method stub
		session = HibernateUtils.getSession();
		try {
			StringBuffer sql = new StringBuffer(" select count(*) from Orders o left  join o.users u left  join o.rooms r  where 1 = 1 ");
			if(page.getMap().get("o_uid") != null){ 
				sql.append(" and o_uid = " + Integer.parseInt(page.getMap().get("o_uid")+""));
			}
			Query cq = session.createQuery(sql.toString());
			session.beginTransaction();
			List lst = cq.list();
			session.getTransaction().commit();
			if(lst.size() > 0){
				page.setSum(Integer.parseInt(lst.get(0).toString()));
				session.beginTransaction();
				StringBuffer hql =  new StringBuffer("select new map(o.o_id as o_id,u.u_name as u_name,r.r_name as r_name");
				hql.append(",o.o_stime as o_stime,o.o_etime as o_etime,o.o_idcard as o_idcard,o.o_sex as o_sex");
				hql.append(" ,o.o_name as o_name,o.o_tel as o_tel,o.o_state as o_state,o.o_time as o_time");
				hql.append(" )from Orders o left  join o.users u  left  join o.rooms r  where 1 = 1  ");    
				if(page.getMap().get("o_uid") != null){
					hql.append(" and o_uid = " + Integer.parseInt(page.getMap().get("o_uid")+""));
				}
		        Query q = session.createQuery(hql.toString());      
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
	
	
	/**
	 * 导出入住登记
	 */
	public List getList_(Map map) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql=" from Orders ";
			hql += " order by o_id desc  ";
			Query q = session.createQuery(hql);
			List list = q.list();  
			session.getTransaction().commit();
			if(list != null && list.size() > 0){
				return list;
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
	
}
