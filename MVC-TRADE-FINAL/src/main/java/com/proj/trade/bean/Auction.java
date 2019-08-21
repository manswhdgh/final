package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("auction")

public class Auction {
	String a_Code;
	String a_mId;
	int a_Group;
	int at_sCount;
	int at_sValue;
	String at_Contents;
	String at_cName;
	int at_pCount;
	int at_pValue;
	Timestamp at_Date;
}
