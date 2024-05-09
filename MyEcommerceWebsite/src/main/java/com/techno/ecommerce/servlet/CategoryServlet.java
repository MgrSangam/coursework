package com.techno.ecommerce.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techno.ecommerce.controller.CategoryController;
import com.techno.ecommerce.model.CategoryModel;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	CategoryController ccController = new CategoryController();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
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
		String categoryName = request.getParameter("categoryname");
		String categoryDescription = request.getParameter("categorydesc");
		
		CategoryModel categoryModel = new CategoryModel(categoryName, categoryDescription);
		
		HttpSession messageSession = request.getSession();
		
		int result = ccController.addCategory(categoryModel);
		
		if (result == 1 ) {
			messageSession.setAttribute("CategoryMessage", "Category Added Successfully !! ");
			response.sendRedirect(request.getContextPath() + "/pages/admin.jsp");
		}else {
			messageSession.setAttribute("CategoryMessage", "Category Already added.");
			response.sendRedirect(request.getContextPath() + "/pages/admin.jsp");
		}
		
	}

}
