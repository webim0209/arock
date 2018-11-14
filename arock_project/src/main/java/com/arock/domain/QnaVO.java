package com.arock.domain;

import java.util.Date;

public class QnaVO {
	private int qnaNo;
	private int productNo;
	private String qnaTitle;
	private String qnaText;
	private String qnaUser;
	private Date qnaCreateday;
	private Date qnaUpdateday;
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaText() {
		return qnaText;
	}
	public void setQnaText(String qnaText) {
		this.qnaText = qnaText;
	}
	public String getQnaUser() {
		return qnaUser;
	}
	public void setQnaUser(String qnaUser) {
		this.qnaUser = qnaUser;
	}
	public Date getQnaCreateday() {
		return qnaCreateday;
	}
	public void setQnaCreateday(Date qnaCreateday) {
		this.qnaCreateday = qnaCreateday;
	}
	public Date getQnaUpdateday() {
		return qnaUpdateday;
	}
	public void setQnaUpdateday(Date qnaUpdateday) {
		this.qnaUpdateday = qnaUpdateday;
	}
	@Override
	public String toString() {
		return "reviewVO [qnaNo=" + qnaNo + ", productNo=" + productNo + ", qnaTitle=" + qnaTitle + ", qnaText="
				+ qnaText + ", qnaUser=" + qnaUser + ", qnaCreateday=" + qnaCreateday + ", qnaUpdateday=" + qnaUpdateday
				+ "]";
	}
}
