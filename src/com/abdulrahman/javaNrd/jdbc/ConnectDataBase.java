package com.abdulrahman.javaNrd.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDataBase {
	
	/*
	 * Connection 
	 * DrivereMangaer 
	 * 
	 * 
	 * Done . 
	 * */
	
	
	//Pass DataBase Name to url . 
	public static String intailz(){
		DataBaseName name =  DataBaseName.setDataBase("car");
		 
		// String dataBase = DataBaseName.getDataBase();
		 
		 String n = name.getDataBase();
		 
		 return n ;
	}
	
	
	
	// declared argument  for connection to database . 
	final static String user = "root";
	final static String pass = "freedom";
	
	// This line for declared DataBase name and call it . 
	static String database = intailz();
	
	final static String  urlDataBase = "jdbc:mysql://localhost:3306/"+database+"?useSSL=false";
	static Connection connection  = null ;
	
	
	public static Connection getConnetion(){
		try{
			
			
			//check if class exist or Not . 
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(urlDataBase,user,pass);
			
			
		}
			
		catch(ClassNotFoundException ex){
				System.out.println("Class connection to jdbc not found ");
				//ex.printStackTrace();
			}
		
		
		
		catch(SQLException e){
			System.out.println("Faield to Connection ");
			//e.printStackTrace();
		}
		
		return connection ;
	}

}
