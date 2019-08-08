package com.virtusa.vcarpooling.userprofile;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.virtusa.vcarpooling.dao.DBConnection;

public class Vcar extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		
		String oldpassword=req.getParameter("oldpassword");
		String newpassword=req.getParameter("newpassword");
		String conpass=req.getParameter("conpassword");
		try
	    {
	    	Connection con=DBConnection.getCon();
	    	PreparedStatement ps=con.prepareStatement("insert into namrata values(?,?,?)");
	    	
	    	ps.setString(1,oldpassword);
	    	ps.setString(2,newpassword);
	    	ps.setString(3,conpass);
	    	
	    	int i=ps.executeUpdate();
	    	if(i>0)
	    	{
	    		System.out.println("Inserted Successfully");
	    	}
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }
		
	}

}



































