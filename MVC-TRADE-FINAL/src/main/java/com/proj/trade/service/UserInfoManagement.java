package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Message;
import com.proj.trade.bean.UserInfo;
import com.proj.trade.dao.IUserDao;

@Service
public class UserInfoManagement {
	@Autowired
	IUserDao uDao;

	@Autowired
	HttpSession session;

	ModelAndView mav;

	public ModelAndView getMyInfo(String usinfo, HttpServletRequest req) {

		mav = new ModelAndView();
		String view = null;

		mav.addObject("userinfo", usinfo);

		view = "MyInfo";
		mav.setViewName(view);

		return mav;
	}

	public ModelAndView boardList(Message mboard, HttpServletRequest req) {

		mav = new ModelAndView();
		String view = null;
		List<Message> mList = uDao.getbList(mboard);
		mav.addObject("bList", mboard);
		System.out.println("list=" + session.getAttribute(mboard.getMs_Content()));
		view = "MsgMain";
		mav.setViewName(view);

		return mav;
	}
}
