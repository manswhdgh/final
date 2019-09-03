package com.proj.trade.bean;

import org.apache.ibatis.type.Alias;

@Alias("qfFile")
public class QnaFile {
	
	private String  qf_fName;
	private String qf_fPath;
	private String qf_register;
	
	public String getQf_fName() {
		return qf_fName;
	}
	public void setQf_fName(String qf_fName) {
		this.qf_fName = qf_fName;
	}
	public String getQf_fPath() {
		return qf_fPath;
	}
	public void setQf_fPath(String qf_fPath) {
		this.qf_fPath = qf_fPath;
	}
	public String getQf_register() {
		return qf_register;
	}
	public void setQf_register(String qf_register) {
		this.qf_register = qf_register;
	}

}
