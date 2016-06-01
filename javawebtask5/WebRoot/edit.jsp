<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'edit.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script  type="text/javascript">
function regIsDate() 
{ 
var str_pwd = document.getElementById("publishdate").value;
var reg = new RegExp("^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$"); 
if(!reg.test(str_pwd){
alert("请注意日期格式");
}
 
} 
</script>
	</head>

	<body>
	
		
		<br>
		<form method="post" action="BookAction-save?isedit=${isedit }">
		<table>
		<tr>
		<td>书籍号</td>
		<td><input type="text" name="bid" value="${book.bid}" />
		
		</td>
			
		</tr>
		<tr>
		<td>书名</td>
		<td><input type="text" name="name" value="${book.name}"></td>
		</tr>
		<tr>
		<td>作者</td>
		<td><input type="text" name="author" value="${book.author}"></td>
		</tr>
		<tr>
		<td>出版社</td>
		<td><input type="text" name="publisher" value="${book.publisher}"></td>
		</tr><tr>
		<td>出版日期</td>
		<td><input type="text" id ="publishdate" name="publishdate" value="${book.publishdate}" onblur="javascript:return regIsDate()"></td>
		</tr><tr>
		<td>价格</td>
		<td><input type="text" name="price" value="${book.price}"></td>
		</tr>
		<tr>
		<td colspan="2"><input type="submit" onblur="javascript:return regIsDate()" value="确定"/></td>
		</tr>
		</table>
		</form>
	</body>
</html>
