<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>手机端刷脸</title>

<script type="text/javascript">
window.onload = function(){ 
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


<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>





</head>
<body>
<div style="text-align: center;">
<h2>欢迎使用手机端人脸登录</h2>
<br />
<c:choose>
	  <c:when test="${USERS == null}">

<form action="<%=request.getContextPath() %>/users.do?m=face_login_phone" method="post" >
<br />
请输入用户名：<input name="u_name" id="u_name" type="text" size="20" maxlength="11" autocomplete="off"/><br/>

<c:if test="${message != null}">
<label><span style="color:red">${message }</span></label>
							</c:if>
<br />

<a href="javascript:;" class="file">点击获取脸部信息

<input type="file" accept="image/*" capture="camera" name="" id="img_upload">

</a>

<br />
<br />

<input id="u_base64" name="u_base64" type="text" />
<br />
<br />

<input type="submit" value="点击登录" >

</form>
</c:when>

<c:otherwise>



<br /><br /><br /><br />
<a href="a.jsp">返回首页</a>

</div>
</body>
</html>