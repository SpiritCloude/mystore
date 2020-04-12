<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="${pageContext.request.contextPath }/admin/css/Registered.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/admin/css/floatlead.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/admin/css/heade.css"
	rel="stylesheet" type="text/css">
	
<script src="${pageContext.request.contextPath }/Data/My97DatePicker/WdatePicker.js"
	type="text/javascript"></script>
<script type="text/javascript">
	function checkname() {
		var values = document.getElementById('username').value;
		if (values == "") {
			document.getElementById('uspan').style.display = 'inline';
		} else {
			document.getElementById('uspan').style.display = 'none';
		}
	};
	function checkpsw() {
		var values = document.getElementById('password').value;
		if (values == "") {
			document.getElementById('pspan').style.display = 'inline';
		} else {
			document.getElementById('pspan').style.display = 'none';
		}
	};
    function checkpwd() {
        var pwd1 = document.getElementById("password").value;
        var pwd2 = document.getElementById("rpassword").value;
        if(pwd1 != pwd2) {
            document.getElementById("rpassword").innerHTML="<font color='red'>两次密码相同</font>";
            document.getElementById("pspan").style.display = 'inline';
            document.getElementById("rpspan").style.display = 'inline';
        }else {
        	document.getElementById('rpspan').style.display = 'none';
        }
    }
</script>
<title>注册</title>
</head>
<body>
	<div class="p2">
		<ul class="album">
			<li>
				<a href="${pageContext.request.contextPath }/index.jsp">
					&nbsp; &nbsp;首页&nbsp; &nbsp;
				</a>
			</li>
			<li><a href="">&nbsp;新鲜果蔬&nbsp;</a></li>
			<li><a href="">&nbsp;健康搭配&nbsp;</a></li>
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
				<a href="留言.html">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead4.png">留言
				</a>
			</li>
		</ul>
	</div>
	<div class="ri">
		<ul id="floatlead" class="ul_dh">
			<li class="li_dh">
				<a href="login.jsp">
					<img src="${pageContext.request.contextPath }/admin/img/floatlead1.png">登录
				</a>
			</li>
			<li class="li_dh">
				<a href="">
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
	<div class="p3">
		<img src="${pageContext.request.contextPath }/admin/img/registbody.png"
			style="width: 200px; height: 60px;" />
		<hr size=6 width="94%" color=darkorange />
		<center>
			<table width="600">
				<tr>
					<td align="center" class="reg-title">成员注册</td>
				</tr>
			</table>
			<form action="${pageContext.request.contextPath }/Register" method="post">
				<table width="600" cellspacing="4" cellpadding="1">
					<tr>
						<td width="100px" class="inputTitle">
							<span class="emphasize" id="uspan">*</span>用户名
						</td>
						<td width="256px">
							<input type="text" name="username" id="username" onBlur="checkname()"/>
						</td>
					</tr>
					<tr>
						<td class="inputTitle">
							<span class="emphasize" id="pspan">!</span>密 &nbsp;码
						</td>
						<td>
							<input type="password" name="password" id="password" onBlur="checkpsw()"/>
						</td>
					</tr>
					<tr>
						<td class="inputTitle">
							<span class="emphasize" id="rpspan">!</span>确认密码
						</td>
						<td>
							<input type="password" id="rpassword" onBlur="checkpwd()"/>
						</td>
					</tr>
					<tr>
						<td class="inputTitle"> 性 &nbsp;别</td>
						<td><input type="radio" name="gender" value="男" style="height: 15px; width: 30px;"/>男
							<input type="radio" name="gender" value="女" style="height: 15px; width: 30px;"/>女
						</td>
					</tr>
					<tr>
		    			<td class="inputTitle"> 生 &nbsp;日</td>
						<td>
		    				<input type="text" name="birthday"  readonly="readonly" onclick="WdatePicker()" />
		   				</td>
		   			</tr>
					<tr>
						<td class="inputTitle">
							<span class="emphasize">*</span>电 &nbsp;话
						</td>
						<td>
							<input type="text" name="telephone"/>
						</td>
					</tr>
					<tr>
						<td class="inputTitle">角 &nbsp;色</td>
						<td height=60px>
							<select name="role" style="font-size:16px; width:90px; height:35px">
								<option value="普通用户">普通用户</option>
								<option value="VIP会员">VIP会员</option>
								<option value="钻石会员">钻石会员</option>
								<option value="管理员">管理员</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" name="bthOk" value="确定" class="button"/>
							<input type="reset" value="取消" class="button"/>
						</td>
					</tr>
				</table>
			</form>
		</center>
	</div>
</body>
</html>