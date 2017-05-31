package com.abdulrahman.javaNrd.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abdulrahman.javaNrd.INSERT.INSERTDATA;

/**
 * Servlet implementation class COMORDER
 */
@WebServlet("/order")
public class COMORDER extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	
	
	protected void doPost(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException{
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
	
		
		// declared vaules .. 
		String _id = req.getParameter("id");
		String _model = req.getParameter("model");
		String _Color = req.getParameter("color");
		String _Seat = req.getParameter("seat");
		String _Cylinder = req.getParameter("cylinder");
		String _Date = req.getParameter("date");
		
		
		// This important  field because we set this all data under this value . 
		req.setAttribute("customer_id",req.getParameter("customer_id"));
		String cu = (String) req.getAttribute("customer_id") ;
		
		
		if(req.getParameter("customer_id") != null){
		
			try{
				INSERTDATA insert = new INSERTDATA();
				insert.insertDataInfoCar(_id, _model, _Color, _Seat, _Cylinder, _Date, cu);
				Thread wait = new Thread();
				wait.sleep(3000);
				 res.sendRedirect("./index.jsp");
			}catch(Exception ex){
				out.println("We cannot take your order this moment please try agine later .");
				out.print(ex.getMessage());
			}
			
					
				
		}else{
			out.print("null values :  Please check the Buy page . ");
		}
		System.out.println(cu);
		
		
	}

}
