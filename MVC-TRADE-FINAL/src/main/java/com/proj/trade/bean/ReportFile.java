package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Alias("reportfile")
@Getter @Setter
public class ReportFile {
	String rpf_reNum;
	String rpf_fPath;
	String rpf_fName;
}
