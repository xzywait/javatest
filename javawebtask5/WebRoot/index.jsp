<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>



  <head>
  
  
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 
<SCRIPT LANGUAGE=javascript> 
function p_del() { 
var msg = "您真的确定要删除吗？\n\n请确认！"; 
if (confirm(msg)==true){ 
return true; 
}else{ 
return false; 
} 
} 

</SCRIPT> 

	
	
  </head>
  
  <body>
   <h4 align="center">书籍信息管理</h4>
   <a href="BookAction-list">列出所有图书</a>
   <br/><br/>
   <a href="edit.jsp">添加新的图书</a>
   <br/><br/>
   <table border="1" cellpadding="10" cellspacing="0">
   <tr>
   <th>书籍编号</th>
   <th>书名</th>
   <th>作者</th>
   <th>出版社</th>
   <th>出版日期</th>
   <th>单价</th>
   <th>操作</th>
   </tr>
   <c:forEach items="${books}" var="book">
   <tr>
   <td>${book.bid }</td>
   <td>${book.name }</td>
   <td>${book.author}</td>
   <td>${book.publisher }</td>
   <td>${book.publishdate}</td>
   <td>${book.price}</td>
   <td>
   <a href="BookAction-query?name=${book.name }">编辑</a>
   <a href="BookAction-delete?bid=${book.bid }" onclick="javascript:return p_del()">删除</a>
   </td>
   </tr>
   </c:forEach>
   </table>
  </body>
</html>
