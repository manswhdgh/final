package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("reply")
@Getter @Setter
public class Reply {
	String r_Num;
	String r_Content;
	Timestamp r_Date;
	String r_qRegister;
}
