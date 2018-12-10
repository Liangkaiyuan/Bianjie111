package com.lives.dao;


import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lives.bean.Order;
import com.lives.bean.UserInfo;
 
public class UserInfoDao {
 
	//查询所有（查）
	public ArrayList findAll(){
		Connection con=null;
		PreparedStatement psta=null;
		ResultSet rs=null;
		ArrayList list=new ArrayList();
		String sql="select * from userinfo";
		try{
			con=BaseDao.getConnection();
			psta=con.prepareStatement(sql);
			rs=psta.executeQuery();
			while(rs.next()){
				UserInfo obj=new UserInfo();
				obj.setId(rs.getInt(1));//将数据库对应字段中获得的数据装进obj这个对象中，再把对象装进list集合中
				obj.setUser_name(rs.getString(2));
				obj.setUser_sex(rs.getString(3));
				obj.setUser_idcard(rs.getString(4));
				obj.setUser_pay(rs.getString(5));
				obj.setUser_room(rs.getString(6));
				obj.setUser_beizhu(rs.getString(7));
				obj.setTime(rs.getString(8));			
				list.add(obj);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				BaseDao.close(rs, psta, con);
			}catch(Exception e){
				e.printStackTrace();
			}
			return list;
			
		}
	}
	
	//查询所有（查）
		public ArrayList findName(String name){			
			Connection con=null;
			PreparedStatement psta=null;
			ResultSet rs=null;			
			ArrayList list=new ArrayList();
			//String str = new String(name.getBytes("iso-8859-1"),"utf-8"); 
			String sql="select o_stime,o_etime,o_idcard,o_sex,o_name,o_tel,o_time from orders where o_name = '"+name+"'";		
			try{
				con=BaseDao.getConnection();
				psta=con.prepareStatement(sql);
				rs=psta.executeQuery();
				while(rs.next()){
					Order obj=new Order();
					obj.setO_stime(rs.getString(1));
					obj.setO_etime(rs.getString(2));
					obj.setO_idcard(rs.getString(3));
					obj.setO_sex(rs.getString(4));
					obj.setO_name(rs.getString(5));
					obj.setO_tel(rs.getString(6));				
					obj.setO_time(rs.getTimestamp(7));								
					list.add(obj);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					BaseDao.close(rs, psta, con);
				}catch(Exception e){
					e.printStackTrace();
				}
				return list;
			}
		}
	

	
	//插入方法（增）
	public boolean save(UserInfo obj){
		Connection con=null;
		PreparedStatement psta=null;
		String sql="insert into userinfo(user_name,user_sex,user_idcard,user_pay,user_room,user_beizhu,time) values(?,?,?,?,?,?,?)";
		boolean flag=false;
		try{
			con=BaseDao.getConnection();
			psta=con.prepareStatement(sql);
			psta.setString(1, obj.getUser_name());
			psta.setString(2, obj.getUser_sex());
			psta.setString(3, obj.getUser_idcard());
			psta.setString(4, obj.getUser_pay());
			psta.setString(5, obj.getUser_room());
			psta.setString(6, obj.getUser_beizhu());
			psta.setString(7,obj.getTime());
			flag=psta.executeUpdate()>0;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				BaseDao.close(null, psta, con);
			}catch(Exception e){
				e.printStackTrace();
			}
			return flag;
		}
	}
	
	//删除方法（删）
	public boolean remove(String user_name){
		Connection con=null;
		PreparedStatement psta=null;
		boolean flag=false;
		String sql="delete from userinfo where user_name=?";
		try{
			con=BaseDao.getConnection();
			psta=con.prepareStatement(sql);
			psta.setString(1, user_name);
			flag=psta.executeUpdate()>0;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				BaseDao.close(null, psta, con);
			}catch(Exception e){
				e.printStackTrace();
			}
			return flag;
		}
	}
	//通过id修改，为更新做准备的（改）
			public UserInfo findById(int id){
				Connection con=null;
				PreparedStatement psta=null;
				ResultSet rs=null;
				UserInfo obj=null;
				String sql="select * from userinfo where id=?";
				try{
					con=BaseDao.getConnection();
					psta=con.prepareStatement(sql);
					psta.setInt(1, id);
					rs=psta.executeQuery();
					if(rs.next()){
						obj=new UserInfo();
						obj.setId(rs.getInt(1));
						obj.setUser_name(rs.getString(2));
						obj.setUser_sex(rs.getString(3));
						obj.setUser_idcard(rs.getString(4));
						obj.setUser_pay(rs.getString(5));
						obj.setUser_room(rs.getString(6));
						obj.setUser_beizhu(rs.getString(7));
						obj.setTime(rs.getString(8));
						
					}
				}catch(Exception e){
					e.printStackTrace();
				}finally{
					try{
						BaseDao.close(rs, psta, con);
					}catch(Exception e){
						e.printStackTrace();
					}
					return obj;
				}
			}
	
	//更新方法（修改数据）（改）
	public boolean update(UserInfo obj){
		Connection con=null;
		PreparedStatement psta=null;
		String sql="update userinfo set user_name=?,user_sex=?,user_idcard=?,user_pay=?,user_room=?,user_beizhu=?,time=? where id=?";
		boolean flag=false;
		try{
			con=BaseDao.getConnection();
			psta=con.prepareStatement(sql);
			psta.setString(1, obj.getUser_name());
			psta.setString(2, obj.getUser_sex());
			psta.setString(3, obj.getUser_idcard());
			psta.setString(4, obj.getUser_pay());
			psta.setString(5, obj.getUser_room());
			psta.setString(6, obj.getUser_beizhu());
			psta.setString(7, obj.getTime());			 
			psta.setInt(8,obj.getId());
			flag=psta.executeUpdate()>0;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				BaseDao.close(null, psta, con);
			}catch(Exception e){
				e.printStackTrace();
			}
			return flag;
		}
	}
	
	
}
