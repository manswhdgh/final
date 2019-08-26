package com.proj.trade.dao;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Member;
import com.proj.trade.dao.IBoardDao;
import com.proj.trade.service.SignUpManagement;

public interface SignUpDao {
	
	//아이디 중복 체크
	public int idCheck(String m_Id);
	
	//회원 가입
	public boolean signUp(Member mb);


}
