<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/orderbody.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
</script>
<title>订单</title>
</head>
<body>
<div class="p2">
		<ul class="album">
			<li><a href="${pageContext.request.contextPath }/index.jsp">&nbsp; &nbsp;首页&nbsp; &nbsp;</a></li>
			<li><a href="">&nbsp;新鲜果蔬&nbsp;</a></li>
			<li><a href="">&nbsp;健康搭配&nbsp;</a></li>
			<li><a href="${pageContext.request.contextPath }/admin/js/discount.jsp">&nbsp;特价专场&nbsp;</a></li>
			<li><a href="${pageContext.request.contextPath }/admin/js/connection.jsp">&nbsp;联系我们&nbsp;</a></li>
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
  <div class="obody">
       <table border="0" cellspacing="0"  width="15%">
			<tr>
				<td>
					<a style="color:green;" href="${pageContext.request.contextPath }/index.jsp">首页--></a>
				</td>
				<td>全部订单</td>
			</tr>
		</table>	
		<table cellspacing="0" border="1" width="900px">
			<tr>
				<td colspan="7" align="left">
					<p>你好，${sUser.username}！欢迎您来到网上商城您的全部订单</p>
				</td>
			</tr>
			<tr bgcolor="#E1FFE1">
				<th width="10%" height="30px">序号</th>
				<th width="10%">商品名称</th>
				<th width="10%">价格</th>
				<th width="10%">收货地址</th>
				<th width="10%">收货人</th>
				<th width="10%">联系方式：</th>
				<th width="10%">购买时间</th>
			</tr>
			<tr>
				<td colspan="2">
				<table frame="hsides" rules="all" align="center">
					<c:forEach items="${pname}" var="entry" varStatus="vs">
					<tr height="40px">
						<td width="140px">${vs.count}</td>
						<td width="140px">${entry}</td>
					</tr>
					</c:forEach>
				</table>
				</td>
				<td colspan="5">
				<table frame="hsides" rules="all" align="center">
					<c:forEach items="${uOrders}" var="order">
					<tr>
						<td width="145px">${order.money }</td>
						<td width="143px">${order.receiverAddress }</td>
						<td width="143px">${order.receiverName}</td>
						<td width="145px">${order.receiverPhone}</td>
						<td width="143px">${order.ordertime}</td>
					</tr>
					</c:forEach>
				</table>
				</td>
			</tr>
			
		</table>
  	</div>
</body>
</html>