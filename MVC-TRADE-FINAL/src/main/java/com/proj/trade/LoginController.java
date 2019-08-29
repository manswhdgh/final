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
import com.proj.trade.dao.IMemberDao;
import com.proj.trade.dao.SignUpDao;
import com.proj.trade.service.MemberManagement;
import com.proj.trade.service.SignUpManagement;


@Controller
public class LoginController {
	@Autowired
	MemberManagement mm;

	ModelAndView mav;
	//로그인
	
	@RequestMapping(value = "/access", method = RequestMethod.POST)
	public ModelAndView access(Member mb, HttpServletRequest req) {
		HttpSession session = req.getSession();
		System.out.println(mb.getM_Id());
		System.out.println(mb.getM_Pw());
		mav = mm.access(mb);
		//MemberManagement 에서 세션등록
		/*if(mm == null) {
			System.out.println("mm이 Null입니다.");
			//session.setAttribute("member", null);
		}else {
			session.setAttribute("id", mb.getM_Id());
			System.out.println("컨트롤러 아이디 : "+session.getAttribute("id"));
		}*/
		return mav;
	}
	 
	/*
	 * @RequestMapping(value = "/access", method = RequestMethod.POST)
	 * public @ResponseBody String access(Member mb, HttpServletRequest req) {
	 * HttpSession session = req.getSession(); mm = mDao.access(mb); if(mm == null)
	 * { session.setAttribute("member", null); }else {
	 * session.setAttribute("member", mm); } return "redirect:/"; }
	 */
}
