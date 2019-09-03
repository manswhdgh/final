package com.proj.trade.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.dao.IMemberDao;
import com.google.gson.Gson;
import com.proj.trade.bean.Member;

@Service
public class MemberManagement {

	@Autowired
	private IMemberDao mDao; // new IMemeberDao구현체()
	@Autowired
	HttpSession session;

	ModelAndView mav;

	private void hashMapTest(String m_Id, String pwdEncode) {
		Map<String, String> hMap = new HashMap<String, String>();
		hMap.put("m_Id", m_Id);
		hMap.put("m_Pw", pwdEncode);
		int result = mDao.hashMapTest(hMap);
		System.out.println("result=" + result);// 로그인 성공:1,실패:0
		hMap = mDao.hashMapTest2(m_Id);
		System.out.println("name=" + hMap.get("M_NAME"));
		//System.out.println("name=" + hMap.get("G_NAME"));
	}

	public ModelAndView access(Member mb) {
		System.out.println("서비스 : "+mb.getM_Id());
		System.out.println("마일리지1 : "+mb.getM_Mile());
		mav = new ModelAndView();
		
		String view = null;
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		String pwdEncode = mDao.getSecurityPwd(mb.getM_Id());
		System.out.println("pwd=" + pwdEncode);
		// hashMap Test
		hashMapTest(mb.getM_Id(), pwdEncode);
		System.out.println("확인0");
		if (pwdEncode != null) {// 아이디 존재
			System.out.println("아이디존재");
			if (pwdEncoder.matches(mb.getM_Pw(), pwdEncode)) {
				System.out.println("아이디 및 비밀번호 일치");
				session.setAttribute("id", mb.getM_Id());
				System.out.println("멤버매니지먼트 세션ID불러오기 : "+session.getAttribute("id"));
				mb = mDao.getMemberInfo(mb.getM_Id());
				// mav.addObject("mb",mb);
				session.setAttribute("mb", mb);
				//NULL이 들어옴 왜?
				System.out.println("마일리지 : "+((Member)session.getAttribute("mb")).getM_Mile());
				view = "redirect:/"; // forward:url,POST-POST,GET,GET끼리만 가능.
				System.out.println("view=" + view);
			} else {// 비번 오류 //redirect:url,POST,GET==>GET만 가능
				System.out.println("비밀번호오류");
				view = "MainForm";
				mav.addObject("check", 2);
			}
		} else {// 아이디 무존재
			System.out.println("확인4");
			view = "MainForm";
			mav.addObject("check", 3);// 로그인 실패
		}
		mav.setViewName(view);
		return mav;
	}// end access
}