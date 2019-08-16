package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("tradefile")
@Getter @Setter
public class TradeFile {
	String tf_tiCode;
	String tf_tffPath;
	String tf_fName;
}
