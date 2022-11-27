package com.tsys.eklavya.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	static Connection con=null;
    public  Connection getConnectionInstance()
    {
        if (con == null) 
        	return con;
       
        return getConnection();
    }
	
	private  Connection getConnection()
    {
        try
        {
            Class.forName("org.h2.Driver");
            con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

        return con;        
    }
}
