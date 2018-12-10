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
import com.sh.vo.Orders;
import com.sh.vo.Rooms;
public class CommentsDao {
	
	Session session = null;
	
	public boolean insert(Comments comments) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			session.save(comments);
			session.getTransaction().commit();
			return true;
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return false;
	}
	
	public boolean delete(int c_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql="delete from Comments where c_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, c_id);
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
	
	public Comments query(int c_id) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql=" from Comments  where c_id = ?";
			Query q = session.createQuery(hql);
			q.setInteger(0, c_id);
			List<Comments> list = q.list();  
			session.getTransaction().commit();
			return list.get(0);
		}catch (Exception exp) {
			exp.printStackTrace(System.out);
		} finally {
			HibernateUtils.closeSession(session);
		}
		return null;
	}
	
	public boolean update(Comments comments) {
		session = HibernateUtils.getSession();
		try{
			session.beginTransaction();
			String hql = "update Comments set c_replay = ? where c_id = ?";
			Query q = session.createQuery(hql);
			q.setString(0, comments.getC_replay());
			q.setInteger(1, comments.getC_id());
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
	
	
	
	public PageInfo queryPage(PageInfo page) {
		// TODO Auto-generated method stub
		session = HibernateUtils.getSession();
		try {
			StringBuffer sql = new StringBuffer(" select count(*) from Comments c left  join c.users u where 1 = 1 ");
			if(page.getMap().get("c_uid") != null){ 
				sql.append(" and c_uid = " + Integer.parseInt(page.getMap().get("c_uid")+""));
			}
			Query cq = session.createQuery(sql.toString());
			session.beginTransaction();
			List lst = cq.list();
			session.getTransaction().commit();
			if(lst.size() > 0){
				page.setSum(Integer.parseInt(lst.get(0).toString()));
				session.beginTransaction();
				StringBuffer hql =  new StringBuffer("select new map(c.c_id as c_id,u.u_name as u_name");
				hql.append(",c.c_info as c_info,c.c_replay as c_replay ,c.c_time as c_time");
				hql.append(" )from Comments c left  join c.users u    where 1 = 1  ");    
				if(page.getMap().get("c_uid") != null){
					hql.append(" and c_uid = " + Integer.parseInt(page.getMap().get("c_uid")+""));
				}
		        Query q = session.createQuery(hql.toString());      
		        q.setFirstResult(page.getBeginRow()); //从第0条开始      
		        q.setMaxResults(page.getPagecount()); //取出10条 
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
