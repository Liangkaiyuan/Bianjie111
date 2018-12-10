package DBtest;

public class Jsp_yemian {

	/**
	 * 1.将需要用到的包导进去
	 * <%@ page import="java.util.*,
	 * com.lives.dao.*,
	 * com.lives.bean.*"
	 *  pageEncoding="UTF-8"%>
	 *  
	 * 2.创建dao查询数据库的对象
	 *<% DBdao db=new DBdao();
	 *   ArrayList list=db.FindAll();使用dao对象掉用dao类中的查询方法，因为返回的是一个集合
	 *   所以使用ArrayList集合接收
	 *
	 *%>
	 *
	 *3.使用for循环将ArrayList集合中的数据遍历出来
	 *
	 *<%for(int i=0;i<list.size();i++){
	 *
				Bean b=(Bean)list.get(i);%>  //因为是bean类型 遍历的时候使用get(i)的方法接收并强转类型
				<!--Html代码-->
				<tr>
					<td><%=b.getId()%></td>   //最后使用默认接收即可
					<td><%=b.getUser_name()%></td>
					<td><%=b.getUser_sex()%></td>
					<td><%=b.getUser_age()%></td>
					<td><%=b.getUser_hobby()%></td>
					<td><%=b.getUser_city()%></td>
					<td><%=b.getMtext()%></td>
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 */
	
	
	
	
	
}
