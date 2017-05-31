<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="com.abdulrahman.javaNrd.Servlets.CheckOrder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--  BootStrap .-->
<link href="${pageContext.request.contextPath }/asst/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/asst/css/checkPage.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body  >
	<div class="container">
		<h1 class="text-center" > Check order  </h1>
		<div class="form-group">
				<form action="${pageContext.request.contextPath }/check" method="post" >
					<label >Please Enter your ID . </label>
					<input style="margin-bottom:20px;" teyp="text" name="customer_id" class="form-control" placeholder="EX:1025000" >
					<button type="submit" class="btn btn-primary btn-block" onclick="showData()">Check order</button>
				</form>
		
		</div>
	
	</div>
		
</body>
</html>