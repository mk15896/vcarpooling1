package com.virtusa.vcarpooling.login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.virtusa.vcarpooling.dao.*;

public class Login extends HttpServlet
{

	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		String name=req.getParameter("username");
		String pass=req.getParameter("password");
		
		try
		{
			Connection con=DBConnection.getCon();
	    	PreparedStatement ps=con.prepareStatement("insert into login values(?,?)");
	    	ps.setString(1,name);
	    	ps.setString(2,pass);
	    	
	    	int i=ps.executeUpdate();
	    	if(i>0)
	    	{
	    		System.out.println("Registered Successfully");
	    	}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}
}
