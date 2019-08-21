package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("trade")
@Getter @Setter
public class TradeList {
	String tl_Listnum;
	String tl_Atcode;
	String tl_mId;
	int tl_Buyval;
	int tl_Sellval;
	int tl_Count;
}
