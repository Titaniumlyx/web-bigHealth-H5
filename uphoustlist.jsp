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
    
    <title>对接信息页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		$(function(){
			$(".save").click(function(){
				//alert("保存");
				 var ids=$("#ids").val();
				 var company=$("#company").val();
				 var brand=$("#brand").val();
				 var product=$("#product").val();
				 var people=$("#people").val();
				 var tel=$("#tel").val();
				 var city=$("#city").val();
				 var riqi=$("#riqi").val();
				 var status=$("#status option:selected").val();
				 var pickbody=$("#pickbody").val();
				 var remarks=encodeURI($("#remarks").val());
			//alert(ids+","+company+","+brand+","+product+","+people+","+tel+","+city+","+riqi+","+status+","+pickbody+","+remarks);
				 $.post(
				 	"/uphoustlist",
				 	{
				 	ids:ids,
				 	status:status,
				 	pickbody:pickbody,
				 	remarks:remarks
				 	},
				 	function(obj){
				 		if(obj==1){
				 			alert("对接提交成功");
				 			location.href="/Healthzhaoservlet";
				 		}
				 	},"json"
				 );
			});
		});
	</script>
  </head>
  
  <body>
  	<table border="1px">
 		<c:forEach items="${houst }" var="a">
  		<tr>
  			<td>序号</td>
  			<td>${a.id }
  				<input type="hidden" id="ids" value="${a.id }">
  			</td>
  		</tr>
  		<tr>
  		    <td>公司名</td>
  			<td>
  				${a.company }
  			</td> 
  		</tr>
  		<tr>    	
  			<td>品牌名</td>
  			<td>
  				${a.brand }
  			</td>
  		</tr>
  		<tr>
  		    <td>产品类型</td>
  			<td>
  				${a.product }
  			</td>
  		</tr>
  		<tr>
  		    <td>联系人</td>
  			<td>
  				${a.people }
  			</td>
  		</tr>
  		<tr>
  		    <td>联系电话</td>
  			<td>
  				${a.tel }
  			</td>
  		</tr>
  		<tr>
  		    <td>所在城市</td>
  			<td>
  				${a.city }
  			</td>
  		</tr>
  		<tr>
  		    <td>填表日期</td>
  			<td>
  				${a.riqi }
  			</td>
  		</tr>
  		<tr>
  		    <td>对接状态</td>
  			<td>
  				<select id="status">
  					<option value="未对接">请选择</option>
  					<option value="已对接">已对接</option>
  					<option value="未对接">未对接</option>
  				</select>
  			</td>
  		</tr>
  		<tr>
  		    <td>对接人</td>
  			<td>
  				<input type="text" id="pickbody" value="${a.pickbody }">
  			</td>
  		</tr>
  		<tr>
  		    <td>备注信息</td>
  			<td>
  				<input type="text" id="remarks" value="${a.remarks }">
  			</td>
  		</tr>
  		<tr>
  		    <td>操作</td>
  			<td><input type="button" class="save" value="保存" ></td>
  		</tr>
  		</c:forEach>
  	</table>
  </body>
</html>