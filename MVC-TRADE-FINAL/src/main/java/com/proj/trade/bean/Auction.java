package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("auction")
@Getter @Setter
public class Auction {
	String at_Code;
	String at_mId;
	int at_pGroup;
	int at_sCount;
	int at_sValue;
	String at_Contents;
	String at_cName;
	int at_pCount;
	int at_pValue;
	Timestamp at_Date;
}
