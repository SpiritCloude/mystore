<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/admin/css/login.css"
	rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
</script>
<title>登陆成功</title>
</head>
<body>
	<div class="p2">
		<ul class="album">
			<li><a href="${pageContext.request.contextPath }/index.jsp">&nbsp; &nbsp;首页&nbsp; &nbsp;</a></li>
			<li><a href="">&nbsp;新鲜果蔬&nbsp;</a></li>
			<li><a href="">&nbsp;健康搭配&nbsp;</a></li>
			<li><a href="">&nbsp;特价专场&nbsp;</a></li>
			<li><a href="">&nbsp;联系我们&nbsp;</a></li>
		</ul>
	</div>
	<div class="ri">
		<ul id="floatlead" class="ul_dh">
			<li class="li_dh">
				<a href="${pageContext.request.contextPath }/admin/js/login.jsp">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead1.png">登录
				</a>
			</li>
			<li class="li_dh">
				<a href="${pageContext.request.contextPath }/admin/js/cart.jsp">
			 		<img src="${pageContext.request.contextPath }/admin/img/floatlead2.png">购物车
				</a>
			</li>
			<li class="li_dh">
				<a href="">
				 <img src="${pageContext.request.contextPath }/admin/img/floatlead3.png">收藏
				</a>
			</li>
			<li class="li_dh">
				<a href="${pageContext.request.contextPath }/UsreOrder">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead4.png">订单
				</a>
			</li>
		</ul>
	</div>
<c:if test="${empty sUser }">
	  <div class="p3">
	       <img src="${pageContext.request.contextPath }/admin/img/loginbody.png" style="width: 200px; height: 60px;" >
	       <hr size=6 width="90%" align="center" color=darkorange>
	       <div class="p4">
				<center>
					<img src="${pageContext.request.contextPath }/admin/img/error.png" style="width:50px; height:50px;" >
					<h3>亲您还没有登陆，请您
						<a href="${pageContext.request.contextPath}/admin/js/login.jsp"  style="color:red;">登陆</a>
					</h3>
				</center>
			</div>
	  </div>
</c:if>

<c:if test="${not empty sUser }">
	  <div class="p3">
	       <img src="${pageContext.request.contextPath }/admin/img/loginbody.png" style="width: 200px; height: 60px;" >
	       <hr size=6 width="90%" align="center" color=darkorange>
	       <div class="p4">
				<center>
					<h3>
						<img src="${pageContext.request.contextPath }/admin/img/success.png" style="width:50px; height:50px;" >
						欢迎您 ${sUser.username}
					</h3>
				</center>
			</div>
	  </div>
</c:if>
</body>
</html>