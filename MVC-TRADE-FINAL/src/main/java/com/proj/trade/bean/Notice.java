package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("notice")
@Getter @Setter
public class Notice {
	int nt_Num;
	String nt_mId;
	String nt_Title;
	String nt_Contents;
	Timestamp nt_Regdate;
	public int getNt_Num() {
		return nt_Num;
	}
	public void setNt_Num(int nt_Num) {
		this.nt_Num = nt_Num;
	}
	public String getNt_mId() {
		return nt_mId;
	}
	public void setNt_mId(String nt_mId) {
		this.nt_mId = nt_mId;
	}
	public String getNt_Title() {
		return nt_Title;
	}
	public void setNt_Title(String nt_Title) {
		this.nt_Title = nt_Title;
	}
	public String getNt_Contents() {
		return nt_Contents;
	}
	public void setNt_Contents(String nt_Contents) {
		this.nt_Contents = nt_Contents;
	}
	public Timestamp getNt_Regdate() {
		return nt_Regdate;
	}
	public void setNt_Regdate(Timestamp nt_Regdate) {
		this.nt_Regdate = nt_Regdate;
	}
}
