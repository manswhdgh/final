package com.proj.trade.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

/*import com.board.icia.bean.Reply;*/
import com.google.gson.Gson;
import com.proj.trade.bean.Member;
import com.proj.trade.dao.SignUpDao;

@Service
public class SignUpManagement{
	
	@Autowired
	private SignUpDao sDao;
	
	@Autowired
	HttpSession session;
	
	ModelAndView mav;
	//아이디 체크
	public int idCheck(String m_Id) {
		System.out.println("===> Mybatis로 idCheck");
		int result = sDao.idCheck(m_Id);
		return result;
	}
	//회원가입
	public String signUp(Member mb){
		mav = new ModelAndView();
		BCryptPasswordEncoder pwdEncoder=new BCryptPasswordEncoder();
		mb.setM_Pw(pwdEncoder.encode(mb.getM_Pw()));
		System.out.println("===> Mybatis로 회원가입(signUp)");
		String json = null;
		if(sDao.signUp(mb)) {
			json = new Gson().toJson(1);
		}else {
			json = new Gson().toJson(0);
		}
		return json;	
	}
}
