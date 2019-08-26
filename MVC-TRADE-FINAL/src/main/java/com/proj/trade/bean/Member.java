package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("member")
@Getter @Setter
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
}
