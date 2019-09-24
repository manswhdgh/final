package com.proj.trade.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.trade.bean.Board;
import com.proj.trade.bean.Qna;
import com.proj.trade.bean.QnaFile;





public interface IAdminDao {

	List<Board> getAdmPromoList(int pNum);
	
	int getAdmPromoCount();

	List<Board> getAdmPromoSearch(@Param("val") String sVal);
	

	List<Board> getAdmBanList(int pNum);

	int getAdmBanCount();

	Board getadmBanSearchList();

	List<Qna> getInqList(int inqNum);

	int getInqCount();

	Qna getContents(Integer q_Register);

	List<Qna> getReplyList(Integer q_Register);


	boolean putQnaReply(@Param("reply")String reply, @Param("register")String q_Register);

	boolean changeStatus(@Param("register")String q_Register);

	List<QnaFile> getQfList(Integer q_Register);



}
