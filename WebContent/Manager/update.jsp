<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户显示</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/Update" method="post">
		<!--  隐藏域 -->
		<input type="hidden" name="id" value="${ c.id}" />
		<table align="center" border="1" rules="all" width="600px">
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" value="${c.username}" /></td>
			</tr>
			<tr>
				<td>密&nbsp; 码:</td>
				<td><input type="text" name="password" value="${c.password}" /></td>
			</tr>
			<tr>
				<td>性 &nbsp;别:</td>
				<td><input type="radio" name="gender" value="男" <c:if test="${c.gender eq '男'}">checked</c:if> />男
					<input type="radio" name="gender" value="女" <c:if test="${c.gender eq '女'}">checked</c:if> />女</td>
			</tr>
			<tr>
				<td>电话号:</td>
				<td><input type="text" name="telephone" value="${c.telephone}" /></td>
			</tr>
			<tr>
				<td>生&nbsp;日:</td>
				<td><input type="text" name="birthday" value="${c.birthday}" /></td>
			</tr>
			<tr>
				<td class="inputTitle">角 &nbsp;色</td>
				<td height=60px>
					<select name="role" style="font-size:16px; width:90px; height:35px">
						<option value="普通用户" <c:if test="${c.role eq '普通用户'}">selected</c:if> >普通用户</option>
						<option value="VIP会员" <c:if test="${c.role eq 'VIP会员'}">selected</c:if> >VIP会员</option>
						<option value="钻石会员" <c:if test="${c.role eq '钻石会员'}">selected</c:if> >钻石会员</option>
						<option value="管理员" <c:if test="${c.role eq '管理员'}">selected</c:if> >管理员</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<button type="submit"style="font-size: 18px; width: 160px; height: 40px">
						修 &nbsp;&nbsp; 改</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>