package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("notice")
@Getter @Setter
public class Notice {
	int nt_Num;
	String nt_mId;
	String nt_Title;
	String nt_Contents;
	Timestamp nt_Regdate;
}
