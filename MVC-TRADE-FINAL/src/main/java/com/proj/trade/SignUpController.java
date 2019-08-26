package com.proj.trade;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Member;
import com.proj.trade.dao.SignUpDao;
import com.proj.trade.service.SignUpManagement;

@Controller
public class SignUpController {

	@Autowired
	SignUpDao sDao;
	
	@Autowired
	SignUpManagement sm;
	
	ModelAndView mav;
	

	@RequestMapping(value = "/signUp.do")
	public @ResponseBody String signUp(Member mb) throws Exception{
		System.out.println(mb.getM_Id());
		System.out.println(mb.getM_Pw());
		System.out.println(mb.getM_Name());
		System.out.println(mb.getM_Email());
		System.out.println(mb.getM_Phone());
		System.out.println(mb.getM_Addr());
		System.out.println("회원가입INSERT");
		
		return sm.signUp(mb);
	}

	// produces는 ajax가 데이터 넘겨받을때 깨짐 방지
	@RequestMapping(value = "/idCheck.do")
	
	public @ResponseBody Map<Object, Object> idcheck(String m_Id) {
		System.out.println("1="+m_Id);
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();

		count = sDao.idCheck(m_Id);
		map.put("cnt", count);

		return map;
	}
}