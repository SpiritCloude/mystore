<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>首页</title>
<link href="${pageContext.request.contextPath }/admin/css/indexmain.css"
	rel="stylesheet" type="text/css">
<script>
	var count = 0;
	var isgo = false;
	var timer;
	window.onload = function() {
		var ul_img = document.getElementsByClassName("ul_img")[0];
		var li_img = document.getElementsByClassName("li_img");
		var arrow = document.getElementsByClassName("arrow");
		var div_btn = document.getElementsByClassName("div_btn");
		div_btn[0].style.backgroundColor = "aqua";
		showtime();
		function showtime() {
			timer = setInterval(function() {
				if (isgo == false) {
					count++;
					ul_img.style.transform = "translate(" + -900 * count
							+ "px)";
					if (count >= li_img.length - 1) {
						count = li_img.length - 1;
						isgo = true;
					}
				} else {
					count--;
					ul_img.style.transform = "translate(" + -900 * count
							+ "px)";
					if (count <= 0) {
						count = 0;
						isgo = false;
					}
				}
				for (var i = 0; i < div_btn.length; i++) {
					div_btn[i].style.backgroundColor = "aquamarine";
				}
				div_btn[count].style.backgroundColor = "aqua";
			}, 4000)
		}
		for (var i = 0; i < arrow.length; i++) {
			arrow[i].onmouseover = function() {
				clearInterval(timer);
			}
			arrow[i].onmouseout = function() {
				showtime();
			}
			arrow[i].onclick = function() {
				if (this.title == 0) {
					count++;
					if (count > 3) {
						count = 0;
					}
				} else {
					count--;
					if (count < 0) {
						count = 3;
					}
				}
				ul_img.style.transform = "translate(" + -900 * count + "px)";
				for (var i = 0; i < div_btn.length; i++) {
					div_btn[i].style.backgroundColor = "aquamarine";
				}
				div_btn[count].style.backgroundColor = "aqua";
			}
		}
		for (var b = 0; b < div_btn.length; b++) {
			div_btn[b].index = b;
			div_btn[b].onmouseover = function() {
				clearInterval(timer);
				for (var a = 0; a < div_btn.length; a++) {
					div_btn[a].style.backgroundColor = "aquamarine";
				}
				div_btn[this.index].style.backgroundColor = "aqua";
				if (this.index == 3) {
					isgo = true;
				}
				if (this.index == 0) {
					isgo = false;
				}
				count = this.index;
				ul_img.style.transform = "translate(" + -900 * this.index
						+ "px)";
			}
			div_btn[b].onmouseout = function() {
				showtime();
			}
		}
	}
</script>
</head>
<body>
	<div class="p1">
		<img src="${pageContext.request.contextPath }/admin/img/logo.png"
			width="" height="90px">
	</div>
	<div class="p2">
		<ul class="album">
			<li>
				<a href="#" style="background-color:rgb(255,80,10);">
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
				<a href="${pageContext.request.contextPath }/admin/js/discount.jsp">
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
	<div id="图片轮播" class="p3">
		<div class="main_div">
			<div class="arrows">
				<span title="1" class="arrow"> < </span>
				<span title="0" class="arrow" style="float: right"> > </span>
			</div>
			<ul class="ul_img">
				<li class="li_img">
					<a href="${pageContext.request.contextPath }/ShowProduct?pid=2">
						<img src="${pageContext.request.contextPath }/admin/img/strawberry.jpg">
					</a>
				</li>
				<li class="li_img">
					<a href="${pageContext.request.contextPath }/ShowProduct?pid=3">
						<img src="${pageContext.request.contextPath }/admin/img/blueberry.png">
					</a>
				</li>
				<li class="li_img">
					<img src="${pageContext.request.contextPath }/admin/img/main.jpg">
				</li>
				<li class="li_img">
					<img src="${pageContext.request.contextPath }/admin/img/fruit.jpg">
				</li>
			</ul>
		</div>
		<div style="margin-left: 300px">
			<div class="div_btn"></div>
			<div class="div_btn"></div>
			<div class="div_btn"></div>
			<div class="div_btn"></div>
		</div>
	</div>
	<div class="p4">
		<table class="menu">
			<tr>
				<th class="seq">所有食品分类:</th>
			</tr>
			<tr>
				<td>
					<a href="${pageContext.request.contextPath }/admin/js/fresh.jsp">新鲜水果</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="">绿色蔬菜</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="${pageContext.request.contextPath }/admin/js/healthmatching.jsp">健康搭配</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="${pageContext.request.contextPath }/admin/js/discount.jsp">特价专场</a>
				</td>
			</tr>
		</table>
	</div>
	<div class="q1">
		<table class="box1" width="130px">
			<tr>
				<td align="center">FRESH &nbsp; FRUITS<br/><br/>新鲜果蔬<br/> <br/>
					<hr size="8" color="white">
				</td>
			</tr>
		</table>
	</div>
	<div class="q2">
		<table class="box2" cellspacing="10px">
			<tr>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/blueberry1.png">
					</a>
				</td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/vegetables.png">
					</a>
				</td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/tomatoes.png">
					</a>
				</td>
			</tr>
		</table>
	</div>
	<div class="q3">
		<table cellspacing="0">
			<tr>
				<td colspan="4">
					<img src="${pageContext.request.contextPath }/admin/img/sign1.png">
					<hr width="97%" size="2" color="#228b22" align="center">
				</td>
			</tr>
			<tr>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/apple.jpg">
					</a>
				</td>
				<td>
					<a href=""><img
						src="${pageContext.request.contextPath }/admin/img/denlon.jpg">
					</a>
				</td>
				<td>
					<a href="${pageContext.request.contextPath }/ShowProduct?pid=1">
						<img src="${pageContext.request.contextPath }/admin/img/cherry.jpg">
					</a>
				</td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/caij.jpg">
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/cucumber.jpg">
					</a>
				</td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/cheliz1.jpg">
					</a>
				</td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/shulb.jpg">
					</a>
				</td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/tomato.jpg">
					</a>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<img src="${pageContext.request.contextPath }/admin/img/sign1.png">
					<hr width="97%" size="2" color="#228b22" align="center">
				</td>
			</tr>
		</table>

		<table>
			<tr>
				<td rowspan="2">
					<img src="${pageContext.request.contextPath }/admin/img/tomatoes1.png">
				</td>
				<td>
					 <a href="">
					 	<img src="${pageContext.request.contextPath }/admin/img/banana.png">
					 </a>
				 </td>
				<td>
					<a href="">
						<img src="${pageContext.request.contextPath }/admin/img/cabbage.png">
					</a>
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<table>
					<tr>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath }/admin/img/apple1.png">
							</a>
						</td>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath }/admin/img/mihoutao1.png">
							</a>
						</td>
						<td>
							<a href="">
								<img src="${pageContext.request.contextPath }/admin/img/denlon1.png">
							</a>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
	</div>
	<div class="foot">
		<img src="${pageContext.request.contextPath }/admin/img/indexfoot.png">
		版权&copy;:版权所有，违者必究
		<address>E-mail:1035310879@qq.com</address>
	</div>
</body>
</head>
</html>