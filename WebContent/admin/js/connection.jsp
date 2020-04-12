<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>联系我们</title>
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/admin/css/Carouse.css"
	rel="stylesheet" type="text/css">	
<link href="${pageContext.request.contextPath }/admin/css/message.css" 
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
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
				<a href="${pageContext.request.contextPath }/admin/js/discount.jsp">
					&nbsp;特价专场&nbsp;
				</a>
			</li>
			<li>
				<a href="#" style="background-color:rgb(255,80,10);">
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
	<div class="msg1">
		<div class="msg2">&nbsp;</div>
		<div class="msg3">
			留言
			<hr size=6 width="100%" align="center" color=darkorange>
		</div>
		<div class="msg4">
			<p>发表您的留言：</p>
			<table cellspacing="5" cellpadding="1">
				<tr>
					<td width="90px">姓名:</td>
					<td width="120px"><input type="text" name="username"></td>
					<td width="90px">&nbsp; &nbsp; &nbsp; &nbsp;邮箱：</td>
					<td width="120px"><input type="text" name="username"></td>
					<td width="90px">&nbsp; &nbsp; &nbsp; &nbsp;电话：</td>
					<td width="120px"><input type="text" name="username"></td>
				</tr>
				<tr>
			        <td><br/>内容:</td>
			        <td colspan="5">
				        <textarea name="yoursuggest" cols="90" rows="6">这个家伙很懒，什么都没有留下！</textarea>
			        </td>
				</tr>
				<tr>
					<td colspan="6">
						<center>
							<input type="submit" value="提 交 留 言"
							style="background:rgb(255,80,80);border:0;height:42px;width:300px;" />
						</center>
      				</td>
				</tr>
     		</table>  
		</div>
	</div>
	<div class="connectfoot">
						<img
							src="${pageContext.request.contextPath }/admin/img/loginfoot.jpg">
		版权&copy;:版权所有，违者必究
		<address>E-mail:1035310879@qq.com</address>
	</div>
</body>
</head>
</html>