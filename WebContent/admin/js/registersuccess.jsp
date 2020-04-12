<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5; url=${pageContext.request.contextPath }/index.jsp">
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
var x = 10;
function run () {
	var span =document.getElementById("spanId");
	span.innerHTML = x;
	x--;
	window.setTimeout("run()",1000);
}
</script>
<title>注册成功</title>
</head>
<body onload="run()">
  <div class="p3">
       <img src="${pageContext.request.contextPath }/admin/img/loginbody.png" style="width: 200px; height: 60px;" >
       <hr size=6 width="90%" align="center" color=darkorange>
       <div class="p4">
			<center>
				<h3>
					<img src="${pageContext.request.contextPath }/admin/img/success.png" style="width:50px; height:50px;" >
					注册成功页面<span id="spanId">5</span>
					秒后跳转首页 
				</h3>
			</center>
		</div>
  </div>
</body>
</html>