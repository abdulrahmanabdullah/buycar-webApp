<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ page import="com.abdulrahman.javaNrd.Servlets.CheckOrder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/asst/css/bootstrap.min.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath }/asst/css/checkPage.css" rel="stylesheet" >
</head>
<body>
		<div class="container">
				<div class="row">
						<div class="col-md-6"  id="box1">
								<h4 class="text-center"> Main info </h4>
									<dl>
											<dt>First Name : </dt>
													<dd>&nbsp <%= request.getAttribute("firstName") %> </dd>
											<dt>Last Name : </dt>
													 <dd >&nbsp <%= request.getAttribute("lastName") %></dd>
											<dt> Email : </dt> <dd>&nbsp <%= request.getAttribute("email") %></dd>
											<dt>phone :	 </dt> <dd>&nbsp <%= request.getAttribute("phone") %></dd>
											<dt  id="box1"> Payment : </dt> <dd>&nbsp <%= request.getAttribute("payment") %></dd>
									</dl>
						
						</div>
						<div class="col-md-6">
							<h4 class="text-center"> your order </h4>
	<br>
	Model : <%= request.getAttribute("model") %>	
	<br>
	Color : <%= request.getAttribute("color") %>
	<br>
	Seats : <%= request.getAttribute("seat") %>
	<br>
	Cylinder : <%= request.getAttribute("cylinder") %>
	<br>
	Date order  : 	<%= request.getAttribute("date") %>
						
						</div>
						
				</div>
			<a href="#"><button  class="btn btn-primary btn-block">HomePage</button></a>
		</div>
		
		
</body>
</html>