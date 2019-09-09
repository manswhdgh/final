package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

/*MS_MSGNUM   NOT NULL NVARCHAR2(20) 
MS_MID      NOT NULL NVARCHAR2(20) 
MS_STATUS   NOT NULL NUMBER(1)     
MS_GROUP    NOT NULL NUMBER(1)     
MS_SENDDATE NOT NULL DATE          
MS_READDATE NOT NULL DATE          
MS_CONTENT  NOT NULL NVARCHAR2(20) 
MS_SNAME    NOT NULL NVARCHAR2(20) 
MS_TITLE 
*/
@Alias("message")

public class Message {
	String ms_msgNum;
	String ms_mId;
	int ms_Status;
	int ms_Group;
	Timestamp ms_Senddate;
	Timestamp ms_Readdate;
	String ms_Content;
	String ms_sName;
	String ms_Title;
	int ms_Num;

	public int getMs_Num() {
		return ms_Num;
	}

	public void setMs_Num(int ms_Num) {
		this.ms_Num = ms_Num;
	}

	public String getMs_Title() {
		return ms_Title;
	}

	public void setMs_Title(String ms_Title) {
		this.ms_Title = ms_Title;
	}

	public String getMs_msgNum() {
		return ms_msgNum;
	}

	public void setMs_msgNum(String ms_msgNum) {
		this.ms_msgNum = ms_msgNum;
	}

	public String getMs_mId() {
		return ms_mId;
	}

	public void setMs_mId(String ms_mId) {
		this.ms_mId = ms_mId;
	}

	public int getMs_Status() {
		return ms_Status;
	}

	public void setMs_Status(int ms_Status) {
		this.ms_Status = ms_Status;
	}

	public int getMs_Group() {
		return ms_Group;
	}

	public void setMs_Group(int ms_Group) {
		this.ms_Group = ms_Group;
	}

	public Timestamp getMs_Senddate() {
		return ms_Senddate;
	}

	public void setMs_Senddate(Timestamp ms_Senddate) {
		this.ms_Senddate = ms_Senddate;
	}

	public Timestamp getMs_Readdate() {
		return ms_Readdate;
	}

	public void setMs_Readdate(Timestamp ms_Readdate) {
		this.ms_Readdate = ms_Readdate;
	}

	public String getMs_Content() {
		return ms_Content;
	}

	public void setMs_Content(String ms_Content) {
		this.ms_Content = ms_Content;
	}

	public String getMs_sName() {
		return ms_sName;
	}

	public void setMs_sName(String ms_sName) {
		this.ms_sName = ms_sName;
	}

}
