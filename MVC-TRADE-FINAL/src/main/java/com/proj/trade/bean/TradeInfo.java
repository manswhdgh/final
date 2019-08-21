package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("tradeinfo")
@Getter @Setter
public class TradeInfo {
	String ti_Code;
	int ti_alListnum;
	String ti_tlListnum;
	int ti_Sellval;
	int ti_Buyval;
	Timestamp ti_Date;
	int ti_Type;
}
