package com.tsys.eklavya.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tsys.eklavya.database.Dao;
import com.tsys.eklavya.model.CustomerDetails;

public class HomeController extends HttpServlet {
private static final long serialVersionUID = 1L;

	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	System.out.println("In HOme");
	Dao db=new Dao();
	try {
		List<CustomerDetails> custList= db.getTransactions();
		request.setAttribute("custList", custList);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	response.setContentType("text/html");  
	RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");  
    rd.forward(request, response); 
	
}
	}

