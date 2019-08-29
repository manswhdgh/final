package com.proj.trade.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.dao.AuctionDao;
import com.proj.trade.dao.IMemberDao;
import com.proj.trade.bean.Member;

@Service
public class AuctionManagement{
 @Autowired
 AuctionDao atDao;
 
 ModelAndView mav;
  
	public ModelAndView getContents(String m_Id) {
	 	mav=new ModelAndView();
	 	String view=null;
	 	Member member = new Member();
	 	member.setM_Id("admin");
	 	List<Member> atList=atDao.getInfoList(m_Id);
	 	mav.addObject("atList",atList);
	 	view="auctionContent";
	 	mav.setViewName(view);
	 	
	 	
	 	return mav;
	}


	
}	