package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.proj.trade.bean.Board;
import com.proj.trade.dao.IAdminDao;
import com.proj.trade.userClass.Paging;

@Service
public class AdminManagement {
	@Autowired
	IAdminDao aDao;
	@Autowired
	HttpSession session;
	
	ModelAndView mav;
	
	//판매자신청
	public ModelAndView getAdmPromoList(Integer pageNum) {

		mav = new ModelAndView();
		String view = null; 
		List<Board> admPromoList = null;

		int pNum = (pageNum == null) ? 1 : pageNum;
		admPromoList = aDao.getAdmPromoList(pNum);

		if (admPromoList != null) {
			view = "admPromo";
			// String json=new Gson().toJaon(bList);
			mav.addObject("AdmPromoList", admPromoList);
			mav.addObject("paging", getPaging(pNum));
		} else {
			view = "admin";
		}
		mav.setViewName(view);
		return mav;

	}
	public String getPaging(int pNum) {
		int maxNum = aDao.getAdmPromoCount(); // 총 글의 갯수
		int listCount = 10;
		int pageCount = 5;// [1]
		String boardName = "admPromo"; // 게시판 url 여러개일때
		Paging paging = new Paging(maxNum, pNum, listCount, pageCount, boardName); // 생성자 순서 듕요함 ㅇ_ㅇ

		return paging.makeHtmlPaging();
	}
	
	public String getSearchList(String sVal) {
		System.out.println("call1");
		String view = null;
		List<Board> bList=aDao.getAdmPromoSearch(sVal);
		System.out.println("call2");
		//mav.addObject("search", board);
		//view = "admPromoSearch";
		
		//mav.setViewName(view);
		String json=new Gson().toJson(bList);
		System.out.println("json="+json);
		return json;
                                                                                                         
	}
	
	//블랙리스트
	public ModelAndView getAdmBanList(Integer pageNum) {
		mav = new ModelAndView();
		String view = null; 
		List<Board> admBanList = null;
		int pNum = (pageNum == null) ? 1 : pageNum;
		
		admBanList = aDao.getAdmBanList(pNum);

		if (admBanList != null) {
			view = "admBanList";
			// String json=new Gson().toJaon(bList);
			mav.addObject("AdmBanList", admBanList);
			mav.addObject("AdmBanListpaging", getAdmBanListPaging(pNum));
		} else {
			view = "admin";
		}
		mav.setViewName(view);
		return mav;
		
	}
	public String getAdmBanListPaging(int pNum) {
		int maxNum = aDao.getAdmBanCount(); // 총 글의 갯수
		int listCount = 10;
		int pageCount = 5;// [1]
		String boardName = "admBanList"; // 게시판 url 여러개일때
		Paging paging = new Paging(maxNum, pNum, listCount, pageCount, boardName); // 생성자 순서 듕요함 ㅇ_ㅇ

		return paging.makeHtmlPaging();
	}
	public ModelAndView getBanSearchList() {
		String view = null;
		Board board=aDao.getadmBanSearchList();
		mav.addObject("search", board);
		view = "admBanSearch";
		mav.setViewName(view);
		
		return mav;
	}
	
	

}
