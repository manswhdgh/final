package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("message")
@Getter @Setter
public class Message {
	String ms_msgNum;
	String ms_mId;
	int ms_Status;
	int ms_Group;
	Timestamp ms_Senddate;
	Timestamp ms_Readdate;
	String ms_Content;
	String ms_sName;
}
