package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;


@Alias("qna")
@Getter @Setter  // lombok
public class Qna {
	int  q_Register; 
	String  q_mid; 
	String  q_Title;
	String  q_Content; 
	Timestamp  q_Date;  
	int  q_Status;
	String r_Content;
	
	
	

}

