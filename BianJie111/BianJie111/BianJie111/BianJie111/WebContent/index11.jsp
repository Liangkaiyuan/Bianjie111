<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
function submit() {
	//document.getElementById("id").innerHTML //获取文本的内容；
   //document.getElementById("myform").submit();
	var text=document.getElementById("text").value //获取文本框的内容；	
	//alert(text);	
	$.ajax({
		//参数地址
		url : "Submit",
		//传递方式
		type : "post",       
		//需要传递到后台的参数
		data : {
			"text" : text
		},
		//回调函数	
		success : function(data) {			
			alert(data);
			var dv = document.getElementById( "msg" );  // 取得DIV对象
		    dv.innerText = data; 
		},
		error : function() {
			alert("appid已经过期,请联系梁开愿");
		}		
	});
}
</script>

</head>
<body>
   <input type="text" name="text" id="text"/>
   <input type="button"  value="提交" onclick="submit()"/>
   <div id="msg"></div>
  
</body>
</html>