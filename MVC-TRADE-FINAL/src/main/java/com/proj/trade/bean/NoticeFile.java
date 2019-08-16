package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("noticefile")
@Getter @Setter
public class NoticeFile {
	int na_ntNum;
	String na_fPath;
	String na_fName;
}
