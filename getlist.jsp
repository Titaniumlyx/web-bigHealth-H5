<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>列表页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/zebra.css">
	<script type="text/javascript">
	    $(function(){
	    $("#containerone").hide();
	    	var number = "<%=request.getAttribute("1")%>";
	    	if(number==1){
	    	alert("删除成功");
	    	$("#containerone").show();
	    	$("#container").hide();
	    	}if(number==2){
	    	alert("删除成功");
	    	$("#container").show();
	    	$("#containerone").hide();
	    	}if(number==0){
	    	alert("删除失败");
	    	$("#containerone").show();
	    	$("#container").hide();
	    	}if(number==3){
	    	alert("删除失败");
	    	$("#container").show();
	    	$("#containerone").hide();
	    	}
	        
	    });
	    function health(){
	    	$("#container").show();
	    	$("#containerone").hide();
	    };
	    function international(){
	    	$("#containerone").show();
	    	$("#container").hide();
	    };
	</script>

  </head>
  
  <body>
  <div style="margin: auto auto">
  <button onclick="health()">健康小屋</button><button onclick="international()">国际合伙人招募</button>
  </div>
  <div id="container">   
  
    <table class="zebra">
    <caption>健康小屋列表</caption>
    <thead>
    	<tr>
    		<th>公司名称</th>
    		<th>品牌名称</th>
    		<th>产品类型</th>
    		<Th>联系人</Th>
    		<th>联系电话</th>
    		<th>所在城市</th>
    		<th>操作</th>
    	</tr>
    	</thead>
    	<tbody>
    	<c:forEach items="${houst}" var="a">
    	<tr>
    		<td>${a.company}</td>
    		<Td>${a.brand}</Td>
    		<Td>${a.product}</Td>
    		<Td>${a.people}</Td>
    		<Td>${a.tel}</Td>
    		<td>${a.city}</td>
    		<td><a href="/Delservlet?id=${a.id}">删除</a></td>
    	</tr>
    	</c:forEach>
    	</tbody>
    </table>
    </div>
    <div id="containerone">   
  
    <table class="zebra">
    <caption>国际合伙人招募列表</caption>
    <thead>
    	<tr>
    		<th>姓名</th>
    		<th>电话</th>
    		<th>邮箱</th>
    		<Th>国家/地区</Th>
    		<th>操作</th>
    	</tr>
    	</thead>
    	<tbody>
    	<c:forEach items="${partner}" var="a">
    	<tr>
    		<td>${a.name}</td>
    		<Td>${a.tel}</Td>
    		<Td>${a.email}</Td>
    		<Td>${a.country}</Td>
    		<td><a href="/Deluserservlet?id=${a.id}">删除</a></td>
    	</tr>
    	</c:forEach>
    	</tbody>
    </table>
    </div>
  </body>
</html>
