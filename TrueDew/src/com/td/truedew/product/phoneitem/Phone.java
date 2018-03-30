package com.td.truedew.product.phoneitem;

import java.util.Date;

public class Phone {
	private int PHONEITEM_NO;
	private String PHONEITEM_NAME;
	private String PHONEITEM_DETAIL;
	private String PHONEITEM_IMG;
	private int PHONEITEM_PRICE;
	private int PHONEITEM_STOCK;
	private Date PHONEITEM_REG_DATE;
	private int CATEGORY_NO;
	
	public Phone() {	
	}

	public Phone(int pHONEITEM_NO, String pHONEITEM_NAME, String pHONEITEM_DETAIL, String pHONEITEM_IMG,
			int pHONEITEM_PRICE, int pHONEITEM_STOCK, Date pHONEITEM_REG_DATE, int cATEGORY_NO) {
		super();
		PHONEITEM_NO = pHONEITEM_NO;
		PHONEITEM_NAME = pHONEITEM_NAME;
		PHONEITEM_DETAIL = pHONEITEM_DETAIL;
		PHONEITEM_IMG = pHONEITEM_IMG;
		PHONEITEM_PRICE = pHONEITEM_PRICE;
		PHONEITEM_STOCK = pHONEITEM_STOCK;
		PHONEITEM_REG_DATE = pHONEITEM_REG_DATE;
		CATEGORY_NO = cATEGORY_NO;
	}

	public int getPHONEITEM_NO() {
		return PHONEITEM_NO;
	}

	public void setPHONEITEM_NO(int pHONEITEM_NO) {
		PHONEITEM_NO = pHONEITEM_NO;
	}

	public String getPHONEITEM_NAME() {
		return PHONEITEM_NAME;
	}

	public void setPHONEITEM_NAME(String pHONEITEM_NAME) {
		PHONEITEM_NAME = pHONEITEM_NAME;
	}

	public String getPHONEITEM_DETAIL() {
		return PHONEITEM_DETAIL;
	}

	public void setPHONEITEM_DETAIL(String pHONEITEM_DETAIL) {
		PHONEITEM_DETAIL = pHONEITEM_DETAIL;
	}

	public String getPHONEITEM_IMG() {
		return PHONEITEM_IMG;
	}

	public void setPHONEITEM_IMG(String pHONEITEM_IMG) {
		PHONEITEM_IMG = pHONEITEM_IMG;
	}

	public int getPHONEITEM_PRICE() {
		return PHONEITEM_PRICE;
	}

	public void setPHONEITEM_PRICE(int pHONEITEM_PRICE) {
		PHONEITEM_PRICE = pHONEITEM_PRICE;
	}

	public int getPHONEITEM_STOCK() {
		return PHONEITEM_STOCK;
	}

	public void setPHONEITEM_STOCK(int pHONEITEM_STOCK) {
		PHONEITEM_STOCK = pHONEITEM_STOCK;
	}

	public Date getPHONEITEM_REG_DATE() {
		return PHONEITEM_REG_DATE;
	}

	public void setPHONEITEM_REG_DATE(Date pHONEITEM_REG_DATE) {
		PHONEITEM_REG_DATE = pHONEITEM_REG_DATE;
	}

	public int getCATEGORY_NO() {
		return CATEGORY_NO;
	}

	public void setCATEGORY_NO(int cATEGORY_NO) {
		CATEGORY_NO = cATEGORY_NO;
	}
	
	
	
}
