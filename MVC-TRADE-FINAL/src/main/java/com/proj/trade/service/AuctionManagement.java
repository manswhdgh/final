package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Aboard;
import com.proj.trade.bean.Member;
import com.proj.trade.dao.AuctionDao;

@Service
public class AuctionManagement {
	@Autowired
	AuctionDao atDao;

	ModelAndView mav;
	@Autowired
	HttpSession session;

	public ModelAndView getContents(String atinfo, HttpServletRequest req) {
		mav = new ModelAndView();
		String view = null;
		System.out.println("session=" + session);

		// System.out.println("서비스1"+mb.getM_Id());
		// System.out.println("서비스2"+mb.getM_Phone());
		// System.out.println("서비스3"+mb.getM_Certification());

		// List<Member> mList=atDao.getInfo(mb);
		// mb=atDao.getInfo(mb);
		// System.out.println("mListsize="+mList.size());
		// mav.addObject("mb",mb);

		// Member member=atDao.getInfo(m_Id);

		// member.setM_Id("admin");

		mav.addObject("mb", atinfo);

		view = "/auction/auctionContent";
		mav.setViewName(view);
		// System.out.println("mList="+mList.size());

		return mav;
	}

	public ModelAndView boardList(Aboard aboard, HttpServletRequest req) {
		mav = new ModelAndView();
		String view = null;
		List<Aboard> bList = atDao.getbList(aboard);
		mav.addObject("bList", aboard);
		System.out.println("list=" + session.getAttribute(aboard.getA_Title()));
		view = "/auction/auctionBoard";
		mav.setViewName(view);
		return mav;
	}
}
