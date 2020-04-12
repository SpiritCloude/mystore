<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5; url=${pageContext.request.contextPath }/Manager/logo.jsp">
<title>head</title>
</head>
<body>
	<div align="center">
		<h1>欢迎您来到后台管理</h1>
		<br/>
		<h4>
			<c:if test="${sessionScope.sUser!=null}">		
				<a href="${pageContext.request.contextPath }/ListUser" target="main">查询</a>
				| <a href="${pageContext.request.contextPath }/ListUser" target="main">修改</a>
				| <a href="${pageContext.request.contextPath }/ListUser" target="main">删除</a>
		   </c:if>
		</h4>
	</div>
</body>
</html>