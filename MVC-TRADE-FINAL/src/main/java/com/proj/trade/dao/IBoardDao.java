package com.proj.trade.dao;

import java.util.List;

import com.proj.trade.bean.Notice;

public interface IBoardDao {

	int getNoticeCount();

	List<Notice> getNoticeList(int pNum);

}
