package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("addtrade")
@Getter @Setter
public class AddTrade {
	String at_Code;
	String at_mId;
	int at_pGroup;
	int at_sCount;
	int at_sValue;
	String at_Title;
	String at_Contents;
	int at_pCount;
	int at_pValue;
	Timestamp at_Date;
}
