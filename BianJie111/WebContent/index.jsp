<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>�ĳǱ߽�������</title>

  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="">

  <!-- Google Fonts -->
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/font-icons.css" />
  <link rel="stylesheet" href="css/style.css" />

  <!-- Favicons -->
  <link rel="shortcut icon" href="img/favicon.ico">
  <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

  <!-- Lazyload (must be placed in head in order to work) -->
  <script src="js/lazysizes.min.js"></script>


<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <script type="text/javascript" src="/js/jquery.js"></script>
        <script type="text/javascript" src="/js/rl.js"></script>

    <link rel="stylesheet" type="text/css" href="lunbotu/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="lunbotu/css/htmleaf-demo.css">
	<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="lunbotu/css/main.css">
<style type="text/css">
#a{
color: red;
}

</style>

 




</head>

<body class="bg-light style-default style-rounded">
  
  <jsp:include page="head.jsp"></jsp:include>
  

    <!-- Trending Now -->
    <div class="container">
      <div class="trending-now">
        <span class="trending-now__label">
          <i class="ui-flash"></i>
        ������Ϣ</span>
        <div class="newsticker">
          <ul class="newsticker__list">
            <li class="newsticker__item"><a href="news?action=show&newsId=${headNews.newsId }" title="${headNews.title }">${fn:substring(headNews.title,0,10) }</a></li>          
            <li class="newsticker__item"><a href="specialpart.html" class="newsticker__item-url">����ʽ�ưɣ��������Ŀ������������˵���̸</a></li>
            <li class="newsticker__item"><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="newsticker__item-url">���׷��䣺���ڶ�����������5���Ż�</a></li>
          </ul>
        </div>
        <div class="newsticker-buttons">
          <button class="newsticker-button newsticker-button--prev" id="newsticker-button--prev" aria-label="next article"><i class="ui-arrow-left"></i></button>
          <button class="newsticker-button newsticker-button--next" id="newsticker-button--next" aria-label="previous article"><i class="ui-arrow-right"></i></button>
        </div>
      </div>
    </div>
<!-- ��ҳ��ʼ���� -->
    

    <div class="main-container container pt-24" id="main-container">         

      <!-- Content -->
      <div class="row">

        <!-- Posts -->
        <div class="col-lg-8 blog__content">
          
          <!-- Latest News -->
          <section class="section tab-post mb-16">
            <div class="title-wrap title-wrap--line">
              <h3 class="section-title">��������Ʒ����չ��</h3>

              <div class="tabs tab-post__tabs"> 
                <ul class="tabs__list">
                  <li class="tabs__item tabs__item--active">
                    <a href="#tab-all" class="tabs__trigger">��һҳ</a>
                  </li>
                  <li class="tabs__item">
                    <a href="#tab-world" class="tabs__trigger">�ڶ�ҳ</a>
                  </li>
                  <li class="tabs__item"><a href="RoomShow.html" >3D����</a></li>                  
                </ul> <!-- end tabs -->
              </div>
            </div>

            <!-- tab content -->
<div class="tabs__content tabs__content-trigger tab-post__tabs-content">

								<div class="tabs__content-pane tabs__content-pane--active" id="tab-all">
									<div class="row card-row">
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/hhy01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">�ƺ���</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                            <a href="artist.html">_״̬������֮ʮ��</a>
                          </h2>
														<ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist.html">�ƺ�����Ʒ</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>�ĳǴ�ѧ�黭�����о�Ժ��Ժ�� ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist1.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/lj01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">�</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                      <a href="artist1.html">����ӡ��</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist1.html">���Ʒ</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>���Ƕ�˵������������ס�ڻ������ס��ȥ�� ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist2.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/qbg01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--orange">�񱣹�</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														 <h2 class="entry__title">
                      <a href="artist2.html">��ӣ��֮һ</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist2.html">�񱣹���Ʒ</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>�������Կ��������续���̸ ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist3.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/syc01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">��ӡ��</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">
<h2 class="entry__title">
                      <a href="artist3.html">����</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist3.html">��ӡ����Ʒ</a>
                      </li>
                     
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>�ǿ������ķ��������±�Ӱ��ǣ�� ...</p>
													</div>
												</div>
											</article>
										</div>
									</div>
								</div>
								
								
								
								
								
								<!-- end pane 1 -->

								<div class="tabs__content-pane" id="tab-world">
									<div class="row card-row">
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist4.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/wpl01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">������</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                            <a href="artist.html">�˰�</a>
                          </h2>
														<ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist4.html">��������Ʒ</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>������ʫ��ʫ���л� ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist5.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/zcf01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">�ų���</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                      <a href="artist1.html">��ˮ����</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist5.html">�ų�����Ʒ</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>������������Ȼ���� ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist6.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/zq01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--orange">����</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														 <h2 class="entry__title">
                      <a href="artist6.html">����|����</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist6.html">������Ʒ</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>���������ԣ�����������ȥ�� ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist7.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/zxt01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">����ͬ</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">
<h2 class="entry__title">
                      <a href="artist7.html">������</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>����</span>
                        <a href="artist7.html">����ͬ��Ʒ</a>
                      </li>
                     
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>��ӽ���̵Ļ滭������ ...</p>
													</div>
												</div>
											</article>
										</div>
									</div>
								<!-- end pane 2 -->

							</div> <!-- end tab content -->            
          </section> <!-- end latest news -->

        </div> <!-- end posts -->

        <!-- Sidebar -->
        <aside class="col-lg-4 sidebar sidebar--right">

          

          <!-- Widget Newsletter -->
          <section class="service" id="service">
						<aside class="widget widget_mc4wp_form_widget">
							<h3 class="widget-title">�û���Ϣ������</h3>
							<!-- end widget newsletter -->
						<a href="facelogin_users.jsp">�û�������¼</a>	<br /><br />
						<a href="face_phone.jsp">�ֻ����û�������¼</a><br /><br />
						<a href="facelogin_admin.jsp">����Ա������¼</a>	<br /><br />
						
<a href="admin/users_login.jsp">�����¼����Ա��̨</a><br />

	<c:choose>
	  <c:when test="${USERS == null}">	  
	 
	 <p id="a"> Ĭ���û�����123&nbsp;&nbsp;&nbsp;
	  Ĭ�����룺123	</p>
	<form id="loginform" method="post" action="<%=request.getContextPath() %>/users.do?m=login" onsubmit="return checklogin();">
      <table width="96%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="24" colspan="2" align="center">��Ա����</td>
        </tr>
        <tr>
          <td width="31%" height="35" align="right">�û�����</td>
          <td width="69%"><input type="text" name="u_name" id="u_name" class="input" /></td>
        </tr>
        <tr>
          <td height="25" align="right">���룺</td>
          <td><input type="password" name="u_pwd" id="u_pwd" class="input" /></td>
        </tr>
        <tr>
        
          <td height="25" align="right">&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit2" value="��½" />&nbsp;<br /><a href="<%=request.getContextPath() %>/users.do?m=toreg">ע��</a>
          </label></td>
          <c:if test="${message != null}">
								<label><span style="color:red">${message }</span></label>
							</c:if>
        </tr>
      </table>
	  </form>
	  
	  </c:when>
					<c:otherwise>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="33%" height="35">&nbsp;</td>
          <td width="67%">�û�����</td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td>��ӭ�û���${USERS.u_name }��½</td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/orders.do?m=list"><span>�ҵĶ���</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users.do?m=toupdate_info"><span>�޸ĸ�����Ϣ</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users.do?m=toinsert_face"><span>���˻�����ע��</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users_pwd.jsp"><span>�޸�����</span></a>&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/exit.jsp"><span>�˳�</span></a></td>
        </tr>
      </table>
	  </c:otherwise>
				</c:choose>
							
							<br/>
							<h4 class="widget-title">�ĳ�ʵʱ����</h4>
							<div class="socials socials--wide socials--large">
								<font color="#593E34"><strong>�����ǣ�</strong>
									<script language=JavaScript>
										today = new Date();

										function initArray() {
											this.length = initArray.arguments.length
											for (var i = 0; i < this.length; i++)
												this[i + 1] = initArray.arguments[i]
										}
										var d = new initArray(
											"������",
											"����һ",
											"���ڶ�",
											"������",
											"������",
											"������",
											"������");
										document.write(
											"2018��&nbsp;",
											today.getMonth() + 1, "��&nbsp;",
											today.getDate(), "��&nbsp;",
											d[today.getDay() + 1],"&nbsp;&nbsp;",
											today.getHours(), "ʱ",//��ȡ��ǰСʱ��(0-23)
                      today.getMinutes(), "��&nbsp;",//��ȡ��ǰ������(0-59)                     
											
											"</font>");
									</script>
								</font>
								<iframe width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&py=liaocheng&num=3&site=14"></iframe>
							</div>	
						</aside>
						</section> <!-- end widget newsletter -->  
						<!-- Widget Popular Posts -->
						
						
          <aside class="widget widget-popular-posts">
            <h3 class="widget-title">�˹�����ר��</h3>
           <br/>
           
           <h3 class="widget-title">���ܻ�����</h3>
            
   <br/><br/>
   
          </aside> <!-- end widget popular posts -->     
        </aside> <!-- end sidebar -->
  
      </div> <!-- end content -->

    
    <!-- Featured Posts Grid -->
			<section class="featured-posts-grid">
				<div class="container">
					<div class="row row-8">

						<div class="col-lg-6">

							<!-- Small post -->
							<div class="featured-posts-grid__item featured-posts-grid__item--sm">
								<article class="entry card post-list featured-posts-grid__entry">
									<div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(images/tata.jpg)">
										<a href="rooms.do?m=info&r_id=15" class="thumb-url"></a>
										<img src="images/tata.jpg" alt="" class="entry__img d-none">
										<a href="rooms.do?m=info&r_id=15" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">�ذ�</a>
									</div>

									<div class="entry__body post-list__body card__body">
										<h2 class="entry__title">
                    <a href="rooms.do?m=info&r_id=15"><font size=5>���׷���</font></a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>�߽�������</span>
											</li>
											<li class="entry__meta-date">
												2018.06.23
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end post -->

							<!-- Small post -->
							<div class="featured-posts-grid__item featured-posts-grid__item--sm">
								<article class="entry card post-list featured-posts-grid__entry">
									<div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(images/qingxin.jpg)">
										<a href="rooms.do?m=info&r_id=14" class="thumb-url"></a>
										<img src="images/qingxin.jpg" alt="" class="entry__img d-none">
										<a href="rooms.do?m=info&r_id=14" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">��������</a>
									</div>

									<div class="entry__body post-list__body card__body">
										<h2 class="entry__title">
                    <a href="rooms.do?m=info&r_id=14"><font size=5>�����׼�</font></a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>�߽�������</span>
											</li>
											<li class="entry__meta-date">
												2018.05.16
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end post -->

							<!-- Small post -->
							<div class="featured-posts-grid__item featured-posts-grid__item--sm">
								<article class="entry card post-list featured-posts-grid__entry">
									<div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(images/fugu.jpg)">
										<a href="rooms.do?m=info&r_id=13" class="thumb-url"></a>
										<img src="images/fugu.jpg" alt="" class="entry__img d-none">
										<a href="rooms.do?m=info&r_id=13" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">��ʽ</a>
									</div>

									<div class="entry__body post-list__body card__body">
										<h2 class="entry__title">
                    <a href="rooms.do?m=info&r_id=13"><font size=5>�����׼�</font></a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>�߽�������</span>
											</li>
											<li class="entry__meta-date">
												2018.05.07
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end post -->

						</div>
						<!-- end col -->

          <div class="col-lg-6">

            <!-- Large post -->
            <div class="featured-posts-grid__item featured-posts-grid__item--lg">
              <article class="entry card featured-posts-grid__entry">
                <div class="entry__img-holder card__img-holder">
                  <div>&nbsp;</div>
                    <!--
                    	���ߣ�offline
                    	ʱ�䣺2018-08-23
                    	�������ֲ�ͼ
                    -->
     <div class="htmleaf-container">	
		<div class="container">
		<div class="trent-slider">
			<div class="t-slide current-t-slide">
				<img src="lunbotu/img/1.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/2.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/3.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/4.jpg" alt="" />
			</div>
			<div class="t-slider-controls">
				<div class="arrow right-arrow">
					<div class="arrow-container">
						<div class="arrow-icon"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
					</div>
				</div>
				<div class="arrow left-arrow">
					<div class="arrow-container">
						<div class="arrow-icon"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
					</div>
				</div>
				<div class="t-load-bar">
					<div class="inner-load-bar"></div>
				</div>
				<div class="t-dots-container">
					<div class="t-slide-dots-wrap">
						<div class="t-slide-dots">

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>		
	</div>
          
		<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="lunbotu/js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="lunbotu/js/main.js"></script>
        <!--
        	���ߣ�offline
        	ʱ�䣺2018-08-23
        	�����������ֲ�
        -->            
                    
                    
                 
                  <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">����</a>
                </div>

                <div class="entry__body card__body">   
                  <h2 class="entry__title">
                    <a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma">�߽����ޣ�������ס�������ݵĸо���(Ԥ������)</a>
                  </h2>
                  <ul class="entry__meta">
                    <li class="entry__meta-author">
                      <span>����</span>
                      <a href="#">�߽�������</a>
                    </li>
                    <li class="entry__meta-date">
                      8 21, 2018
                    </li>              
                  </ul>
                </div>
              </article>
            </div> <!-- end large post -->
          </div>          

        </div>
      </div>
    </section> <!-- end featured posts grid -->
    
    
    
    




      <!-- Posts from categories -->
      <section class="section mb-0">
        <div class="row">

          <!-- Technology -->
          <div class="col-md-6">
            <div class="title-wrap title-wrap--line">
              <h3 class="section-title">�ȵ������Ƽ�</h3>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <article class="entry thumb thumb--size-2">
                  <div class="entry__img-holder thumb__img-holder" style="background-image: url('img/xinwen/about14.jpg');">
                    <div class="bottom-gradient"></div>
                    <div class="thumb-text-holder thumb-text-holder--1">   
                      <h2 class="thumb-entry-title">
                        <a href="single-post5.html">��˿��֮·������дʵ��д�⡱</a>
                      </h2>
                      <ul class="entry__meta">
                        <li class="entry__meta-author">
                          <span>by</span>
                          <a href="#">�߽�������</a>
                        </li>
                        <li class="entry__meta-date">
                          7 21, 2018
                        </li>
                      </ul>
                    </div>
                    <a href="single-post5.html" class="thumb-url"></a>
                  </div>
                </article>
              </div>
              <div class="col-lg-6">
                <ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
                  
                    <article class="post-list-small__entry">
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                        <c:forEach var="hotSpotNews" items="${hotSpotNewsList }">
						<li class="post-list-small__item"><a href="news?action=show&newsId=${hotSpotNews.newsId }" title="${hotSpotNews.title }">${fn:substring(hotSpotNews.title,0,15) }</a></li>
					
					</c:forEach>
                      </h3>
                      </div>                  
                    </article>
               
                  
                </ul>
              </div>
            </div>            
          </div> <!-- end technology -->

          <!-- Travel -->
          <div class="col-md-6">
          <tr><c:forEach var="allIndexNews" items="${allIndexNewsList }" varStatus="allStatus">
	<c:if test="${allStatus.index%3==0 }">
		<div class="row-fluid">
	</c:if>
	<c:forEach var="indexNews" items="${allIndexNews }" varStatus="oneStatus">
		<c:if test="${oneStatus.first }">
            <div class="title-wrap title-wrap--line">
              <h3 class="section-title">${newsTypeList.get(allStatus.index).typeName } <span class="more"><a href="news?action=list&typeId=${newsTypeList.get(allStatus.index).newsTypeId }">����...</a></span></h3>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <article class="entry thumb thumb--size-2">
                  <div class="entry__img-holder thumb__img-holder" style="background-image: url('img/xinwen/about04.jpg');">
                    <div class="bottom-gradient"></div>
                    <div class="thumb-text-holder thumb-text-holder--1">   
                      <h2 class="thumb-entry-title">
                        <a href="huodong1.html">�߽���������������</a>
                      </h2>
                      <ul class="entry__meta">
                        <li class="entry__meta-author">
                          <span>by</span>
                          <a href="#">�߽�������</a>
                        </li>
                        <li class="entry__meta-date">
                          7 21, 2018
                        </li>
                      </ul>
                    </div>
                    <a href="huodong1.html" class="thumb-url"></a>
                  </div>
                </article>
              </div>
              <div class="col-lg-6">
                <ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
                  <li class="post-list-small__item">
                    <article class="post-list-small__entry">
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                        
                        
                        
			<div class="span4">
			<div class="data_list news_list" >
				<div class="dataHeader"></div>
				<div class="datas">
					<ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
		</c:if>
		<li class="post-list-small__item"><fmt:formatDate value="${indexNews.publishDate }" type="date" pattern="MM-dd"/>&nbsp;<a href="news?action=show&newsId=${indexNews.newsId }" title="${indexNews.title }">${fn:substring(indexNews.title,0,18) }</a></li>
		<c:if test="${oneStatus.last }">
					</ul>
						</div>
					</div>
				</div>
		</c:if>
	</c:forEach>
	<c:if test="${allStatus.index%3==0 || allStatus.last }">
		</div>
	</c:if>
</c:forEach></tr>
                 </h3>
                      </div>                  
                    </article>
                  </li>                 
                </ul>
              </div>
            </div>            
          </div> <!-- end travel -->

        </div>                
      </section> <!-- end posts from categories -->






      
      <!-- Content Secondary -->
      <div class="row">
            <div class="title-wrap title-wrap--line">              
            </div>     
      </div> <!-- content secondary -->      
    </div> <!-- end main container -->
    <!-- Footer -->
    <footer class="footer footer--dark">
      <div class="container">
        <div class="footer__widgets">
          <div class="row">
            <div class="col-lg-3 col-md-6">
              <aside class="widget widget-logo">
                    
                    <article class="post-list-small__entry clearfix">
                         <h4 style="color: white;" class="widget-title">����ʱ�䣺</h4> 
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                          <a href="">����ʱ�䣺8:00-17:00&nbsp;&nbsp;��ĩ�չݣ������ڼ��ճ��⣩</a>
                        </h3>
                        <ul class="entry__meta">
                          
                        </ul>
                      </div>                  
                    </article>
                  </li>
              </aside>
            </div>

            <div class="col-lg-2 col-md-6">
              <aside class="widget widget_nav_menu">
                <h4 class="widget-title">������</h4>
                <ul>
                  <li><a href="about_us.html">������ѯ</a></li>
                  <li><a href="joinus.html">��������</a></li>
                  <li><a href="canguanzhinan.html">�ι�ָ��</a></li>                  
                </ul>
              </aside>
            </div>  

            <div class="col-lg-4 col-md-6">
              <aside class="widget widget-popular-posts">
                <h4 class="widget-title"></h4>
                <ul class="post-list-small">
                  <li class="post-list-small__item">
                    <article class="post-list-small__entry clearfix">
                           <h4 style="color: white;" class="widget-title">�������ǣ�</h4> 
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                          <a href="canguanzhinan.html">��ַ���ĳ��ж������ϴ��<br/><br/>�绰��0635����8418899 <br/><br/>  ���䣺1093595726@qq.com</a>
                        </h3>
                        <ul class="entry__meta">                         
                          <li class="entry__meta-date">                        
                          </li>
                        </ul>
                      </div>                  
                    </article>
                  </li>    
                </ul>
              </aside>              
            </div>

            <div class="col-lg-3 col-md-6">
              <aside class="widget widget_mc4wp_form_widget">
                <h4 class="widget-title">������ı������</h4>
                <p class="newsletter__text">
                  <i class="ui-email newsletter__icon"></i>
                  ��������������߽�������ǡ�
                </p>
                <form class="mc4wp-form" method="post">
                  <div class="mc4wp-form-fields">
                    <div class="form-group">
                      <input type="email" name="EMAIL" placeholder="��������" required="">
                    </div>
                    <div class="form-group">
                      <input type="submit" class="btn btn-lg btn-color" value="����">
                    </div>
                  </div>
                </form>                
              </aside>
            </div>

          </div>
        </div>    
      </div> <!-- end container -->
    </footer> <!-- end footer -->

    <div id="back-to-top">
      <a href="#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
    </div>

  </main> <!-- end main-wrapper -->

  
  <!-- jQuery Scripts -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/easing.min.js"></script>
  <script src="js/owl-carousel.min.js"></script>
  <script src="js/flickity.pkgd.min.js"></script>
  <script src="js/twitterFetcher_min.js"></script>
  <script src="js/jquery.newsTicker.min.js"></script>  
  <script src="js/modernizr.min.js"></script>
  <script src="js/scripts.js"></script>

</body>
</html>