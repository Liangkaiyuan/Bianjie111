<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>客房预定</title>
<link href="bianjieyuding/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<script src="bianjieyuding/js/jquery.min.js"></script>

<link href="bianjieyuding/css/style.css" rel="stylesheet" type="text/css" media="all" />	

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-icons.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/lazysizes.min.js"></script>
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">





</head>
<body>
   <jsp:include page="head.jsp"></jsp:include>

	<div>
	&nbsp;
		</div>
	
		<div class="product">
			<div class="container">
				
				<div class="product-price1">
				<div class="top-sing">
				<div class="col-md-7 single-top">	
						<div class="flexslider">
			  <ul class="slides">
			    <li data-thumb="<%=request.getContextPath() %>/${obj.r_img}" alt="${obj.r_name }">
			        <div class="thumb-image"> <img src="<%=request.getContextPath() %>/${obj.r_img}" alt="${obj.r_name }" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb="bianjieyuding/images/si1.jpg">
			         <div class="thumb-image"> <img src="bianjieyuding/images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			    <li data-thumb="bianjieyuding/images/si2.jpg">
			       <div class="thumb-image"> <img src="bianjieyuding/images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
			    </li> 
				 <li data-thumb="bianjieyuding/images/si3.jpg">
			       <div class="thumb-image"> <img src="bianjieyuding/images/si3.jpg" data-imagezoom="true" class="img-responsive"> </div>
			    </li>
			  </ul>
		</div>

	<div class="clearfix"> </div>
<!-- slide -->


						<!-- FlexSlider -->
  <script defer src="bianjieyuding/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="bianjieyuding/css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>


	
	
	
	
	
					</div>	
					<div class="col-md-5 single-top-in simpleCart_shelfItem">
						<div class="single-para ">
						<h4><strong><a
											href="<%=request.getContextPath() %>/rooms.do?m=info&r_id=${obj.r_id }">${obj.r_name }</a></strong></h4>
							<div class="star-on">
								
								<div class="review">
									<a href="#">床型：${obj.r_bed } </a>
									
								</div>
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">${obj.r_price }/晚</h5>
							<p>
                ${obj.r_info }
		  </p>
					
           
                
                  <tr>
                    <td height="37">早餐：${obj.r_zc }</td>
                  </tr>
                  <tr>
                    <td height="31">wifi：${obj.r_web}</td>
                  </tr>
                
							
								  <br/><a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }" class="add-cart item_add">点击预定</a>
							
						</div>
					</div>
				<div class="clearfix"> </div>
				</div>
			<!---->

		<div class=" bottom-product">
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="http://localhost:8080/BianJie/rooms.do?m=info&r_id=4"><img class="img-responsive" src="bianjieyuding/images/pi1.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">点击预定</span>
							</div>
						</a>	
						</div>
						<p class="tun"><span>清新双人套间</span><br>可住2-3人</p>
						<div class="ca-rt">
							<a href="#" class="item_add"><p class="number item_price"><i> </i>$398.00</p></a>						
						</div>						
					</div>
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="http://localhost:8080/BianJie/rooms.do?m=info&r_id=13"><img class="img-responsive" src="bianjieyuding/images/pi2.jpg" alt="">
							<div class="pro-grid">
										<span class="buy-in">点击预定</span>
							</div>
						</a>	
						</div>
						<p class="tun"><span>复古套间</span><br>可住1-2人</p>
						<div class="ca-rt">
							<a href="#" class="item_add"><p class="number item_price"><i> </i>$298.00</p></a>						
						</div>					</div>
					
					<div class="clearfix"> </div>
				</div>
</div>

		<div class="clearfix"> </div>
		</div>
		</div>
		
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