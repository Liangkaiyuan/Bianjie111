<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户人脸注册</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>


<style type="text/css">
h2 {
	text-align: center;
	color: green; height; 60 px;
	line-height: 60px
}
h3 {
	text-align: center;
	color: red; height; 10 px;
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
	width: 90px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	margin: 20px auto 0;
	background: blue;
	color: #fff;
	cursor: pointer;
	border-radius: 40px;
}

.bt {
	width: 85px;
	height: 35px;
	text-align: center;
	line-height: 30px;
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
margin-top:10px;
text-align: center;
}
a{
text-align: center;
}

</style>


<script type="text/javascript">
function zhuce() {
	var a= document.getElementById("u_base64").value.length;
	//alert(a);
	if(a>10){
		alert("您已经通过人脸注册");
		window.location.href="index.jsp";
	}else {
		alert("您还没有通过人脸注册，请先获取人脸信息再进行注册");
	}
	
	
}
</script>

</head>

<body onload="zhuce();">
<div style="text-align: center;">
<a href="a.jsp" >返回主页</a>
<br />
<br />
<a href="<%=request.getContextPath() %>/users.do?m=toinsert_face_phone">手机端人脸注册</a>
</div>
<h3>用户人脸注册</h3>

	<div class="media">
		<video src="" width="534px" height="400px" id="video" autoplay></video>
		<canvas id="canvas" width="534px" height="400px" id="video">
		</canvas>
		<div id="scan"></div>
	</div>
	
			
		<form action="<%=request.getContextPath() %>/users.do?m=insert_face" method="post" id="form" >
                    <input name="u_name" id="u_name"  value="${obj.u_name}"  type="text" size="33" maxlength="20" style="display: none;"/><br/>
				
					
                    <input name="u_base64" id="u_base64" value="${obj.u_base64}"   type="text" size="33" style="display: none;"/>
                  <br/>
                  
				  <c:if test="${message != null}">
                  
                    <label><span style="color:red">${message}</span></label>
               
				  </c:if>
				
				
			   <div class="btn">1:获取人脸信息</div> <input  type="submit" value="2:刷脸注册" class="bt" style="text-align: center;"><br/>
          
		 </form>	
		 			
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	
	
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		//获取video标签
		var video = document.getElementById("video");
		var canvas = document.getElementById("canvas");
		var context = canvas.getContext("2d");
		//浏览器自带的用户媒体对象 火狐 谷歌 ie
		var getUserMedia = (navigator.getUserMedia || navigator.webGetUserMedia
				|| navigator.mozGetUserMedia || navigator.msGetUserMeida);
		console.log(getUserMedia);
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
			$.ajax({
				//参数地址
				url : "Face_reg",
				//传递方式
				type : "post",
               
				//需要传递到后台的参数
				data : {
					"base64" : base64
				},
				//回调函数
			
				success : function(data) {
					
					//alert(data);
					if(eval(data)){
						alert("获取人脸信息成功，请点击注册");
						//window.location.href="index.jsp";
					}else{
						alert("刷脸注册失败，请调整脸部角度");
					}
					
				
				},
				error : function() {
					alert("注册失败");
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
			}, 1000, function() {
				$(this).css({
					"bottom" : box.height()
				})
			});

		}
	
		
	</script>

  
     
	
		



</body>
</html>
