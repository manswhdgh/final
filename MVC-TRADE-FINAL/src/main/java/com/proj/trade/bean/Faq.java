package com.proj.trade.bean;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("faq")
@Getter @Setter
public class Faq {
	String fa_Num;
	String fa_mId;
	String fa_Group;
	String fa_qContent;
	String fa_Content;
	Timestamp fa_Date;
}
