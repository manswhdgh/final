package com.proj.trade.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.proj.trade.bean.Qna;
import com.proj.trade.bean.Report;

public interface CsQNADao {

	boolean boardInsert(Qna qn);

	boolean fileInsert(Map<String, String> fMap);

	
	List<Qna> QnaList(int pNum);
	
	/*
	 * List<QnaFile> qnaFlie(Integer q_Register);
	 */  
	int getBoardCount(); // 페이징을 위해 열번호 DAO

	Qna getListView(Integer q_Register);

	
	
	boolean RepBoardInsert(Report rp);

	boolean RepFileInsert(Map<String, String> rfMap);

	List<Report> ReportList(int rpNum);

	int RepBoardCount(); // 페이징을 위해 열번호 DAO


	Report getReportView(Integer rep_Num);


	void Q_boardDelete(Integer q_Register);

	boolean boardUpdate(@Param("content")String q_Content, @Param("register")String q_Register, @Param("title")String q_Title);



    







}
