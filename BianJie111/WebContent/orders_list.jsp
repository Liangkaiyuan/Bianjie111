<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的订单</title>



<c:choose>
	<c:when test="${USERS == null}">
	   <script>
	     alert("请登陆后！！在查看");
	     window.location.href="login.jsp"; 
  
   </script>
		</c:when>
</c:choose>

<style>
*{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
}
body{
    font-family: Helvetica;
    -webkit-font-smoothing: antialiased;
    /* background: rgba( 71, 147, 227, 1); */
}
h2{
    text-align: center;
    font-size: 18px;
    text-transform: uppercase;
    letter-spacing: 1px;
    color: rgb(8, 13, 34);
    padding: 30px 0;
}

/* Table Styles */

.table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 14px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #609ad4;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}

/* Responsive */

@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}
</style>



</head>

<body>
<div class="table-wrapper">
 <table class="fl-table">
 <tr>
<span><th><a href="a.jsp" style="text-decoration: none"><h2>首页</h2></a></th><th> <a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma" style="text-decoration: none"><h2>客房预定</h2></a> </th><th><a href="<%=request.getContextPath() %>/comments.do?m=list" class="ma" style="text-decoration: none"><h2>在线留言</h2></a></th>  <th><a href="<%=request.getContextPath() %>/orders.do?m=list" class="ma" style="text-decoration: none"><h2>我的客房订单</h2></a></th></h2></span>
 </tr> </table></div>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>客房信息 1</th>
            <th>入住时间 2</th>
            <th>身份证3</th>
            <th>性别 4</th>
            <th>联系人 5</th>
            <th>电话 5</th>
            <th>状态 5</th>
            <th>下单时间 5</th>
        </tr>
        </thead>
        <tbody>
        
        
        <c:forEach items="${pageinfo.list}" var="obj" varStatus="con">

        <tr>
        <td> ${obj.r_name } </td>
            <td>${obj.o_stime }<br/>
		            	${obj.o_etime }	</td>
            <td>${obj.o_idcard }</td>
            <td>${obj.o_sex }</td>
            <td>${obj.o_name }</td>
            <td>${obj.o_tel }</td>
            <td><c:if test="${obj.o_state == 0}">
                			审核中                		</c:if>
                		<c:if test="${obj.o_state == 1}">
                			通过,请按时入住                		</c:if>
                		<c:if test="${obj.o_state == 2}">
                			拒绝                		</c:if>	
						<c:if test="${obj.o_state == 3}">
                			您已取消                		</c:if>		
							
            <c:if test="${obj.o_state == 0}">
		            		<a href="<%=request.getContextPath() %>/orders.do?m=state_orders&o_id=${obj.o_id }&o_state=3">取消</a>
		            	
		            	</c:if>	</td>
            <td>${obj.o_time}</td>
        </tr>
       </c:forEach>
        <tbody>
    </table>
</div>









<div style="text-align: center;">
			<jsp:include page="/pageinfo.jsp">
				<jsp:param value="orders.do?m=list" name="path" />
			</jsp:include>
		</div>
 
</body>
</html>
