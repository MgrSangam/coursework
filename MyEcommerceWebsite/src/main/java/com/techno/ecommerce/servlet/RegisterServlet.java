package com.techno.ecommerce.servlet;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techno.ecommerce.controller.DatabaseController;
import com.techno.ecommerce.model.CustomerModel;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/RegisterServlet" })
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DatabaseController dbController = new DatabaseController();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userName = request.getParameter("username");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String dobString = request.getParameter("birthday");
		LocalDate dob = LocalDate.parse(dobString);
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phone");
		String password = request.getParameter("password");

		
		CustomerModel customerModel = new CustomerModel (firstName, lastName, dob, email, phoneNumber, userName, password);
		
		
		HttpSession messageSession =request.getSession();

		
		int result = dbController.addCustomer(customerModel);
	
		if (result == 1) {
			messageSession.setAttribute("message", "Registration Successfull !!");	
			response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
			
		}else  {
		
			messageSession.setAttribute("message", "Email or Username already in use.");
			response.sendRedirect(request.getContextPath() + "/pages/registration.jsp");
			
			
		}
		
	}
	
}
