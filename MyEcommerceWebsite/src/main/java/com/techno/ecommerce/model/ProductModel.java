package com.techno.ecommerce.model;

public class ProductModel {
	private String productName;
	private String productCategory;
	private String unitPrice;
	private String quantity;
	private String productImage;
	private String productDescription;
	
	
	public ProductModel( String productName, String productCategory, String unitPrice, String quantity, String productImage, String productDescription) {
		this.productName = productName;
		this.productCategory = productCategory;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.productImage = productImage;
		this.productDescription = productDescription;
	}

	public String getproductName() {
		return productName;
	}
	public String getproductCategory() {
		return productCategory;
	}
	public String getunitPrice() {
		return unitPrice;
	}
	public String getquantity() {
		return quantity;
	}
	public String getproductImage() {
		return productImage;
	}
	public String getproductDescription() {
		return productDescription;
	}
	
	
	public void setProductName(String newProductName) {
		this.productName = newProductName;
	}
	public void setProductCategory(String newProductCategory) {
		this.productCategory = newProductCategory;
	}
	public void setUnitPrice(String newUnitPrice) {
		this.unitPrice = newUnitPrice;
	}
	public void setQuantity(String newQuantity) {
		this.quantity = newQuantity;
	}
	public void setProductImage(String newProductImage) {
		this.productImage = newProductImage;
	}
	public void setProductDescription(String newProductDescription) {
		this.productDescription = newProductDescription;
	}
}
