package com.abdulrahman.javaNrd.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abdulrahman.javaNrd.INSERT.*;
@WebServlet("/buy")
public class Buy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		
		PrintWriter out = res.getWriter();
		
		Integer _Customer_id = Integer.parseInt(req.getParameter("customer_id")) ; /* Convert To Int  _Customer_id_int = Integer.parseInt(_Customer_id);*/
		String _FirstName = req.getParameter("firstName");
		String _LastName = req.getParameter("lastName");
		String _Email = req.getParameter("email");
		int _Phone = Integer.parseInt(req.getParameter("phone")) ;  			/* Convert to int Integer.parseInt(_Phone);*/
		String _Payment = req.getParameter("payment");
		
		
		//setAttribute 
		req.setAttribute("customer_id", req.getParameter("customer_id"));
	
		// Call INsertDataInfoCar class
			INSERTDATA insert = new INSERTDATA();
			
			insert.insertDataCarTable(_Customer_id, _FirstName, _LastName, _Email, _Phone, _Payment);
		
			//res.sendRedirect("./views/complete-order.jsp");
		
		 req.getRequestDispatcher("./views/complete-order.jsp").forward(req, res);
		
		
		
		}
	

}
