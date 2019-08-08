package com.virtusa.vcarpooling.pooltype;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.virtusa.vcarpooling.dao.DBConnection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import com.virtusa.vcarpooling.dao.*;

public class PoolType extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		
		String usertype=req.getParameter("usertype");
		String Origin=req.getParameter("origin");
		String Destination=req.getParameter("destination");
		String Start_time=req.getParameter("start");
		String End_time=req.getParameter("end");
		String Contact=req.getParameter("contact");
		
		try{
			Connection con=DBConnection.getCon();
	    	PreparedStatement ps=con.prepareStatement("insert into pooltype values(?,?,?,?,?,?)");
	    	
	    	ps.setString(1,usertype);
	    	ps.setString(2,Origin);
	    	ps.setString(3,Destination);
	    	ps.setString(4,Start_time);
	    	ps.setString(5,End_time);
	    	ps.setString(6,Contact);
	    	
	    	int i=ps.executeUpdate();
	    	if(i>0)
	    	{
	    		System.out.println("Created Pool Successfully");
	    	}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
