<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/product.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function switchTag(content) {
		var i;
		var content;
		for (i = 1; i < 4; i++) {
			if ("content" + i == content) {
				document.getElementById(content).className = "";
			} else {
				document.getElementById("content" + i).className = "hidecontent";
			}
			document.getElementById("content").className = content;
		}
	}

	function aa() {
		document.getElementById("buy").value++;
	}
	function bb() {
		x = document.getElementById("buy").value;
		if (x > 1)
			document.getElementById("buy").value--;
	}
</script>
<title>产品简介</title>
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
				<a href="留言.html">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead4.png">留言
				</a>
			</li>
		</ul>
	</div>
	<div class="orderbg">
		<form action="${pageContext.request.contextPath }/AddCart">
			<table cellspacing="2px" cellpadding="2px">
				<tr>
					<td colspan="3" bgcolor="#FFFFFF">
						<hr width="98%" size="2" color="#8B8989" align="center">
					</td>
					<td colspan="4" width="700">
						<input name="pid" value="${sessionScope.p.id}" style="color:white; display:none;"/>
						<font face="黑体" size=5 color=""> &nbsp; ${sessionScope.p.name} </font>
						<hr width="98%" size="2" color="#8B8989" align="center">
					</td>
				</tr>
				<tr>
					<td colspan="3" rowspan="6" width="500" height="500" bgcolor="#FFFFFF">
						<img src="${pageContext.request.contextPath }/admin/img/${sessionScope.p.imgurl}">
						<hr width="98%" size="2" color="#8B8989" align="center">
					</td>
				</tr>
				<tr>
					<td align="center">价格：</td>
					<td colspan="3">
						<font face="黑体" size=6 color="red"> <b>￥${sessionScope.p.price}</b></font>
					</td>
				</tr>
				<tr>
					<td align="center">促销：</td>
					<td colspan="3">
						<img style="width:30px; height:25px;" src="${pageContext.request.contextPath }/admin/img/discount.png" /> &nbsp;满100减9
						<img style="width:30px; height:25px;" src="${pageContext.request.contextPath }/admin/img/discount.png" /> &nbsp;满200减90
						<img style="width:30px; height:25px;" src="${pageContext.request.contextPath }/admin/img/discount.png" /> &nbsp;满300减100
					</td>
				</tr>
				<tr>
					<td align="center">质量：</td>
					<td colspan="3">
						<span>${sessionScope.p.weight}</span>
					</td>
				</tr>
				<tr>
					<td  align="center">库存：</td>
					<td colspan="3">
						<font face="黑体" size=3 color="red"><b>${sessionScope.p.total}</b></font>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="right">
						<input type="submit" value="" 
						style="background:url('${pageContext.request.contextPath }/admin/img/car.png');height:45px;width:163px;border:0;"/>
					</td>
					<td align="center">
						<img style="width:163px; height:45px;" src="${pageContext.request.contextPath }/admin/img/buy.png">
					</td>
				</tr>
				<tr>
					<td><img src="${pageContext.request.contextPath }/admin/img/collection.png"></td>
					<td><img src="${pageContext.request.contextPath }/admin/img/share.png"></td>
					<td><img src="${pageContext.request.contextPath }/admin/img/onlinecustomer.png"></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="container">
		<div id="menu">
			<table border="1">
				<tr>
					<td id="table-td1"><a
						onclick="switchTag('content1');this.blur();">&nbsp;产品详情</a></td>
					<td id="table-td1"><a
						onclick="switchTag('content2');this.blur();">&nbsp;产品评论(0)</a></td>
					<td id="table-td1"><a
						onclick="switchTag('content3');this.blur();">&nbsp;销售记录(0)</a></td>
				</tr>
			</table>
		</div>
		<div id="content" class="content1">
			<div id="content1">
				<table frame="hsides" rules="all">
					<tr>
						<td id="table-td2">&nbsp;产地：</td>
						<td id="table-td3">&nbsp;${sessionScope.p.origin}</td>
						<td id="table-td2">&nbsp;包装方式：</td>
						<td id="table-td3">&nbsp;散装</td>
					</tr>
					<tr>
						<td colspan="4" width="100%">
							<table rules="all" width="100%" height="300px">
								<tr height="30px">
									<td colspan="4">${sessionScope.p.name}的简介</td>
								</tr>
								<tr>
									<td>${sessionScope.p.inventory}</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<div id="content2" class="hidecontent">
				<table frame="hsides" rules="all" cellspacing="5" cellpadding="3">
					<tr>
						<td id="table-td2">&nbsp;产品评星：</td>
						<td id="table-td3">
							<input type="radio" name="evaluation" value="good">好评
							<input type="radio" name="evaluation" value="ordinary">一般
							<input type="radio" name="evaluation" value="bad">差评</td>
					</tr>
					<tr>
						<td id="table-td2">&nbsp;评论內容：</td>
						<td id="table-td3">
							<textarea name="yoursuggest" cols="111" rows="6"></textarea>
						</td>
					</tr>
					<tr>
						<td id="table-td2">&nbsp;上传图片：</td>
						<td rowspan="2">
							<div class="logo">
								<img style="width:180px; height:180px;" src="${pageContext.request.contextPath }/admin/img/uploadimg.png">
							</div>
							<div class="upload">
								<form>
									<input type="file" />
								</form>
								<p>上传图片</p>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div id="content3" class="hidecontent">
				<table frame="hsides" rules="all" cellspacing="10" width="950">
					<tr>
						<td id="table-td2">&nbsp;买家</td>
						<td id="table-td2">&nbsp;选项信息</td>
						<td id="table-td2">&nbsp;数量</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>