package com.menatwork.paperback_backend.test;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class DBConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection con=getConnection();
		try {
			PreparedStatement pst=(PreparedStatement) con.prepareStatement("insert into  catagory(name,description,image_url,is_active) values(?,?,?,?)");
            pst.setString(1,"spring");		
            pst.setString(2,"spring is a frame work of java java ");		
            pst.setString(3,"adjava.jpg");		
            pst.setBoolean(4, true);
            pst.execute();

		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public static Connection getConnection(){
		  Connection con = null;
		 
		  try {
			  Class.forName("com.mysql.jdbc.Driver");//loading DB drivers
			
			 con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/paperback","root","7032533789");
			System.out.println("connection established");
			return con;
		  } catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
				System.out.println("error in Dbconnection");
				return con;
				
				
		}
	}

}

