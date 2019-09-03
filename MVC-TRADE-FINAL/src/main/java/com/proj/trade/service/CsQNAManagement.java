package com.proj.trade.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Qna;
import com.proj.trade.dao.CsQNADao;
import com.proj.trade.userClass.Q_FileUpload;

@Service
public class CsQNAManagement {
	@Autowired
	CsQNADao CsQNADao;
	@Autowired
	Q_FileUpload upload;
	
	@Autowired 
	HttpSession session;
	
	ModelAndView mav;

	/*
	 * public ModelAndView boardWrite(Qna qna) { mav = new ModelAndView(); String
	 * view = null; String title = qna.getQ_Title(); String content =
	 * qna.getQ_Content();
	 * 
	 * qna = cqDao.boardInsert(qna); Qna a = new Qna(); a.setQ_Title(title);
	 * a.setQ_Content(content);
	 * 
	 * System.out.println("bnum="+a.getQ_Content());
	 * 
	 * view = "CsCenter/QnAFrm"; mav.setViewName(view); return mav; }
	 */
	 
	public ModelAndView boardWrite(MultipartHttpServletRequest multi) {
		mav = new ModelAndView();
		String view=null;
		String title=multi.getParameter("q_Title");
		String contents=multi.getParameter("q_Content");
		int check=Integer.parseInt(multi.getParameter("fileCheck"));
		System.out.println("check="+check);
		String id=session.getAttribute("id").toString();

		Qna qn = new Qna();
		qn.setQ_Title(title);
		qn.setQ_Content(contents);
		qn.setQ_mid(id);
		boolean qnb =CsQNADao.boardInsert(qn);
		
		
		System.out.println("qn="+qn);
		boolean flag= false;
		if(check==1) {
			flag=upload.fileUp(multi,qn.getQ_Register());
			if(flag) { // 글쓰기 성공
				view="CsCenter/QnAFrm";
			}else {
				view="CsCenter/QnAFrm";
			}
		}
	
		    
		     if(qnb) { // 파일없이 글쓰기성공
			    view="CsCenter/QnAFrm";
			}else {
				 view="CsCenter/QnAFrm";
			}
			mav.setViewName(view);
				
	
	
		return mav;
	
	 }
	}
	
	
	
	
	
	
