package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;


@Alias("qna")
public class Qna {
	int  q_Register; 
	String  q_mid; 
	String  q_Title;
	String  q_Content; 
	Timestamp  q_Date;  
	int  q_Status;
	public int getQ_Register() {
		return q_Register;
	}
	public void setQ_Register(int q_Register) {
		this.q_Register = q_Register;
	}
	public String getQ_mid() {
		return q_mid;
	}
	public void setQ_mid(String q_mid) {
		this.q_mid = q_mid;
	}
	public String getQ_Title() {
		return q_Title;
	}
	public void setQ_Title(String q_Title) {
		this.q_Title = q_Title;
	}
	public String getQ_Content() {
		return q_Content;
	}
	public void setQ_Content(String q_Content) {
		this.q_Content = q_Content;
	}
	public Timestamp getQ_Date() {
		return q_Date;
	}
	public void setQ_Date(Timestamp q_Date) {
		this.q_Date = q_Date;
	}
	public int getQ_Status() {
		return q_Status;
	}
	public void setQ_Status(int q_Status) {
		this.q_Status = q_Status;
	}

}

