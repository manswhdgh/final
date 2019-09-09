package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Qna;
import com.proj.trade.dao.CsQNADao;
import com.proj.trade.userClass.Paging;
import com.proj.trade.userClass.Q_FileUpload;

@Service
public class CsQNAManagement {
	@Autowired
	CsQNADao CsQNADao;
	@Autowired
	private Q_FileUpload upload;

	@Autowired
	HttpSession session;

	ModelAndView mav;

	
	public ModelAndView QnaList(Integer pageNum) {
		
		mav = new ModelAndView();
		String view = null;
		List<Qna> blist = null;

		int qpNum = (pageNum == null) ? 1 : pageNum;
		blist = CsQNADao.QnaList(qpNum);
		
		if(blist != null) {
			view = "CsCenter/QnaList";
			mav.addObject("blist", blist);
			mav.addObject("Qpaging", getPaging(qpNum));
		System.out.println("qpNum"+qpNum);
		System.out.println("blist"+blist);

		}else {
		view="CsCenter/CsMain";
		}
		mav.setViewName(view);
		
		return mav;
	}

	private String getPaging(int qpNum) {
		int maxNum = CsQNADao.getBoardCount(); // 총 글의 갯수
		int listCount = 5;
		int pageCount = 2;
		String boardName = "CsCenter/QnaList";
		Paging paging = new Paging(maxNum, qpNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();
	}



	
	public ModelAndView boardWrite(MultipartHttpServletRequest q_Files) {
		mav = new ModelAndView();
		String view = null;
		String title = q_Files.getParameter("q_Title");
		String contents = q_Files.getParameter("q_Content");
		int check = Integer.parseInt(q_Files.getParameter("fileCheck"));
		System.out.println("check=" + check);
		String id = session.getAttribute("id").toString();
		/*
		 * List<Qna> blist = null; 
		 * blist =CsQNADao.QnaList();
		 * mav.addObject("blist",blist);
		 */
		Qna qn = new Qna();
		qn.setQ_Title(title);
		qn.setQ_Content(contents);
		qn.setQ_mid(id);
		boolean qnb = CsQNADao.boardInsert(qn);

		System.out.println("qnb=" + qnb);
		System.out.println("q_REGISTER=" + qn.getQ_Register());
		System.out.println("qn=" + qn);
		boolean flag = false;
		if (check == 1) { // 파일첨부된 경우
			flag = upload.fileUp(q_Files, qn.getQ_Register());
			if (flag) { // 글쓰기 성공
				view = "redirect:QnaList";
			} else {
				view = "CsCenter/CsMain";
			}
		}
		 if (qnb) { // 파일없이 글쓰기성공 
		view = "redirect:QnaList";
		} else { 
		view ="CsCenter/CsMain"; 
		}
		 
		mav.setViewName(view);
		return mav;

	}


}
