<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/rl.js"></script>
<script type="text/javascript" >
	function checklogin(){
		var u_name = $("#u_name").attr("value");
		var u_pwd = $("#u_pwd").attr("value");
		if($.trim(u_name).length == 0){
			alert("�û�������Ϊ�գ�");
			return false;
		}
		
		if($.trim(u_pwd).length == 0){
			alert("���벻��Ϊ�գ�");
			return false;
		}
	}
</script>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table width="100%" border="0">
      <tr>
        <td height="37" > &nbsp;&nbsp;</td>
      </tr>
      <tr>
        <td height="140" valign="top">

		<form action="<%=request.getContextPath() %>/rooms.do?m=list" method="post" >
		<table width="97%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="27%" height="28" align="right">&nbsp;</td>
            <td width="73%">&nbsp;</td>
          </tr>
          <tr>
            <td height="36" align="right">�ؼ��֣�</td>
            <td><label>
              <input type="text" name="keyname" id="keyname" class="input" />
            </label></td>
          </tr>
          <tr>
            <td height="40" align="right">���</td>
            <td><select name="kid" id="kid">
											<option value="">��ѡ��</option>
										      <option value="r_name">����</option>
										      <option value="r_bed">����</option>
						
										</select></td>
          </tr>
          <tr>
            <td height="40" align="right">&nbsp;</td>
            <td><input  type="image"  src="images/search.jpg" name="Submit" value="�ύ" />
			</td>
          </tr>
        </table>
		  </form>
		</td>
      </tr>
    </table>
	<c:choose>
	  <c:when test="${USERS == null}">
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
            <input type="submit" name="Submit2" value="��½" />&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/users.do?m=toreg">ע��</a>
          </label></td>
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
          <td>��ӭ�û�${USERS.u_name }��½</td>
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
          <td><a href="<%=request.getContextPath() %>/users_pwd.jsp"><span>�޸�����</span></a>&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/exit.jsp"><span>�˳�</span></a></td>
        </tr>
      </table>
	  </c:otherwise>
				</c:choose>
	  
	  <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="37%" height="35">&nbsp;</td>
          <td width="63%">&nbsp;</td>
        </tr>
        <tr>
          <td height="25" align="right">�绰��</td>
          <td>869563223</td>
        </tr>
        <tr>
          <td height="25" align="right">�ֻ���</td>
          <td>13632632163</td>
        </tr>
        <tr>
          <td height="25" align="right">���䣺</td>
          <td>23423@163.com</td>
        </tr>
        <tr>
          <td height="25" align="right">���棺</td>
          <td>89653022</td>
        </tr>
      </table>
	