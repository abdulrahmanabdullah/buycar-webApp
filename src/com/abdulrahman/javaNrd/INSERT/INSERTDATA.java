package com.abdulrahman.javaNrd.INSERT;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import com.abdulrahman.javaNrd.jdbc.ConnectDataBase;

public class INSERTDATA {

	// What We Need ? 
	// Connection And 
	// PreparedStatement .. 
	// executeUpdate(String sql).
	
	
	//First declare variable to ConnectDataBase class  And get Connection . 
	

	private Connection conn = null ;
	private PreparedStatement state = null  ; 
	
	
	
	public void insertDataCarTable(int customer_id , String firstName,String lastName,String email,int phone,String payment){
		
		try{
			
			conn = ConnectDataBase.getConnetion();
			
			String sql = "insert into info (customer_id,firstName,lastName,email,phone,payment) values(?,?,?,?,?,?)";
			state = conn.prepareStatement(sql);
			
			//Set values . 
			state.setInt(1, customer_id);
			state.setString(2, firstName);
			state.setString(3, lastName);
			state.setString(4, email);
			state.setInt(5, phone);
			state.setString(6, payment);
		
			// update table .. 
			state.executeUpdate();
			
			
		}catch(SQLException ex){
			System.out.println("Error when insert to info table -> dbname = car ");
			ex.printStackTrace();
		}
		
	}
	
	public void insertDataInfoCar(String id , String model , String color , String seat , String cylinder  , String date , String customer_id ){
		
		try{
			conn = ConnectDataBase.getConnetion();
			String sql = "insert into infoCar (id,model,color,seat,cylinder,date_order,customer_id)"
					+ "values"
					+ "(?,?,?,?,?,?,?)";
					
			state = conn.prepareStatement(sql);
			
			// set data to database .. 
			state.setString(1, id);
			state.setString(2, model);
			state.setString(3, color);
			state.setString(4, seat);
			state.setString(5, cylinder);
			state.setString(6, date);
			state.setString(7, customer_id);
			state.executeUpdate();
		}catch(SQLException ex){
			System.out.println("Error when insert to infoCar table -> dbname = car ");
			ex.printStackTrace();
		}
		
		
		
	}
	
	
	
}
