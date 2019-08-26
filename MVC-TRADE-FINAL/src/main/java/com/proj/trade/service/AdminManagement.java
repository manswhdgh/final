package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

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
	

}
