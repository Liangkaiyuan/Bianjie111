<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�û�����ע��</title>
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
		alert("���Ѿ�ͨ������ע��");
		window.location.href="index.jsp";
	}else {
		alert("����û��ͨ������ע�ᣬ���Ȼ�ȡ������Ϣ�ٽ���ע��");
	}
	
	
}
</script>

</head>

<body onload="zhuce();">
<div style="text-align: center;">
<a href="a.jsp" >������ҳ</a>
<br />
<br />
<a href="<%=request.getContextPath() %>/users.do?m=toinsert_face_phone">�ֻ�������ע��</a>
</div>
<h3>�û�����ע��</h3>

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
				
				
			   <div class="btn">1:��ȡ������Ϣ</div> <input  type="submit" value="2:ˢ��ע��" class="bt" style="text-align: center;"><br/>
          
		 </form>	
		 			
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	
	
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		//��ȡvideo��ǩ
		var video = document.getElementById("video");
		var canvas = document.getElementById("canvas");
		var context = canvas.getContext("2d");
		//������Դ����û�ý����� ��� �ȸ� ie
		var getUserMedia = (navigator.getUserMedia || navigator.webGetUserMedia
				|| navigator.mozGetUserMedia || navigator.msGetUserMeida);
		console.log(getUserMedia);
		//��������ͷ
		getUserMedia.call(navigator, {
			video : true,
			audio : false
		}, function(localMediaStream) {
			//������ͷ��ý�������ݴ��ݸ�video��ǩ����
			video.src = window.URL.createObjectURL(localMediaStream);
		}, function(e) {
			//���δ��ȡ����ͷ����̨��ʾ������Ϣ
			console.log("��ȡ����ͷʧ��", e);
		});

		function login() {
			scan();
			context.drawImage(video, 0, 0, 534, 400);
			//����Ƭת��base64����
			var imgSrc = document.getElementById('canvas').toDataURL(
					'image/png');
			//��base64��������и�
			var base64 = imgSrc.split("base64,")[1];
			var test = document.getElementById("u_base64").value=base64;
			//alert(base64);
			$.ajax({
				//������ַ
				url : "Face_reg",
				//���ݷ�ʽ
				type : "post",
               
				//��Ҫ���ݵ���̨�Ĳ���
				data : {
					"base64" : base64
				},
				//�ص�����
			
				success : function(data) {
					
					//alert(data);
					if(eval(data)){
						alert("��ȡ������Ϣ�ɹ�������ע��");
						//window.location.href="index.jsp";
					}else{
						alert("ˢ��ע��ʧ�ܣ�����������Ƕ�");
					}
					
				
				},
				error : function() {
					alert("ע��ʧ��");
				}
				
			});

			//alert(imgSrc);
		}
		document.getElementsByClassName("btn")[0].onclick = function() {
			login();
		}
		//ɨ�躯��
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
