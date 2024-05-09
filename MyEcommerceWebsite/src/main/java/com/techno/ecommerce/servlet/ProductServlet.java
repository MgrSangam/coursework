package com.techno.ecommerce.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.techno.ecommerce.controller.ProductController;
import com.techno.ecommerce.model.ProductModel;

/**
 * Servlet implementation class ProductServlet
 */
@MultipartConfig
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ProductController pcController = new ProductController();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
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
		
		Part image = request.getPart("productimage");
		
		String productImage = image.getSubmittedFileName();
		System.out.println(productImage);
		
		String UploadPath = "C:/Users/ASUS/git/coursework/MyEcommerceWebsite/src/main/webapp/images/products"+ productImage;
		
		try {
			
			FileOutputStream fos = new FileOutputStream(UploadPath);		
			InputStream is = image.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}catch (Exception e) {
			
		}
		
		
		
		String productName = request.getParameter("productname");
		String productCategory = request.getParameter("productcategory");
		String unitPrice = request.getParameter("unitprice");
		String quantity = request.getParameter("productquantity");
		String productDescription = request.getParameter("productdesc");
		
		ProductModel productModel = new ProductModel(productName, productCategory, unitPrice, quantity, productImage, productDescription);
		
		HttpSession messageSession = request.getSession();
		
		int result = pcController.addProduct(productModel);
		
		if (result == 1){
			response.sendRedirect(request.getContextPath() + "/pages/admin.jsp");
		}else {
			response.sendRedirect(request.getContextPath() + "/pages/admin.jsp");
		}
		
		
	}

}
