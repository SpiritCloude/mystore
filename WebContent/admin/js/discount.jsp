<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>特价专场</title>
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/admin/css/discount.css"
	rel="stylesheet" type="text/css">	
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<div class="p1">
		<img src="${pageContext.request.contextPath }/admin/img/logo.png"
			width="" height="90px">
	</div>
	<div class="p2">
		<ul class="album">
			<li>
				<a href="${pageContext.request.contextPath }/index.jsp">
					&nbsp; &nbsp;首页&nbsp; &nbsp;
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/admin/js/fresh.jsp">
					&nbsp;新鲜果蔬&nbsp;
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/admin/js/healthmatching.jsp">
					&nbsp;健康搭配&nbsp;
				</a>
			</li>
			<li>
				<a href="#" style="background-color:rgb(255,80,10);">
					&nbsp;特价专场&nbsp;
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/admin/js/connection.jsp">
					&nbsp;联系我们&nbsp;
				</a>
			</li>
		</ul>
	</div>
	<div class="ri">
		<ul id="floatlead" class="ul_dh">
			<li class="li_dh">
				<a href="${pageContext.request.contextPath }/admin/js/login.jsp">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead1.png"/>登录
				</a>
			</li>
			<li class="li_dh">
				<a href="${pageContext.request.contextPath }/admin/js/cart.jsp">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead2.png"/>购物车
				</a>
			</li>
			<li class="li_dh">
				<a href="">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead3.png"/>收藏
				</a>
			</li>
			<li class="li_dh">
				<a href="${pageContext.request.contextPath }/UsreOrder">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead4.png"/>订单
				</a>
			</li>
		</ul>
	</div>
	<div class="p3">
		<img src="${pageContext.request.contextPath }/admin/img/strawberry5.jpg" width="1300" height="250px">
	</div>
	<div class="p4">
		<table>
			<tr>
				<td><img src="${pageContext.request.contextPath }/admin/img/caij1.png" /></td>
				<td><img src="${pageContext.request.contextPath }/admin/img/shulb1.png"></td>
				<td><img src="${pageContext.request.contextPath }/admin/img/hcai1.png"></td>
			</tr>
			<tr>
				<td><img src="${pageContext.request.contextPath }/admin/img/tomato2.png"></td>
				<td><img src="${pageContext.request.contextPath }/admin/img/tomato3.png"></td>
				<td><img src="${pageContext.request.contextPath }/admin/img/caij2.png"></td>
			</tr>
			<tr>
				<td><img src="${pageContext.request.contextPath }/admin/img/apple2.png"></td>
				<td><img src="${pageContext.request.contextPath }/admin/img/cucumber2.png"></td>
				<td><img src="${pageContext.request.contextPath }/admin/img/vegetables1.png"></td>
			</tr>
		</table>
	</div>
	<div class="discountfoot">
		<img src="${pageContext.request.contextPath }/admin/img/loginfoot.jpg">
			版权&copy;:版权所有，违者必究
		<address>E-mail:1035310879@qq.com</address>
	</div>
</body>
</head>
</html>