package com.proj.trade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Member;
import com.proj.trade.service.NoticeManagement;

//메인페이지 포워딩 컨트롤러

@Controller
public class HomeController {
	
	@Autowired
	NoticeManagement nm;
	
	ModelAndView mav;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/")
	public ModelAndView MainForm(Integer pageNum, HttpServletRequest req, HttpServletResponse res) {
		
		mav=nm.getNoticeList(pageNum);
		return mav;
	}
}
