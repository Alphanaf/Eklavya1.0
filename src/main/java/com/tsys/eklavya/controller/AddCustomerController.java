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


public class AddCustomerController extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dao db=new Dao();
		response.setContentType("text/html");   
		PrintWriter pw = response.getWriter();  
		try {
			List<CustomerDetails> custList= db.getTransactions();
			request.setAttribute("custList", custList);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		
		String PaymentMessage=(String) request.getAttribute("paymentsuccess");
		if(PaymentMessage!= null) {
		
		   out.println("<script type=\"text/javascript\">");
	       out.println("alert('"+PaymentMessage+" Ruppes');");
	       out.println("</script>");
		}else {
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('Customer added SuccessFully');");
		       out.println("</script>");
		}
	RequestDispatcher rd=request.getRequestDispatcher("index1.jsp");  
	        rd.include(request, response);  
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("IN ADD POST");
		 response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		
		Dao db=new Dao();
		
	
		String action=request.getParameter("addCustomer");
		
		if(action.equals("Add")) {
		String userName = request.getParameter("userName");
		String cardType = request.getParameter("cardType");
		String thumb = "thumb";
		int userPin = Integer.parseInt(request.getParameter("userPin"));
		Long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		
		CustomerDetails cust = new CustomerDetails();
		cust.setUserName(userName);
		cust.setCardNumber(cardNumber);
		cust.setCardType(cardType);
		cust.setUserPin(userPin);
		cust.setThumb(thumb);
		try {
			db.insertUserInfo(cust);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("success", "success");
			doGet(request,response);
        
        out.close();  
		}else {
			String userName = "Sid";
			int amount = Integer.parseInt(request.getParameter("amountT"));
			String cardType = request.getParameter("cardTypeT");
			CustomerDetails cust=new CustomerDetails();
			cust.setUserName(userName);
			cust.setAmount(amount);
			cust.setCardType(cardType);
			try {
				db.addTransactions(cust);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String payment="Received "+amount;
			request.setAttribute("paymentsuccess", payment);
			doGet(request,response);
		}
	}
}
