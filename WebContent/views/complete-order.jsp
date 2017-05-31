<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%@ page import="com.abdulrahman.javaNrd.Servlets.Buy" %>
   <%@ page import="java.util.Date" %>
   <%@ page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- BootStrap File  -->
<link href="${pageContext.request.contextPath}/asst/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/asst/css/main.css" rel="stylesheet">
<title>Complete order</title>
</head>
<body>
<!--   Date -->
<%!
		Date date = new Date();
        		SimpleDateFormat setDate = new SimpleDateFormat(" yyyy/MM/dd HH:mm");

%>

      <div class="container">

      			<div class="box">
      					<h2 class="text-center"> Ok , What's car you want  </h2>


			          <div class="form-group" id="hiddenForm">
							              <form action="${pageContext.request.contextPath }/order" method="post" >
							                    <table class="table table-bordered">
							                        <thead>
							                          <tr>
							                            <th>Id</th>
							                            <th>Model</th>
							                            <th>Color</th>
							                            <th>Seats</th>
							                            <th>Cylinder</th>
							                            <th>Data-order</th>
							                            <th>Customer_id</th>
							                          </tr>
							                        </thead>
							                        <tbody>
							                          <th>
							                            <input type="text" name="id" class="form-control">

							                          </th>

							                          <th>
							                            <input type="text" name="model"  class="form-control">
							                          </th>

							                          <th>
							                            <input type="text" name="color"  class="form-control">
							                          </th>

							                          <th>
							                            <input type="text" name="seat"  class="form-control">
							                          </th>

							                          <th>
							                            <input type="text" name="cylinder"  class="form-control">
							                          </th>

							                          <th>

							                            <input type="text" name="date"   class="form-control"  value="<%= setDate.format(date) %>" >
							                          </th>

							                          <th>
							                            <input type="text" name="customer_id" value="${param.customer_id}"  class="form-control">
							                          </th>
							                        </tbody>
							                    </table>

							                    <input type="submit"  value="send order" class="btn btn-primary btn-block"
							                    	onclick="showProgress()">


							            </form>


			          </div>
			          							              <img src="./asst/img/ring-alt.svg" id="loader" style="display: none;" class="img-responsive " >
			     </div>
      </div>
<script>
	function showProgress(){
		 document.getElementById('loader').style.display = 'block';
		document.getElementById("hiddenForm").style.display='none';
		
	}

</script>
</body>
</html>
