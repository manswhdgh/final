package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("aboard")
public class Aboard {
	int al_ListNum;
	String a_Title;
	String a_Mid;
	int a_High;
	Timestamp al_Date;
	Timestamp a_Cdate;
	public int getAl_ListNum() {
		return al_ListNum;
	}
	public void setAl_ListNum(int al_ListNum) {
		this.al_ListNum = al_ListNum;
	}
	public String getA_Title() {
		return a_Title;
	}
	public void setA_Title(String a_Title) {
		this.a_Title = a_Title;
	}
	public String getA_Mid() {
		return a_Mid;
	}
	public void setA_Mid(String a_Mid) {
		this.a_Mid = a_Mid;
	}
	public int getA_High() {
		return a_High;
	}
	public void setA_High(int a_High) {
		this.a_High = a_High;
	}
	public Timestamp getAl_Date() {
		return al_Date;
	}
	public void setAl_Date(Timestamp al_Date) {
		this.al_Date = al_Date;
	}
	public Timestamp getA_Cdate() {
		return a_Cdate;
	}
	public void setA_Cdate(Timestamp a_Cdate) {
		this.a_Cdate = a_Cdate;
	}


}
