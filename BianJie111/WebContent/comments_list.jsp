



<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的订单</title>



<%-- <c:choose>
	<c:when test="${USERS == null}">
		<script>
	     alert("请登陆后！！在查看");
	     window.location.href="login.jsp"; 
  
   </script>
	</c:when>
</c:choose> --%>

<style>
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

body {
	font-family: Helvetica;
	-webkit-font-smoothing: antialiased;
	/* background: rgba( 71, 147, 227, 1); */
}

h2 {
	text-align: center;
	font-size: 18px;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: rgb(8, 13, 34);
	padding: 30px 0;
}

/* Table Styles */
.table-wrapper {
	margin: 10px 70px 70px;
	box-shadow: 0px 35px 50px rgba(0, 0, 0, 0.2);
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
@media ( max-width : 767px) {
	.fl-table {
		display: block;
		width: 100%;
	}
	.table-wrapper:before {
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
	.fl-table thead th:last-child {
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
				<span><th><a href="a.jsp" style="text-decoration: none"><h2>首页</h2></a></th>
				<th><a href="<%=request.getContextPath() %>/rooms.do?m=list"
						class="ma" style="text-decoration: none"><h2>客房预定</h2></a></th>
				<th><a href="<%=request.getContextPath() %>/comments.do?m=list"
						class="ma" style="text-decoration: none"><h2>在线留言</h2></a></th>
					<th><a href="<%=request.getContextPath() %>/orders.do?m=list"
						class="ma" style="text-decoration: none"><h2>我的客房订单</h2></a></th>
				</h2></span>
			</tr>
		</table>
	</div>

	<h2>
		<c:choose>
			<c:when test="${USERS == null}">
						请<a href="<%=request.getContextPath() %>/login1.jsp">登录</a>后发表留言！
					</c:when>
			<c:otherwise>
				<a href="<%=request.getContextPath() %>/comments.do?m=toadd">点击我要留言</a>
			</c:otherwise>
		</c:choose>
	</h2>
	<div class="table-wrapper">
		<table class="fl-table">
			<thead>
				<tr>
					<th>留言用户</th>
					<th>留言内容</th>
					<th>馆主回复</th>
					<th>留言时间</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
					<tr>
						<td>${obj.u_name}</td>
						<td>${obj.c_info}</td>
						<td><c:if
								test="${obj.c_replay != null && obj.c_replay != ''}"> ${obj.c_replay }</c:if></td>
						<td>${fn:substring(obj.c_time,0,16) }</td>
					</tr>
				</c:forEach>
				<tbody>
		</table>
	</div>









	<div style="text-align: center;">
		<jsp:include page="/pageinfo.jsp">
			<jsp:param value="comments.do?m=list" name="path" />
		</jsp:include>
	</div>

</body>
</html>

















