package com.proj.trade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	//濡쒓렇�씤
	@RequestMapping(value = "/access", method = RequestMethod.POST)
	public ModelAndView access(Member mb, HttpServletRequest req, HttpServletResponse response) {
		System.out.println(mb.getM_Id());
		System.out.println(mb.getM_Pw());
		mav = mm.access(mb);
		//session = req.getSession();
		System.out.println("id= : " + session.getAttribute("id"));
		mav.addObject("logmsg", session.getAttribute("id") + " 님 환영합니다.");
		return mav;
	}
		
	@RequestMapping(value = "/logout")
	public ModelAndView logout() { //沅곴툑�븯�떎
		session.invalidate(); //�꽭�뀡 臾댄슚�솕
		mav.setViewName("redirect:/");
		return mav;
	}
	@RequestMapping(value = "/egg")
	public String egg() { 
		
		return "egg";
	}
}
