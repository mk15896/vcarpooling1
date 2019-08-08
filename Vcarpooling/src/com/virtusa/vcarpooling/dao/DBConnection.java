package com.virtusa.vcarpooling.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
	static Connection con=null;
	static
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vcarpooling","m123");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	public static Connection getCon()
	{
		return con;
	}

}
