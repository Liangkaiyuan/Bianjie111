<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8" />
<title>百度AI刷脸登录界面</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
$(document).ready(function(){
	  
	 $("#u_name").blur(function(){
		 var user = {username:$("#u_name").val()};
		 	login();
			
		  $.ajax(
		   {url:"Face_Users",
		   data:user,
		   async:true,
		   type:"POST",
		   dataType:"html",
		   success:function(result){		  
		 $("#msg").html(result); }
			   
	        });  
         }); 
})
</script>

<style type="text/css">
h3 {
	text-align: center;
	color: green; height; 60 px;
	line-height: 60px
}
h4 {
	text-align: center;
	color: red; height; 60 px;
	line-height: 60px
}
a:link {text-decoration: none;}

.media {
	width: 534px;
	height: 400px;
	background: ;
	margin: 40px auto 0;
	position: relative;
	overflow: hidden;
	border-radius:30px;
}

#canvas {
	display: none;
	position: absolute;
	width: 100%;
	height: 100%;
}

.btn {
	width: 200px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	margin: 20px auto 0;
	background: blue;
	color: #fff;
	cursor: pointer;
	border-radius: 40px;
}

#scan {
	position: absolute;
	width: 100%;
	height: 100%;
	background: url(images/scan.png);
	background-size: cover;
}

#form {
	text-align: center;
	color: green; 
	height: 60 px;
	line-height: 60px;
}

#u_base64 {
	display: none;
	
}
</style>


</head>

<body>


<h3>用户人脸登录</h3>
<div id="form">
<c:choose>
	  <c:when test="${USERS == null}">
<form action="<%=request.getContextPath() %>/users.do?m=face_login" method="post" >
请输入用户名：<input name="u_name" id="u_name" type="text" size="20" maxlength="11" autocomplete="off"/><span id="msg"></span>
<br/>
<c:if test="${message != null}">
<label><span style="color:red">${message }</span></label>
							</c:if>
<input type="text" name="u_base64" id="u_base64" size="20" autocomplete="off"/> <br/>





	<div class="media">
		<video src="" width="534px" height="400px" id="video" autoplay></video>
		<canvas id="canvas" width="534px" height="400px" id="video">
		</canvas>
		<div id="scan"></div>
	</div>

	<input type="submit" value="人脸登录" class="btn">
	</div>
</form>
</c:when>
<c:otherwise>
	
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	 <div  align="center"><a href="face_reg.jsp" id="index">尚未刷脸注册？请返回注册</a></div>
	 	<div>&nbsp;</div>
	<div>&nbsp;</div>
  <div  align="center"><a href="index.jsp" id="index">返回首页</a></div>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">

		//获取video标签
		var video = document.getElementById("video");
		var canvas = document.getElementById("canvas");
		var context = canvas.getContext("2d");
		//浏览器自带的用户媒体对象 火狐 谷歌 ie
		var getUserMedia = (navigator.getUserMedia || navigator.webGetUserMedia
				|| navigator.mozGetUserMedia || navigator.msGetUserMeida);
		//console.log(getUserMedia);
		//调用摄像头
		getUserMedia.call(navigator, {
			video : true,
			audio : false
		}, function(localMediaStream) {
			//将摄像头的媒体流数据传递给video标签对象
			video.src = window.URL.createObjectURL(localMediaStream);
		}, function(e) {
			//如果未获取摄像头控制台显示错误信息
			console.log("获取摄像头失败", e);
		});

		function login() {
			scan();
			context.drawImage(video, 0, 0, 534, 400);
			//将照片转成base64编码
			var imgSrc = document.getElementById('canvas').toDataURL(
					'image/png');
			//将base64编码进行切割
			var base64 = imgSrc.split("base64,")[1];
			
			var test = document.getElementById("u_base64").value=base64;
			//alert(base64);
			//alert(test);			
			
		}
		document.getElementsByClassName("btn")[0].onclick = function() {
			checkreg();
		}
		//扫描函数
		function scan() {
			var box = $(".media");
			$("#scan").css({
				"bottom" : box.height()
			}).animate({
				bottom : 0
			}, 2000, function() {
				$(this).css({
					"bottom" : box.height()
				})
			});

		}
	</script>
	
	
	




	
	
	
	
	
	
	
		
	<% 
String user="FACE";			
 session.setAttribute("user", user);
  %>

</body>
</html>
