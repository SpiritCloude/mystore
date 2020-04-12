<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/cart.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
function changeProductNum(count,status) {
	if (count == 0) {
		var flag = window.confirm("确认删除商品吗?");

		if (!flag) {
			count = 1;
		}
	}
	location.href = "${pageContext.request.contextPath}/ChangeCart?count=" + count+ "&status=" + status;
}
function cart_del() {   
    var msg = "您确定要删除该商品吗？";   
    if (confirm(msg)==true){   
    return true;   
    }else{   
    return false;   
    }   
}   
</script>
<title>购物车</title>
</head>
<body>
<div class="p1">
		<img src="${pageContext.request.contextPath }/admin/img/logo.png"
			width="" height="90px">
</div>
<div class="p2">
		<ul class="album">
			<li><a href="${pageContext.request.contextPath }/index.jsp">&nbsp; &nbsp;首页&nbsp; &nbsp;</a></li>
			<li><a href="">&nbsp;新鲜果蔬&nbsp;</a></li>
			<li><a href="">&nbsp;健康搭配&nbsp;</a></li>
			<li><a href="">&nbsp;特价专场&nbsp;</a></li>
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
  <div class="cartbody">
    <img src="${pageContext.request.contextPath }/admin/img/carbody.png" style="width:200px; height:60px;" >
    <hr size=6 width="90%" align="center" color=darkorange>
      <div class="p4">
      <center>
			<table align="center" border="1" rules="all" width="600">
				<tr>
					<th>序号</th>
					<th>商品名</th>
					<th>价格</th>
					<th>质量</th>
					<th>份数</th>
					<th>删除</th>
					<th>小计</th>
				</tr>
				<c:set var="total" value="0" />
				<c:forEach var="car"  items="${ sessionScope.cart }" varStatus="status" >
					<tr align="center">
						<td>${ status.count }</td>	
						<td>${ car.key.name }</td>	
						<td>${ car.key.price }</td>
						<td>${ car.key.weight }</td>
						<td>
						  <input type="button" value='-' style="width:20px"
							onclick="changeProductNum('${car.value-1}','${status.count}')" />
						  <input name="text" type="text" value="${car.value}" style="width:40px;text-align:center" />
						  <input type="button" value='+' style="width:20px"
							onclick="changeProductNum('${car.value+1}','${status.count}')" />
						</td>
						<td>
							<a href="${pageContext.request.contextPath}/ChangeCart?count=0&status=${status.count}"
							style="color:#FF0000; font-weight:bold" onclick="javascript:return cart_del()">X</a>
						</td>
						<td>${ car.key.price*car.value}￥</td>
					</tr>
					<c:set value="${total+car.key.price*car.value}" var="total" />
				</c:forEach>
				
				<tr>
					<td  colspan="7" align="right">
						<font style="color:#FF6600; font-weight:bold">合计：&nbsp;&nbsp;${total}元</font>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="3" align="right">
						<a href="${pageContext.request.contextPath}/index.jsp">
							<img src="${pageContext.request.contextPath}/admin/img/order_shopping.gif" 
								style="height:45px;width:120px;border:0" />
						</a>
					</td>
					<td colspan="3" align="left">
						<a href="${pageContext.request.contextPath}/admin/js/order.jsp">
							<img src="${pageContext.request.contextPath}/admin/img/order_buy.gif"
								style="height:45px;width:120px;border:0" />
						</a>
					 </td>
				</tr>
			</table>
		</center>
	</div>
  </div>
  <div class="cartfoot">
						<img
							src="${pageContext.request.contextPath }/admin/img/loginfoot.jpg">
		版权&copy;:版权所有，违者必究
		<address>E-mail:1035310879@qq.com</address>
	</div>
</body>
</html>