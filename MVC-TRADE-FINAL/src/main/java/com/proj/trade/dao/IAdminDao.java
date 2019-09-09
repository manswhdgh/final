package com.proj.trade.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.trade.bean.Board;





public interface IAdminDao {

	List<Board> getAdmPromoList(int pNum);
	
	int getAdmPromoCount();

	List<Board> getAdmPromoSearch(@Param("val") String sVal);
	

	List<Board> getAdmBanList(int pNum);

	int getAdmBanCount();

	Board getadmBanSearchList();

}
