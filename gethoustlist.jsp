<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gethoustlist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
		function aaa(){
			alert("亲，已经被对接过了哦~~");
		}
	</script>
  </head>
  
  <body>
    <table border="1px">
    	<tr>
    		<td>序号</td>
    		<td>公司名</td>
    		<td>品牌名</td>
    		<td>产品类型</td>
    		<td>联系人</td>
    		<td>联系电话</td>
    		<td>所在城市</td>
    		<td>填表日期</td>
    		<td>对接状态</td>
    		<td>对接人</td>
    		<td>备注信息</td>
    		<td>操作</td>
    	</tr>
    	
    	<c:forEach items="${houst}" var="a">
    	<tr>
    		<td>${a.id}</td> 
    		<td>${a.company}</td>
    		<td>${a.brand}</td>
    		<td>${a.product}</td>
    		<td>${a.people}</td>
    		<td>${a.tel}</td>
    		<td>${a.city}</td>
    		<td>${a.riqi}</td>
    		<td>${a.status}</td>
    		<td>${a.pickbody}</td>
    		<td>${a.remarks}</td>
    		<td>
    		
    		<c:if test="${a.status=='未对接' }">
    			<button><a href="/uphoust?id=${a.id}">更改对接状态</a></button>
    		</c:if>
    		<c:if test="${a.status=='已对接' }">
    			<button onclick="aaa()">更改对接状态</button>
    		</c:if>
    		
    		</td>
    		</tr>
    	</c:forEach>
    	
    </table>
  </body>
</html>
