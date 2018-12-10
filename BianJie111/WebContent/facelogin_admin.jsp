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
</style>


</head>

<body>

<h3>欢迎使用管理员人脸登录</h3>
	<div class="media">
		<video src="" width="534px" height="400px" id="video" autoplay></video>
		<canvas id="canvas" width="534px" height="400px" id="video">
		</canvas>
		<div id="scan"></div>
	</div>
	
	<div class="btn">登录</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	 <div  align="center"> </div>
	 	<div>&nbsp;</div>
	<div>&nbsp;</div>
  <div  align="center"><a href="a.jsp" id="index">返回首页</a></div>
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
			//alert(base64);
			$.ajax({
				//参数地址
				url : "login_admin",
				//传递方式
				type : "post",
               
				//需要传递到后台的参数
				data : {
					"base64" : base64
				},
				//回调函数
			
				success : function(data) {
					
					alert(data);
					if(eval(data)){
						alert("刷脸成功，即将跳转");
						window.location.href="admin/face_success.jsp";
					}else{
						alert("刷脸失败，请调整脸部角度");
					}
					
				
				},
				error : function() {
					alert("百度taken已经过期，请联系队长");
				}
				
			});

			//alert(imgSrc);
		}
		document.getElementsByClassName("btn")[0].onclick = function() {
			login();
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
