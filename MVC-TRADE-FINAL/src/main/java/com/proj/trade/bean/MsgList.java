package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;
@Alias("msglist")
public class MsgList {
	int ms_Group;
	String ms_sName;
	String ms_Title;
	Timestamp ms_Senddate;
	String ms_Content;
	int ms_Num;
	public int getMs_Group() {
		return ms_Group;
	}
	public void setMs_Group(int ms_Group) {
		this.ms_Group = ms_Group;
	}
	public String getMs_sName() {
		return ms_sName;
	}
	public void setMs_sName(String ms_sName) {
		this.ms_sName = ms_sName;
	}
	public String getMs_Title() {
		return ms_Title;
	}
	public void setMs_Title(String ms_Title) {
		this.ms_Title = ms_Title;
	}
	public Timestamp getMs_Senddate() {
		return ms_Senddate;
	}
	public void setMs_Senddate(Timestamp ms_Senddate) {
		this.ms_Senddate = ms_Senddate;
	}
	public String getMs_Content() {
		return ms_Content;
	}
	public void setMs_Content(String ms_Content) {
		this.ms_Content = ms_Content;
	}
	public int getMs_Num() {
		return ms_Num;
	}
	public void setMs_Num(int ms_Num) {
		this.ms_Num = ms_Num;
	}
	

}
