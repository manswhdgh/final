package com.proj.trade.dao;

import java.util.List;

import com.proj.trade.bean.Aboard;
import com.proj.trade.bean.Member;

public interface AuctionDao {

	List<Aboard> getbList(Aboard aboard);

	//Member getInfo(Member mb);

}
