package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("board")

public class Board {
	private int b_Num;
	private String b_Title;
	private String b_Contents;
	private String b_Id;
	private String m_Name;
	private Timestamp b_Date; //String, Timestamp
	private int bview;
	private int b_group;
	public int getB_Num() {
		return b_Num;
	}
	public int getB_group() {
		return b_group;
	}
	public void setB_group(int b_group) {
		this.b_group = b_group;
	}
	public void setB_Num(int b_Num) {
		this.b_Num = b_Num;
	}
	public String getB_Title() {
		return b_Title;
	}
	public void setB_Title(String b_Title) {
		this.b_Title = b_Title;
	}
	public String getB_Contents() {
		return b_Contents;
	}
	public void setB_Contents(String b_Contents) {
		this.b_Contents = b_Contents;
	}
	public String getB_Id() {
		return b_Id;
	}
	public void setB_Id(String b_Id) {
		this.b_Id = b_Id;
	}
	public String getM_Name() {
		return m_Name;
	}
	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}
	public Timestamp getB_Date() {
		return b_Date;
	}
	public void setB_Date(Timestamp b_Date) {
		this.b_Date = b_Date;
	}
	public int getBview() {
		return bview;
	}
	public void setBview(int bview) {
		this.bview = bview;
	}
}
