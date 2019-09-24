package com.proj.trade.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.proj.trade.bean.Board;
import com.proj.trade.bean.Qna;
import com.proj.trade.bean.QnaFile;
import com.proj.trade.bean.Report;
import com.proj.trade.dao.IAdminDao;
import com.proj.trade.userClass.Paging;
import com.proj.trade.userClass.Q_FileUpload;

@Service
public class AdminManagement {
	@Autowired
	IAdminDao aDao;
	@Autowired
	HttpSession session;
	
	@Autowired
	private Q_FileUpload upload;
	
	ModelAndView mav;
	
	//판매자신청
	public ModelAndView getAdmPromoList(Integer pageNum) {

		mav = new ModelAndView();
		String view = null; 
		List<Board> admPromoList = null;

		int pNum = (pageNum == null) ? 1 : pageNum;
		admPromoList = aDao.getAdmPromoList(pNum);

		if (admPromoList != null) {
			view = "admPromo";
			// String json=new Gson().toJaon(bList);
			mav.addObject("AdmPromoList", admPromoList);
			mav.addObject("paging", getPaging(pNum));
		} else {
			view = "admin";
		}
		mav.setViewName(view);
		return mav;

	}
	public String getPaging(int pNum) {
		int maxNum = aDao.getAdmPromoCount(); // 총 글의 갯수
		int listCount = 10;
		int pageCount = 5;// [1]
		String boardName = "admPromo"; // 게시판 url 여러개일때
		Paging paging = new Paging(maxNum, pNum, listCount, pageCount, boardName); // 생성자 순서 듕요함 ㅇ_ㅇ

		return paging.makeHtmlPaging();
	}
	
	public String getSearchList(String sVal) {
		System.out.println("call1");
		String view = null;
		List<Board> bList=aDao.getAdmPromoSearch(sVal);
		System.out.println("call2");
		//mav.addObject("search", board);
		//view = "admPromoSearch";
		
		//mav.setViewName(view);
		String json=new Gson().toJson(bList);
		System.out.println("json="+json);
		return json;
                                                                                                         
	}
	
	//블랙리스트
	public ModelAndView getAdmBanList(Integer pageNum) {
		mav = new ModelAndView();
		String view = null; 
		List<Board> admBanList = null;
		int pNum = (pageNum == null) ? 1 : pageNum;
		
		admBanList = aDao.getAdmBanList(pNum);

		if (admBanList != null) {
			view = "admBanList";
			// String json=new Gson().toJaon(bList);
			mav.addObject("AdmBanList", admBanList);
			mav.addObject("AdmBanListpaging", getAdmBanListPaging(pNum));
		} else {
			view = "admin";
		}
		mav.setViewName(view);
		return mav;
		
	}
	public String getAdmBanListPaging(int pNum) {
		int maxNum = aDao.getAdmBanCount(); // 총 글의 갯수
		int listCount = 10;
		int pageCount = 5;// [1]
		String boardName = "admBanList"; // 게시판 url 여러개일때
		Paging paging = new Paging(maxNum, pNum, listCount, pageCount, boardName); // 생성자 순서 듕요함 ㅇ_ㅇ

		return paging.makeHtmlPaging();
	}
	public ModelAndView getBanSearchList() {
		String view = null;
		Board board=aDao.getadmBanSearchList();
		mav.addObject("search", board);
		view = "admBanSearch";
		mav.setViewName(view);
		
		return mav;
	}
	
	
	
	public ModelAndView inquiry(Integer pageNum) {  // 관리자 측 1대1문의사항 리스트  
		mav = new ModelAndView();
		List<Qna> inqList = null;  
		String view = null;
		int inqNum = (pageNum == null) ? 1:pageNum;
		inqList = aDao.getInqList(inqNum);
		
		if(inqList != null) {
			view = "inquiry";
			mav.addObject("inquiry", inqList);
			mav.addObject("Ipaging", inqPaging(inqNum)); 

		}else {  
		view="Main"; 
		}
		mav.setViewName(view);
		
		return mav;
	}
	private String inqPaging(int inqNum) { // 판매자 측 페이징 
		int maxNum = aDao.getInqCount(); // 총 글의 갯수
		int listCount = 5; 
		int pageCount = 10;
		String boardName = "inquiry";  // 페이징 처리할 보드 이름 
		Paging paging = new Paging(maxNum, inqNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();  // user service 페이징 클래스
	}
	
	
	public ModelAndView contents(Integer q_Register) {
		mav = new ModelAndView();
		String view = null;
		Qna qna = aDao.getContents(q_Register);
		List<QnaFile> qfList =aDao.getQfList(q_Register);
		mav.addObject("qna", qna);
		mav.addObject("qfList",qfList);
		/*
		 * List<Qna> clist = aDao.getReplyList(q_Register); mav.addObject("rqList",
		 * clist);
		 */
		/*
		 * List<QnaFile> qnfList = aDao.getqnfList(q_Register);
		 * System.out.println("fsize = " + qnfList.size()); mav.addObject("qnfList",
		 * qnfList);
		 */
		view = "inquiryAjax";
		mav.setViewName(view);
		
		return mav;
	}
	
	
	@Transactional
	public ModelAndView putQnaReply(String reply, String q_Register) {
		mav = new ModelAndView();
		String view = null; 
		
		
		if(aDao.putQnaReply(reply, q_Register)) {
			if(aDao.changeStatus(q_Register)) {
				view = "redirect:inquiry";
			} else {
				view = "redirect:";
			}
		} else {
			view = "redirect:";
		}
		mav.setViewName(view);
		
		return mav;
	}
	public void download(Map<String, Object> param) throws Exception {
		
		String oriFileName = param.get("oriFileName").toString();
		String sysFileName = param.get("sysFileName").toString();
		String root = param.get("root").toString();
		String fullPath = root+"/resources/QNAUpload/"+sysFileName;
		
		System.out.println("fullPath = " + fullPath);
		System.out.println("oriFileName = " + oriFileName);
		System.out.println("sysFileName = " + sysFileName);
		
		HttpServletResponse q_Down = (HttpServletResponse)param.get("response");
		upload.download(fullPath, oriFileName, q_Down);
		
	}

}

		
	

		



