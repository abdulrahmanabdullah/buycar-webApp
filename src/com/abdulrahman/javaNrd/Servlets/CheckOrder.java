package com.abdulrahman.javaNrd.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abdulrahman.javaNrd.jdbc.ConnectDataBase;
import com.abdulrahman.javaNrd.jdbc.SHOWDATA;

/**
 * Servlet implementation class CheckOrder
 */
@WebServlet("/check")
public class CheckOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection =null ;
	PreparedStatement state= null ;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out  = res.getWriter();
		
	             	// Test connection .. OK .
					connection= ConnectDataBase.getConnetion();
					 // id for customer , this parameter pass to database and bring the order . 
					String check_id = req.getParameter("customer_id") ;
		try{
			//TODO: check if customer id includes any char , and return error . DONE 
			if(checkCustomerid(req.getParameter("customer_id"))){
					out.println("yes");
					// SQL statement .. OK . 
					String sql ="select firstName,lastName,email,phone,payment,model,color,seat,cylinder,date_order from info natural join infoCar where info.customer_id =' "+check_id+" ' ";
					// declared statement  , And Passing the SQL statement   .. OK .
					state = connection.prepareStatement(sql);		
					// Fetch result , And save inside variable to set attribute for passing to any there page .. OK  
					ResultSet result = state.executeQuery();
					while(result.next()){
							//Fetch Data from  First Table -> info .. OK  
							String _FirstName = result.getString("firstName");
							req.setAttribute("firstName",result.getString("firstName"));
							String _LastName = result.getString("lastName");
							req.setAttribute("lastName",_LastName);
							String _Email = result.getString("email");
							req.setAttribute("email",_Email);
							String _Phone = result.getString("phone");
							req.setAttribute("phone",_Phone);
							String _Payment = result.getString("payment");
							req.setAttribute("payment",_Payment);
							
							// fetch Data from Second Table -> infoCar  .. OK  
							String _Model = result.getString("model");
							req.setAttribute("model",_Model);
							String _Color = result.getString("color");
							req.setAttribute("color", _Color);
							String _Seat = result.getString("seat");
							req.setAttribute("seat", _Seat);
							String _Cylinder = result.getString("cylinder");
							req.setAttribute("cylinder", _Cylinder);
							String _Date = result.getString("date_order");
							req.setAttribute("date",_Date);
							
							
							RequestDispatcher dispatcher = req.getRequestDispatcher("/views/show-order.jsp");
							dispatcher.forward(req, res);
							}
					connection.commit();
					connection.close();
					state.close();
					
			}else{
				out.print("Your ID must be only numbers .  ");
			}
			
				//TODO: assume user input error id  , OR wrong id numbers OR id out the range of database . 
			
				}
		
		// Test if sql statement wrong or right .. OK . 
		catch(Exception ex){
			out.print("Error CheckOrder class ");
			System.out.println("Error CheckOrder class");
			ex.printStackTrace();
		}
		}
	
	// This boolean method for check if user insert any chars  . 
	private boolean checkCustomerid(String id){
		boolean customerID = false ;
		//regex for set numbers .. 
		String checkID ="\\d+";
		customerID = id.matches(checkID);
		if(customerID){
			return true ;
		}
		
		return false;
	}


}
