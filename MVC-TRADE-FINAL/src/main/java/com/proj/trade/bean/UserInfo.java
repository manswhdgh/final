package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

@Alias("userinfo")
public class UserInfo {
	String m_Id;
	String g_Name;
	int m_tCount;
	int m_Mile;
	String m_Bank;
	String m_bAddr;

	public String getM_Id() {
		return m_Id;
	}

	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}

	public String getG_Name() {
		return g_Name;
	}

	public void setG_Name(String g_Name) {
		this.g_Name = g_Name;
	}

	public int getM_tCount() {
		return m_tCount;
	}

	public void setM_tCount(int m_tCount) {
		this.m_tCount = m_tCount;
	}

	public int getM_Mile() {
		return m_Mile;
	}

	public void setM_Mile(int m_Mile) {
		this.m_Mile = m_Mile;
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
}
