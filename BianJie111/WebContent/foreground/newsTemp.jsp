<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>边界艺术馆新闻</title>
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<link href="${pageContext.request.contextPath}/news_style/news.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/news_bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/news_bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/news_bootstrap/js/jQuery.js"></script>
<script src="${pageContext.request.contextPath}/news_bootstrap/js/bootstrap.js"></script>
</head>
<body>
 <jsp:include page="/head.jsp"></jsp:include>
<div class="container">

<div class="row-fluid">
	<div class="span8">
		<jsp:include page="${mainPage }"/>
	</div>
	<div class="span4">
		<div class="data_list right_news_list">
			<div class="dataHeader">最新新闻</div>
			<div class="datas">
				<ul>
					<c:forEach var="newestNews" items="${newestNewsList }">
						<li><a href="news?action=show&newsId=${newestNews.newsId }" title="${newestNews.title }">${fn:substring(newestNews.title,0,22) }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="data_list right_news_list">
			<div class="dataHeader">热门新闻</div>
			<div class="datas">
				<ul>
					<c:forEach var="hotNews" items="${hotNewsList }">
						<li><a href="news?action=show&newsId=${hotNews.newsId }" title="${hotNews.title }">${fn:substring(hotNews.title,0,22) }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/foreground/common/foot.jsp"/>

  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/easing.min.js"></script>
  <script src="/js/owl-carousel.min.js"></script>
  <script src="/js/flickity.pkgd.min.js"></script>
  <script src="/js/twitterFetcher_min.js"></script>
  <script src="/js/jquery.newsTicker.min.js"></script>  
  <script src="/js/modernizr.min.js"></script>
  <script src="/js/scripts.js"></script>
</div>
</body>
</html>