package com.arock.domain;

import java.util.Date;

public class ProductVO {
	private int productNo;
	private String productCategory;
	private String productName;
	private String productPrice;
	private String productSalePrice;
	private String productSummary;
	private Date productCreateDay;
	private Date productUpdateDay;
	private int buyCount;
	private int reviewCount;
	private int likeCount;
	private int totalStar;
	private String productDetail;
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductSalePrice() {
		return productSalePrice;
	}
	public void setProductSalePrice(String productSalePrice) {
		this.productSalePrice = productSalePrice;
	}
	public String getProductSummary() {
		return productSummary;
	}
	public void setProductSummary(String productSummary) {
		this.productSummary = productSummary;
	}
	public Date getProductCreateDay() {
		return productCreateDay;
	}
	public void setProductCreateDay(Date productCreateDay) {
		this.productCreateDay = productCreateDay;
	}
	public Date getProductUpdateDay() {
		return productUpdateDay;
	}
	public void setProductUpdateDay(Date productUpdateDay) {
		this.productUpdateDay = productUpdateDay;
	}
	public int getBuyCount() {
		return buyCount;
	}
	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public int getTotalStar() {
		return totalStar;
	}
	public void setTotalStar(int totalStar) {
		this.totalStar = totalStar;
	}
	public String getProductDetail() {
		return productDetail;
	}
	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}
	@Override
	public String toString() {
		return "ProductVO [productNo=" + productNo + ", productCategory=" + productCategory + ", productName="
				+ productName + ", productPrice=" + productPrice + ", productSalePrice=" + productSalePrice
				+ ", productSummary=" + productSummary + ", productCreateDay=" + productCreateDay
				+ ", productUpdateDay=" + productUpdateDay + ", buyCount=" + buyCount + ", reviewCount=" + reviewCount
				+ ", likeCount=" + likeCount + ", totalStar=" + totalStar + ", productDetail=" + productDetail + "]";
	}
	
	
}
