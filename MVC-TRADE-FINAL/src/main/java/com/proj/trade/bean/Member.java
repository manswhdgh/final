package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("member")
public class Member {
	String m_Id;
	String m_Num;
	String m_Name;
	String m_Pw;
	String m_Email;
	String m_Phone;
	String m_Addr;
	int m_Group;
	Timestamp m_Date;
	int m_Certification;
	int m_tCount;
	String m_Bank;
	String m_bAddr;
	int m_Mile;
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public String getM_Num() {
		return m_Num;
	}
	public void setM_Num(String m_Num) {
		this.m_Num = m_Num;
	}
	public String getM_Name() {
		return m_Name;
	}
	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}
	public String getM_Pw() {
		return m_Pw;
	}
	public void setM_Pw(String m_Pw) {
		this.m_Pw = m_Pw;
	}
	public String getM_Email() {
		return m_Email;
	}
	public void setM_Email(String m_Email) {
		this.m_Email = m_Email;
	}
	public String getM_Phone() {
		return m_Phone;
	}
	public void setM_Phone(String m_Phone) {
		this.m_Phone = m_Phone;
	}
	public String getM_Addr() {
		return m_Addr;
	}
	public void setM_Addr(String m_Addr) {
		this.m_Addr = m_Addr;
	}
	public int getM_Group() {
		return m_Group;
	}
	public void setM_Group(int m_Group) {
		this.m_Group = m_Group;
	}
	public Timestamp getM_Date() {
		return m_Date;
	}
	public void setM_Date(Timestamp m_Date) {
		this.m_Date = m_Date;
	}
	public int getM_Certification() {
		return m_Certification;
	}
	public void setM_Certification(int m_Certification) {
		this.m_Certification = m_Certification;
	}
	public int getM_tCount() {
		return m_tCount;
	}
	public void setM_tCount(int m_tCount) {
		this.m_tCount = m_tCount;
	}
	public String getM_Bank() {
		return m_Bank;
	}
	public void setM_Bank(String m_Bank) {
		this.m_Bank = m_Bank;
	}
	public String getM_bAddr() {
		return m_bAddr;
	}
	public void setM_bAddr(String m_bAddr) {
		this.m_bAddr = m_bAddr;
	}
	public int getM_Mile() {
		return m_Mile;
	}
	public void setM_Mile(int m_Mile) {
		this.m_Mile = m_Mile;
	}
}
