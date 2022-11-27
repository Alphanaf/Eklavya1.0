package com.tsys.eklavya.database;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import com.tsys.eklavya.model.CustomerDetails;

public class Dao {
	static DatabaseConnection db=new DatabaseConnection();

public static void stopConnection(Connection con) {
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public void insertUserInfo(CustomerDetails custInfo) throws ClassNotFoundException {
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.addUser);
		pstmt.setString(1, custInfo.getUserName());
		pstmt.setInt(2, custInfo.getUserPin());
		pstmt.setLong(3, custInfo.getCardNumber());
		pstmt.setString(4, custInfo.getThumb());
		pstmt.setString(5, custInfo.getCardType());
		
		 pstmt.execute();
		System.out.println("Inserted records into the table...");   
		
		stopConnection(conn);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public void addTransactions(CustomerDetails custInfo) throws ClassNotFoundException {
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.addTransactions);
		
		pstmt.setInt(1, custInfo.getAmount());
		pstmt.setString(2, custInfo.getUserName());
		pstmt.setString(3, custInfo.getCardType());
		pstmt.execute();
		System.out.println("Inserted records into the Transaction table...");   
		stopConnection(conn);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public  List<CustomerDetails> getTransactions() throws ClassNotFoundException {
	List<CustomerDetails> custList=new ArrayList<CustomerDetails>();
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.getTransactions);
		
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next()) {
			CustomerDetails cust=new CustomerDetails();
			  String userName = rs.getString("userName");
		        int amount = rs.getInt("amount");
		        String cardType = rs.getString("cardtype");
		        cust.setUserName(userName);
		        cust.setAmount(amount);
		        cust.setCardType(cardType);
		        custList.add(cust);
		}
		stopConnection(conn);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return custList;
	
}

	//FileInputStream fin = new FileInputStream("C:\\Users\\91976\\Downloads\\IMG_7138.JPG");
	//cust.setThumb(fin);
	

}
