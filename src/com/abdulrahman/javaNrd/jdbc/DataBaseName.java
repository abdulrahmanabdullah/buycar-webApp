package com.abdulrahman.javaNrd.jdbc;

public class DataBaseName {
	
	// get dataBase name . 
	
	private static String dataBase ;
	
	private DataBaseName(String db){
		dataBase =db ;
	}
	
	//Static-factory-method.. 
	
	public static DataBaseName setDataBase(String db){
		return new DataBaseName(db);
	}
	
	public  String getDataBase(){
		return dataBase ;
	}
	
	

}
