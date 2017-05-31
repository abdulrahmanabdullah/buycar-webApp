package com.abdulrahman.javaNrd.jdbc;
import java.sql.* ;
public class SHOWDATA {
	
	
	private Connection connection = null ; 
	private Statement statement = null ;
	private ResultSet result = null  ;
	
	// Call ConnectDataBase Class . 
	
	public void startConnect(){
		
		try{
		connection = ConnectDataBase.getConnetion();
		
		// Set statement 
		statement = connection.createStatement();
		String sql = "select * from info";
		
		
		//SHow statement . 
		result = statement.executeQuery(sql);
		
		while(result.next()){
			System.out.println("student_id = " + result.getString("customer_id") + "> name <  " +result.getString("firstName"));
			
		}
		}
		
		catch(SQLException sq){
			System.out.print("Error inside  " + SHOWDATA.class);
			sq.printStackTrace();
		}
	}
	

	
	
	
	
	

}
