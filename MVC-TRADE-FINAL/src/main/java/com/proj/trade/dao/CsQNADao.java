package com.proj.trade.dao;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.proj.trade.bean.Qna;

public interface CsQNADao {

	boolean boardInsert(Qna qn);

	boolean fileInsert(Map<String, String> fMap);

	List<Qna> QnaList(int pNum);

	int getBoardCount();


    







}
