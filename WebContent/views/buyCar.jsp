<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.abdulrahman.javaNrd.Servlets.Buy" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../asst/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/asst/css/main.css"  rel="stylesheet">
<title>Main info</title>
</head>
<body>
  <%-- First Create form , And table .  --%>

  <div class="container">
  
  <div class="box">
		    <h2 class="text-center"> Information For contact Customer . </h2>
		    <%-- Form Bootstrap ..   --%>
		        <div class="form-group ">
		                <form class="" action="${pageContext.request.contextPath }/buy" method="post">
		                <table class="table table-bordered">
		                  <thead>
		                    <tr>
		                      <th>Customer_id</th>
		                      <th>firstName</th>
		                      <th>lastName</th>
		                      <th>email</th>
		                      <th>phone</th>
		                      <th>Payment</th>
		                    </tr>
		                  </thead>
		                  <tbody>
		                    <td>
		                      <input class="form-control" type="text" name="customer_id" >
		                    </td>
		                    <td>
		                      <input class="form-control" type="text" name="firstName" value="">
		                    </td>
		                    <td>
		                      <input class="form-control"  type="text" name="lastName" value="">
		                    </td>
		
		                    <td>
		                      <input class="form-control"  type="text" name="email" value="">
		                    </td>
		                    <td>
		                      <input class="form-control"  type="text" name="phone" value="">
		                    </td>
		
		                    <td>
		                    	<input class="form-control"  type="text" name="payment" >
		                    </td>
		                  </tbody>
		                </table>
		
		                <button type="submit" name="compete"   class="btn btn-primary btn-block ">Complete order </button>
		            </form>
		</div>
        </div>
      </div>
</body>
</html>
