package com.proj.trade.dao;

import java.util.List;

import com.proj.trade.bean.Member;

public interface AuctionDao {

	List<Member> getInfoList(String m_Id);

}
