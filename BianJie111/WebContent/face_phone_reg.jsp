<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>手机端刷脸</title>

<script type="text/javascript">
window.onload = function(){ 
	zhuce();
// 抓取上传图片，转换代码结果，显示图片的dom
var img_upload=document.getElementById("img_upload");
var u_base64=document.getElementById("u_base64");
var img_area=document.getElementById("img_area");
// 添加功能出发监听事件
img_upload.addEventListener('change',readFile,false);}
function readFile(){
var file=this.files[0];
if(!/image\/\w+/.test(file.type)){ 
alert("请确保文件为图像类型"); 
return false; 
}
var reader=new FileReader();
reader.readAsDataURL(file);
reader.onload=function(){
/*base64_code.innerHTML = this.result; */
var base64 = this.result.split("base64,")[1];
//alert(base64);
/*将base64的值放入文本框中*/
var test = document.getElementById("u_base64").value=base64;
		
img_area.innerHTML = '<div>图片img标签展示：</div><img src="'+this.result+'" alt=""/>'; }}
</script>
    <style>
		/*样式2*/
		.file {
			position: relative;
			display: inline-block;
			background: #D0EEFF;
			border: 1px solid #99D3F5;
			border-radius: 4px;
			padding: 4px 12px;
			overflow: hidden;
			color: #1E88C7;
			text-decoration: none;
			text-indent: 0;
			line-height: 20px;
		}
		.file input {
			position: absolute;
			font-size: 100px;
			right: 0;
			top: 0;
			opacity: 0;
		}
		.file:hover {
			background: #AADFFD;
			border-color: #78C3F3;
			color: #004974;
			text-decoration: none;
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
<body><!--  onload="zhuce();" -->
<div style="text-align: center;">
<h2>欢迎使用手机端人脸登录</h2>
<br />
	<form action="<%=request.getContextPath() %>/users.do?m=insert_face_phone" method="post" id="form" >
                    <input name="u_name" id="u_name"  value="${obj.u_name}"  type="text" size="33" maxlength="20"  /><br/>
				
					
                    <br/>
                  
				  <c:if test="${message != null}">
                  
                    <label><span style="color:red">${message}</span></label>
               
				  </c:if>
				
<a href="javascript:;" class="file">点击获取脸部信息
<input type="file" accept="image/*" capture="camera" name="" id="img_upload">
</a>
			   <input name="u_base64" id="u_base64" value="${obj.u_base64}" type="text"  />
                 
          <br /><input type="submit" value="点击注册" >
		 </form>	
		 			
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	
	
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		 
 

			//alert(imgSrc);
		}
		document.getElementsByClassName("btn")[0].onclick = function() {
			login();
		}
		 

		}
	
		
	</script>











</body>
</html>