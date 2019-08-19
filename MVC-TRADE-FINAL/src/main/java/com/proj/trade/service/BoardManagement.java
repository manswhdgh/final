package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.userClass.Paging;
import com.proj.trade.bean.Notice;
import com.proj.trade.dao.IBoardDao;

@Service
public class BoardManagement {
	@Autowired
	IBoardDao bDao;
	@Autowired
	HttpSession session;
	
	ModelAndView mav;
	public ModelAndView getNoticeList(Integer pageNum) {
		mav = new ModelAndView();
		String view = null;
		List<Notice> nList = null;
		// 스프링 인터셉터로 사용 예정

		int pNum = (pageNum == null) ? 1 : pageNum;
		nList = bDao.getNoticeList(pNum);
		mav.addObject("nList", nList);
		mav.addObject("paging", getPaging(pNum));

		if (nList != null) {
			view = "MainForm";
			// String json=new Gson().toJson(bList);
			mav.addObject("nList", nList);
			mav.addObject("paging", getPaging(pNum));
		} else {
			view = "MainForm";
		}
		mav.setViewName(view);
		return mav;
	}
	private String getPaging(int pNum) {
		int maxNum = bDao.getNoticeCount();// 총 글의 갯수
		int listCount = 5;
		int pageCount = 2;// [1][2]
		String boardName = "noticeList";// 게시판 url 여러개일때
		Paging paging = new Paging(maxNum, pNum, listCount, pageCount, boardName);

		return paging.makeHtmlPaging();

	}
}
