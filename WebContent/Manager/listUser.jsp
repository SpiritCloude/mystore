<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户显示</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/FindByName" method="post">
		<table align="center" >
			<tr>
				<td>
					姓名：<input type="text" name="username"/></td>
				<td>
					类别：
					<select name="type" >
						<option value="">---请选择---</option>
						<option value="普通用户">普通用户</option>
						<option value="VIP会员">VIP会员</option>
						<option value="钻石会员">钻石会员</option>
						<option value="管理员">管理员</option>
					</select>
				</td>
				<td>
				<input type="submit"  value="查询"/>
				</td>
			</tr>
		</table>
	</form>
	<br/>
	<table align="center" border="1" rules="all" width="900px">
		<tr>
			<th>序号</th>
			<th>姓名</th>
			<th>密码</th>
			<th>生日</th>
			<th>性别</th>
			<th>电话</th>
			<th>角色</th>
			<th>修改</th>
		</tr>
		<c:forEach var="c"  items="${ requestScope.page.beanList }" varStatus="status" >
			<tr align="center">
				<td>${ status.count }</td>	
				<td>${ c.username }</td>	
				<td>${ c.password }</td>
				<td>${ c.birthday }</td>
				<td>${ c.gender }</td>
				<td>${ c.telephone }</td>
				<td>${ c.role }</td>		
				<td>
					<a href="${pageContext.request.contextPath }/FindUser?id=${ c.id }" > 编辑</a>
				  | <a href="${pageContext.request.contextPath }/DeleteUser?id=${ c.id }" onclick="return confirm('确定删除吗？')" >删除</a>
				
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<center>
		第${page.pageCode }页/共${page.totalPage }页
		<a href="${pageContext.request.contextPath }/ListUser?page=1">首页</a>
		<c:if test="${page.pageCode > 1 }">
			<a href="${pageContext.request.contextPath }/ListUser?page=${page.pageCode - 1}">上一页</a>
		</c:if>
		
		<c:choose>
			<c:when test="${page.totalPage <= 6 }">
				<c:set var="begin" value="1"></c:set>
				<c:set var="end" value="${page.totalPage }"></c:set>
			</c:when>
			<c:otherwise>
				<c:set var="begin" value="${page.totalPage - 3 }"></c:set>
				<c:set var="end" value="${page.totalPage + 2 }"></c:set>
				<%-- 头溢 --%>
				<c:if test="begin < 1" >
					<c:set var="begin" value="1"></c:set>
					<c:set var="end" value="6"></c:set>
				</c:if>
				
				<c:if test="${end > page.totalPage }" >
					<c:set var="begin" value="${ page.totalPage - 5 }"></c:set>
					<c:set var="end" value="${ page.totalPage }"></c:set>
				</c:if>
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="i" begin="${begin }" end="${end }">
			<a href="${pageContext.request.contextPath }/ListUser?page=${i}"> ${ i } </a>
		</c:forEach>
		
		<c:if test="${page.pageCode < page.totalPage }">
			<a href="${pageContext.request.contextPath }/ListUser?page=${page.pageCode + 1}">下一页</a>
		</c:if>
	</center>
	
</body>
</html>