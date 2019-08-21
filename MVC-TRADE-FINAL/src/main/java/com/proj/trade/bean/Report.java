package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("report")
@Getter @Setter
public class Report {
	String rep_Num;
	String rep_mId;
	String rep_Title;
	Timestamp rep_Date;
	Timestamp rep_aDate;
	String rep_Group;
	String rep_Content;
	int rep_aGroup;
}
