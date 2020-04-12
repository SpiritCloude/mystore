<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/admin/css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function checkuser(){
	var values = document.getElementById('username').value;
	if(values ==""){
		document.getElementById('uspan').style.display='inline';
	}else{
		document.getElementById('uspan').style.display='none';
	}
};
function checkpsw(){
	var values = document.getElementById('password').value;
	if(values ==""){
		document.getElementById('pspan').style.display='inline';
	}else{
		document.getElementById('pspan').style.display='none';
	}
};
function changeCode(){
	var img = document.getElementById('imgId');
	img.src="${pageContext.request.contextPath }/CheckCodeServlet?time"+new Date().getTime();
};
function changemsg(){
	document.getElementById('code').style.display="none";
};
</script>
<title>登陆</title>
</head>
<body>
  <div class="mlbody">
       <hr size=6 width="90%" align="center" color=darkorange>
       <div class="mllogin">
       		<font color="red">${ sUser }</font>
			<form action="${pageContext.request.contextPath }/ManagerLogin" method="post">
				<table align="center">
					<tr>
						<td>
							用户名:
						</td>
						<td>
							<input type="text" name="username" onBlur="checkuser()" id="username" placeholder="输入用户名" />
						</td>
						<td>
							<span id="uspan" style="color:red; display:none;">请输入用户名</span>
						</td>
					</tr>
					<tr>
						<td>
							密&nbsp; 码:
						</td>
						<td>
							<input type="password" name="password" onBlur="checkpsw()" id="password" placeholder="输入密码" />
						</td>
						<td>
							<span id="pspan" style="color:red;display:none;">请输入密码</span>
						</td>
					 </tr>
					<tr>
						<td>
							验证码:
						</td>
						<td>
							<input  name="code" type="text" onfocus="changemsg()" />
							<font id="code" color="red">${sessionScope.cUser}</font>
						</td>
						<td>
							<img id="imgId" src="${pageContext.request.contextPath }/CheckCodeServlet" 
							style="width:180px;height:80px;" onclick="changeCode()"/>
						</td>
					 </tr>
					<tr align="center">
						 <td colspan="2">
							<input type= "submit" value="登录" style="background:rgb(250,80,10);height:50px;width:300px;"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
  </div>
</body>
</html>