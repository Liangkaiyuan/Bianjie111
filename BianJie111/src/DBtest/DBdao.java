package DBtest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.lives.dao.BaseDao;

public class DBdao {
 
	//查询全部 返回字符串数组
	public ArrayList FindAll() {
		ArrayList list=new ArrayList();//创建一个数组将查询出来的数据存入数组
		Connection con=null;//创建连接数据库
		PreparedStatement ps=null;//ps执行数据库语句
		ResultSet rs=null;//接收查询的数据集
		String sql="select * from 表名";
		try {
			con=DBconnection11.getConnection();//连接数据库
			ps=con.prepareStatement(sql);//执行数据库语句
			rs=ps.executeQuery();//用rs接收数据
			while(rs.next()) {
				Bean b=new Bean();//创建bean对象
				b.setId(rs.getInt(1));//将rs遍历出来的数据通过对象调用传进list集合 rs get出来的类型
				b.setName(rs.getString(2));//name代表的是第2个
				b.setPassword(rs.getString(3));
				list.add(b);//将遍历出来的装进集合
			}
			return list;//将存有数据的集合返回出去
			
		}catch (Exception e) {			
			e.printStackTrace();//默认抛出的异常
		}finally{
			try{
				BaseDao.close(rs, ps, con);//最终需要将这些东西关闭
			}catch(Exception e){
				e.printStackTrace();//默认抛出的异常
			}
		}
		
		
		
		
		
		
		return list;
	}
	
	
	
	
}
