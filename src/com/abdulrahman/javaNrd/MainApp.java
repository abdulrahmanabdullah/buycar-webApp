/**
 *  This Main class to run our app . 
 */
package com.abdulrahman.javaNrd;



import com.abdulrahman.javaNrd.INSERT.INSERTDATA;
import com.abdulrahman.javaNrd.jdbc.SHOWDATA;

/**
 * @author abdulrahmanAbdullah 
 *
 */
public class MainApp {
	

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try{
			
			INSERTDATA insert = new INSERTDATA();
			
			insert.insertDataCarTable(3, "adf", "ffff", "te@te.com",3433,"cashed");
			SHOWDATA data = new SHOWDATA();
			
			data.startConnect();
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

}
