package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("auctionlist")
@Getter @Setter
public class AuctionList {
	int al_Listnum;
	String al_Code;
	Timestamp al_Date;
	String al_mId;
}
