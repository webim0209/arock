package com.arock.domain;

import java.util.Date;

public class ReviewVO {
	private int reviewNo;
	private int productNo;
	private String reviewTitle;
	private String reviewText;
	private int starPoint;
	private String reviewer;
	private Date reviewCreateDay;
	private Date reviewUpdateDay;
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewText() {
		return reviewText;
	}
	public void setReviewText(String reviewText) {
		this.reviewText = reviewText;
	}
	public int getStarPoint() {
		return starPoint;
	}
	public void setStarPoint(int starPoint) {
		this.starPoint = starPoint;
	}
	public String getReviewer() {
		return reviewer;
	}
	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}
	public Date getReviewCreateDay() {
		return reviewCreateDay;
	}
	public void setReviewCreateDay(Date reviewCreateDay) {
		this.reviewCreateDay = reviewCreateDay;
	}
	public Date getReviewUpdateDay() {
		return reviewUpdateDay;
	}
	public void setReviewUpdateDay(Date reviewUpdateDay) {
		this.reviewUpdateDay = reviewUpdateDay;
	}
	@Override
	public String toString() {
		return "QnaVO [reviewNo=" + reviewNo + ", productNo=" + productNo + ", reviewTitle=" + reviewTitle
				+ ", reviewText=" + reviewText + ", starPoint=" + starPoint + ", reviewer=" + reviewer
				+ ", reviewCreateDay=" + reviewCreateDay + ", reviewUpdateDay=" + reviewUpdateDay + "]";
	}
	
	
}
