package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("auctionfile")
@Getter @Setter
public class AuctionFile {
	String af_fPath;
	String af_fName;
	String af_aCode;
}
