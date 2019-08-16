package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("grade")
@Getter @Setter
public class Grade {
	String g_Code;
	String g_Name;
	String g_Mintrade;
	String g_Maxtrade;
}
