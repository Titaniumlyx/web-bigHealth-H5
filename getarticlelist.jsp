<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文章页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <table border="1px">
    	<tr>
    		<td>
    			<a href="addarticle.html"><input type="button" value="添加" id="add"></a>
    		</td>
    	</tr>
    	<tr>
    		<td>序号</td>
    		<td>文章标题</td>
    		<td>文章图片</td>
    		<td>上传时间</td>
    		<td>作者</td>
    		<td>文章</td>
    		<td>操作</td>
    	</tr>
    	
    	<c:forEach items="${atricle}" var="a">
    	<tr>
    		<td>${a.id}</td> 
    		<td>${a.wenzhang}</td>
    		<td>${a.img}</td>
    		<td>${a.time}</td>
    		<td>${a.outher}</td>
    		<td>${a.title}</td>
    		<td>
    			<input type="button" id="del" value="删除">
    			<input type="button" id="upd" value="修改">
    		</td>
    		</tr>
    	</c:forEach>
    	
    </table>
  </body>
</html>
