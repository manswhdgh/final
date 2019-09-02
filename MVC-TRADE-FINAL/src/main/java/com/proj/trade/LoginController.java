package com.proj.trade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Member;
import com.proj.trade.service.MemberManagement;


@Controller
public class LoginController {
	@Autowired
	MemberManagement mm;

	ModelAndView mav;
	@Autowired
	HttpSession session;
	//로그인
	@RequestMapping(value = "/access", method = RequestMethod.POST)
	public ModelAndView access(Member mb, HttpServletRequest req) {
		System.out.println(mb.getM_Id());
		System.out.println(mb.getM_Pw());
		mav = mm.access(mb);
		//session = req.getSession();
		System.out.println("매니지먼트 리턴후 컨트롤러 세션 id값 : " + session.getAttribute("id"));
		return mav;
	}
	@RequestMapping(value = "/logout")
	public ModelAndView logout() { //궁금하다
		session.invalidate(); //세션 무효화
		mav.setViewName("redirect:/");
		return mav;
	}
}
