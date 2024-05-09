package com.techno.ecommerce.model;

public class CategoryModel {
	private String categoryName;
	private String categoryDescription;
	
	public CategoryModel (String categoryName, String categoryDescription) {
		this.categoryName = categoryName;
		this.categoryDescription = categoryDescription;
	}

//Getter
	public String getcategoryName() {
		return categoryName;
	}
	
	public String getcategoryDescription(){
		return categoryDescription;
	}
	
//Setter
	public void setCategoryName(String newCategoryName) {
		this.categoryName = newCategoryName;
	}
	
	public void setCategoryDescription(String newCategoryDescription) {
		this.categoryDescription = newCategoryDescription;
	}
}
