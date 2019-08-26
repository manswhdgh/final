package com.proj.trade.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.proj.trade.bean.Notice;
@Service
public interface IBoardDao {

	int getNoticeCount();

	List<Notice> getNoticeList(int pNum);

}
