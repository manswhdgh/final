package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.event.TransactionalEventListener;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Qna;
import com.proj.trade.bean.Report;
import com.proj.trade.dao.CsQNADao;
import com.proj.trade.userClass.Paging;
import com.proj.trade.userClass.Q_FileUpload;

@Service // 서비스 클래스
public class CsQNAManagement {
	@Autowired
	CsQNADao CsQNADao; // Dao 클래스
	@Autowired
	private Q_FileUpload upload; // 업로드 클래스
	/*
	 * @Autowired private Rep_FileUpload Req_upload;
	 */

	@Autowired
	HttpSession session; // 세션

	ModelAndView mav; // ModelAndView 사용

	
	public ModelAndView QnaList(Integer pageNum) {  // QnaList 리스트 불러들이기 및 페이징 처리
		
		mav = new ModelAndView();
		String view = null;
		List<Qna> blist = null;  

		int qpNum = (pageNum == null) ? 1 : pageNum; //전체 페이지 처리  
		blist = CsQNADao.QnaList(qpNum);
		
		if(blist != null) { // QnaList 리스트가 있다면 
			view = "CsCenter/QnaList";
			mav.addObject("blist", blist); //QnaList 리스트
			mav.addObject("Qpaging", getPaging(qpNum)); // QnaList 페이징 처리 
		System.out.println("qpNum"+qpNum);
		System.out.println("blist"+blist);

		}else {  // QnaList 리스트가 없다면 
		view="CsCenter/CsMain"; 
		}
		mav.setViewName(view);
		
		return mav;
	}

	
	private String getPaging(int qpNum) { 
		int maxNum = CsQNADao.getBoardCount(); // 총 글의 갯수
		int listCount = 5; 
		int pageCount = 10;
		String boardName = "QnaList";  // 페이징 처리할 보드 이름 
		Paging paging = new Paging(maxNum, qpNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();  // user service 페이징 클래스
	}
	
	private String Repaging(int rpNum) { 
		int maxNum = CsQNADao.RepBoardCount(); // 총 글의 갯수
		int listCount = 5; 
		int pageCount = 10;
		String boardName = "ReportList";  // 페이징 처리할 보드 이름 
		Paging paging = new Paging(maxNum, rpNum, listCount, pageCount, boardName);
		return paging.makeHtmlPaging();  // user service 페이징 클래스
	}
	

	
	public ModelAndView boardWrite(MultipartHttpServletRequest q_Files) {    // Qna 파일첨부 및 글쓰기 
		mav = new ModelAndView();
		String view = null;
		String title = q_Files.getParameter("q_Title"); // qnafrm 제목 파라미터로 받아오기 
		String contents = q_Files.getParameter("q_Content");// qnafrm 내용 파라미터로 받아오기
		
		int check = Integer.parseInt(q_Files.getParameter("fileCheck")); // Qna 파일첨부확인 1
		System.out.println("check=" + check);                             //qna 파일미첨부  0
		String id = session.getAttribute("id").toString(); // 세션 id 받아오기 
		/*
		 * List<Qna> blist = null; 
		 * blist =CsQNADao.QnaList();
		 * mav.addObject("blist",blist);
		 */
		Qna qn = new Qna();  // QnA Bean 객체에 제목,내용 ,세션id 담기 
		qn.setQ_Title(title);
		qn.setQ_Content(contents);
		qn.setQ_mid(id);
		boolean qnb = CsQNADao.boardInsert(qn);// boolean 으로 파일 첨부 미첨부 확인

		System.out.println("qnb=" + qnb);
		System.out.println("q_REGISTER=" + qn.getQ_Register());
		System.out.println("qn=" + qn);
		boolean flag = false;
		if (check == 1) { // 파일첨부된 경우
			flag = upload.fileUp(q_Files, qn.getQ_Register());
			if (flag) { // 파일 첨부 된 경우 글쓰기 성공
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

	
	public ModelAndView ReportList(Integer pageNum) {  // QnaList 리스트 불러들이기 및 페이징 처리
		
		mav = new ModelAndView();
		String view = null;  // 조건 있을 시 뷰를 초기화 해준다 .
		List<Report> Rblist = null;  

		int rpNum = (pageNum == null) ? 1 : pageNum; //전체 페이지 처리  
		Rblist = CsQNADao.ReportList(rpNum);
		
		if(Rblist != null) { // QnaList 리스트가 있다면 
			view = "CsCenter/ReportList";
			
			mav.addObject("Rblist", Rblist); //QnaList 리스트
			mav.addObject("Repaging", Repaging(rpNum)); // QnaList 페이징 처리 
		
			System.out.println("qpNum"+rpNum);
			System.out.println("Rblist"+Rblist);

		}else {  // QnaList 리스트가 없다면 
		view="CsCenter/CsMain"; 
		}
		mav.setViewName(view);
		
		return mav;
	}
	
	
	public ModelAndView ReportWrite(MultipartHttpServletRequest repW_Files) { // 신고게시판 글쓰기 및 파일첨부
		String view = null;
		
		String title = repW_Files.getParameter("Rep_Title");
		String contents = repW_Files.getParameter("Rep_Content");
		int check = Integer.parseInt(repW_Files.getParameter("fileCheck"));
		System.out.println("check=" + check);
		String id = session.getAttribute("id").toString();
	
		Report rp = new Report();
		rp.setRep_Title(title);
		rp.setRep_mId(id);
		rp.setRep_Content(contents);
		boolean rep = CsQNADao.RepBoardInsert(rp);

		System.out.println("qnb=" + rep);
		System.out.println("q_REGISTER=" + rp.getRep_Num());
		System.out.println("qn=" + rp);
		boolean flag = false;
		if (check == 1) { // 파일첨부된 경우
			flag = upload.Rep_fileUp(repW_Files, rp.getRep_Num());
			if (flag) { // 글쓰기 성공
				view = "redirect:ReportList";
			} else {
				view = "CsCenter/CsMain";
			}
		}
		 if (rep) { // 파일없이 글쓰기성공 
		view = "redirect:ReportList";
		} else { 
		view ="CsCenter/CsMain"; 
		}
		 
		mav.setViewName(view);
		return mav;
		
	}

	public ModelAndView ListView(HttpServletRequest req) {   // 1대1문의 상세페이지 
		mav= new ModelAndView();
		String view = null;
	    Integer Q_Register = Integer.parseInt(req.getParameter("q_Register"));  // String을 int로 타입변환 

	    
		    Qna qna = CsQNADao.getListView(Q_Register);
			mav.addObject("Qna" ,qna);
			view= "CsCenter/ListView";
		    mav.setViewName(view);
		
		return mav;
	}


	public ModelAndView ReportView(HttpServletRequest rereq) {  // 신고게시판 상세페이지 
		mav = new ModelAndView();
		String view=null;
		Integer rep_Num = Integer.parseInt(rereq.getParameter("rep_Num"));
		
		Report report = CsQNADao.getReportView(rep_Num);
		mav.addObject("Report", report);  // 담기 
		
		view="CsCenter/ReportView";
		mav.setViewName(view);
		return mav;
	}
	
	
	  public ModelAndView boardUpdateFrm(HttpServletRequest req) {
		mav= new ModelAndView();
		String view = "CsCenter/QnAUpdate";
	    Integer Q_Register = Integer.parseInt(req.getParameter("q_Register")); // String을 int로 타입변환

	    
		Qna qna = CsQNADao.getListView(Q_Register);
		mav.addObject("Qna" ,qna);
		mav.setViewName(view); 
		
		return mav;
	}
	
	
	public ModelAndView Q_BoardDelete(Integer q_Register) { // 1대1문의 삭제 
		mav = new ModelAndView();
		String view = null;
		CsQNADao.Q_boardDelete(q_Register);
		
        view="redirect:QnaList";  // 리다이렉트로 게시판리스트 페이지 이동
		mav.setViewName(view);

		return mav;
	}


	public ModelAndView boardUpdate(HttpServletRequest req) { // 1대1문의 수정 
		mav = new ModelAndView();
		String view = null;
		String q_Content = req.getParameter("q_Content");  
		String q_Register = req.getParameter("q_Register");
		String q_Title = req.getParameter("q_Title");
		
		if(CsQNADao.boardUpdate(q_Content, q_Register, q_Title)) {
			view = "redirect:QnaList";    
		} else {
			view = "redirect:CsCenter/CsMain";
		}
		mav.setViewName(view);
		
		return mav;
	}
	

	


	



}
