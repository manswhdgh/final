package com.proj.trade.dao;

import java.util.List;

import com.proj.trade.bean.Board;


public interface IAdminDao {


	int getAdmPromoCount();

	List<Board> getAdmPromoList(int pNum);

	Board getadmPromoSearch();

	

	
}
