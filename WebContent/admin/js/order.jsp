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
var receiverAddressObj;
var receiverNameObj;
var receiverPhoneObj;

window.onload = function() {	// 页面加载之后, 获取页面中的对象
	receiverAddressObj = document.getElementById("receiverAddress");
	receiverNameObj = document.getElementById("receiverName");
	receiverPhoneObj = document.getElementById("receiverPhone");
};

function checkOnSubmit() {			// 验证整个表单
	var receiverAddress = checkReceiverAddress();
	var receiverName = checkReceiverName();
	var receiverPhone = checkReceiverPhone();
	if(receiverAddress && receiverName && receiverPhone){
		document.getElementById("orderForm").submit();
	}else{
	   return "";
	}
}

function checkReceiverAddress() {			// 验证收获地址
	var value =receiverAddressObj.value;
	var msg = "";
	if (!value)
		msg = "收获地址必须填写";	
	receiverAddressMsg.innerHTML = msg;
	receiverAddressObj.parentNode.parentNode.style.color = msg == "" ? "black" : "red";
	return msg == "";
}

function checkReceiverName() {		// 验证收货人
	var value =receiverNameObj.value;
	var msg = "";
	if (!value)
		msg = "收获人必须填写";	
	receiverNameMsg.innerHTML = msg;
	receiverNameObj.parentNode.parentNode.style.color = msg == "" ? "black" : "red";
	return msg == "";
}

function checkReceiverPhone() {		// 验证联系方式
	var regex =/^1[3,5,8]\d{9}$/;	//以13、15、18开头的手机号
	var value =receiverPhoneObj.value;
	var msg = "";
	if (!value)
		msg = "联系方式必须填写";
	else if (!regex.test(value))
		msg = "手机号码不合法：";
	receiverPhoneMsg.innerHTML = msg;
	receiverPhoneObj.parentNode.parentNode.style.color = msg == "" ? "black" : "red";
	return msg == "";
}
</script>
<title>订单</title>
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
  <div class="obody">
       <table border="0" cellspacing="0"  width="18%">
			<tr>
				<td>
					<a style="color:green;" href="${pageContext.request.contextPath }/index.jsp">首页--></a>
				</td>
				<td>
					<a style="color:green;" href="${pageContext.request.contextPath}/admin/js/cart.jsp">&nbsp;购物车--></a>
				</td>
				<td>订单</td>
			</tr>
		</table>	
		<form id="orderForm" action="${pageContext.request.contextPath}/CreatOrder" method="post">
			<table cellspacing="0" border="1" width="88%">
				<tr>
					<td colspan="6" align="left">
						<p>你好，${sUser.username}！欢迎您来到网上商城结算中心</p>
					</td>
				</tr>
				<tr bgcolor="#E1FFE1">
					<th width="10%" height="30px">序号</th>
					<th width="10%">商品名称</th>
					<th width="10%">价格</th>
					<th width="10%">质量</th>
					<th width="10%">份数</th>
					<th width="10%">小计</th>
				</tr>
				<c:set value="0" var="totalPrice"/>
				<c:forEach items="${cart}" var="entry" varStatus="vs">
				<tr>
					<td>${vs.count}</td>
					<td>${entry.key.name }</td>
					<td>${entry.key.price }</td>
					<td>${entry.key.weight}</td>
					<td>
					  <input name="text" type="text" value="${entry.value}" style="width:20px" readonly="readonly"/>
					</td>
					<td width="10%">${entry.key.price*entry.value}</td>
				</tr>
				<c:set var="totalPrice" value="${totalPrice+entry.key.price*entry.value}"/>
				</c:forEach>
				<tr>
					<td colspan="6" align="right" bgcolor="#E1FFE1" height="30px">
						<font style="color:#FF0000;font-weight:bold;font-size: 19px;">合计：&nbsp;&nbsp;${totalPrice}元</font>
						<input type="hidden" name="money" value="${totalPrice}">
					</td>
				</tr>
				<tr>
					<td>收货地址：</td>
					<td colspan="5" align="left">
						<input id="receiverAddress" name="receiverAddress" type="text"
							style="width:350px" onkeyup="checkReceiverAddress();" />
						<span id="receiverAddressMsg"></span>
					</td>
				</tr>
				<tr>
					<td>收货人：</td>
					<td colspan="5" align="left">
						<input id="receiverName" name="receiverName" type="text" value="${sUser.username}"
							style="width:150px" onkeyup="checkReceiverName();" />
						<span id="receiverNameMsg"></span>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td colspan="5" align="left">
						<input type="text" id="receiverPhone" name="receiverPhone" value="${sUser.telephone}"
							style="width:150px" onkeyup="checkReceiverPhone();" />
						<span id="receiverPhoneMsg"></span>
					</td>
				</tr>
				<tr>
					<td colspan="6" align="right">
						<hr/>
						<p style="text-align:right;width:180px;">
							<img src="${pageContext.request.contextPath }/admin/img/order_pay.gif"
								width="204" height="51" border="0" onclick="checkOnSubmit();"/>
						</p>
					</td>
				</tr>
			</table>
		</form>
  	</div>
  	<div class="orderfoot">
			<img src="${pageContext.request.contextPath }/admin/img/orderfoot.jpg">
		版权&copy;:版权所有，违者必究
		<address>E-mail:1035310879@qq.com</address>
	</div>
</body>
</html>