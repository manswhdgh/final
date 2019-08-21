package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("category")
@Getter @Setter
public class Category {
	String cg_Name;
	String cg_atCode;
	String cg_aCode;
	String cg_Channel;
	String cg_Type;
}
