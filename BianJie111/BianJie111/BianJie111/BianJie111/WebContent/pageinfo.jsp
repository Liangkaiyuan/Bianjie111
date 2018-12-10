<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
总计${pageinfo.sum }条记录,
分为${pageinfo.sumpage}页,
当前${pageinfo.page }页 &nbsp;
<c:choose>
	<c:when test="${pageinfo.page<4 || pageinfo.sumpage<7}">
    	<c:set var="bi" value="1"/>
       	<c:choose>
          	<c:when test="${pageinfo.sumpage<7}">
         		<c:set var="en" value="${pageinfo.sumpage}" />
         	</c:when>
           	<c:otherwise>
           		<c:set var="en" value="7" />
           	</c:otherwise>
       	</c:choose>
     </c:when>
     <c:otherwise>
     	<c:choose>
    		<c:when test="${pageinfo.page+3>pageinfo.sumpage}">
				<c:set var="bi" value="${pageinfo.sumpage-6}" />
				<c:set var="en" value="${pageinfo.sumpage}" />
		 	</c:when>
 			<c:otherwise>
 				<c:set var="bi" value="${pageinfo.page-3}" />
  				<c:set var="en" value="${pageinfo.page+3}" />
 			</c:otherwise>
      	 	</c:choose>
       	</c:otherwise>
     </c:choose>

	    <a href="<%=request.getContextPath() %>/<%=request.getParameter("path") %>&page=1">首页</a>
	     <c:choose>
	     	<c:when test="${pageinfo.page==1}">上一页</c:when>
	    	<c:otherwise>
	    		<a href="<%=request.getContextPath() %>/<%=request.getParameter("path") %>&page=${pageinfo.page-1 }">上一页</a>
	    	</c:otherwise>
	     </c:choose>
	       
	     <c:forEach begin="${bi}" end="${en}" step="1" var="o">
	        <c:choose>
	        	<c:when test="${o==pageinfo.page}">
	         	${o}
	         </c:when>
	         	<c:otherwise>
	         		<a href="<%=request.getContextPath() %>/<%=request.getParameter("path") %>&page=${o}">${o }</a>
	         	</c:otherwise>
	        </c:choose>
	     </c:forEach>
	     <c:choose>
	     	<c:when test="${pageinfo.sumpage==0||pageinfo.sumpage==pageinfo.page}">
	      		下一页
	      	</c:when>
	      	<c:otherwise>
	      		<a href="<%=request.getContextPath() %>/<%=request.getParameter("path") %>&page=${pageinfo.page+1 }">下一页</a>
	      	</c:otherwise>
	     </c:choose>
    	<a href="<%=request.getContextPath() %>/<%=request.getParameter("path") %>&page=${pageinfo.sumpage}">尾页</a>
