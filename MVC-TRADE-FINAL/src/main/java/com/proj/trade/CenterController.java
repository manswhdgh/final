package com.proj.trade;


	import java.util.List;
	import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
	import org.slf4j.LoggerFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.validation.BindingResult;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.multipart.MultipartFile;
	import org.springframework.web.multipart.MultipartHttpServletRequest;
	import org.springframework.web.servlet.ModelAndView;

	import com.proj.trade.bean.Qna;
	import com.proj.trade.service.CsQNAManagement;

	@Controller 
	public class CenterController {
		
		@Autowired 
		CsQNAManagement cqm; // Service 클래스
		@Autowired
		HttpSession session;   //Session 
		
		ModelAndView mav;     // ModelAndView 사용 
		 
		
		@RequestMapping(value = "/CsCenter/CsMain")  //고객센터 메인 페이지 이동 컨트롤러
		public ModelAndView CsMain() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/CsMain"); 
			 return mav; 
			 }
		
		@RequestMapping(value = "/FaqList")
		public ModelAndView FaqList() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/FaqList"); 
			 return mav; 
			 }
		@RequestMapping(value = "/FaqView")
		public ModelAndView FaqView() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/FaqView"); 
			 return mav; 
			 }
		
		
		
		@RequestMapping(value = "/CsCenter/ReportFrm")
		public ModelAndView ReportFrm() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/ReportFrm"); 

			 return mav; 
			 }
	
		@RequestMapping(value = "/CsCenter/ReportList")
		public ModelAndView ReportList(Integer pageNum) {
		     mav=cqm.ReportList(pageNum);
		
			 return mav; 
			 }
		 
		 @RequestMapping(value = "/CsCenter/QnaList")   // 1대1문의 게시판 리스트 컨트롤러
		  public ModelAndView QnaList(Integer pageNum){
		     mav=cqm.QnaList(pageNum);
			 	   
		       return mav; 
		  }
		
		
		@RequestMapping(value = "/CsCenter/ReportView")
		public ModelAndView ReportView(HttpServletRequest Rereq) {
		/*
		 * mav=new ModelAndView();
		 */			  mav=cqm.ReportView(Rereq);
 	     System.out.println("글번호 "+Rereq);

			 return mav; 
			 }
		@RequestMapping(value = "/CsCenter/ListView")   // 1대1문의 상세페이지 컨트롤러 
		  public ModelAndView ListView(HttpServletRequest req){
			/*
			 * mav.setViewName("CsCenter/ListView");
			 */			

			  System.out.println("글번호 "+req);
			  mav=cqm.ListView(req);
			  
		      return mav; 
		  }
		@RequestMapping(value = "/CsCenter/Q_BoardDelete")  // 1대1문의 삭제기능 컨트롤러
		public ModelAndView Q_BoardDelete(HttpServletRequest req) {
			Integer q_Register = Integer.parseInt(req.getParameter("q_Register"));
			
			System.out.println("등록번호="+q_Register);
			mav = cqm.Q_BoardDelete(q_Register);
			
			return mav;

		}
		
		@RequestMapping(value = "/CsCenter/QnAFrm")  // 1대1문의 페이지이동 컨트롤러
		 public ModelAndView QnAFrm() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/QnAFrm"); 
			 return mav; 
			 }

	 
		@RequestMapping(value = "/CsCenter/boardWrite",method=RequestMethod.POST)  //1대1문의 form페이지 컨트롤러
		public ModelAndView boardWrite(MultipartHttpServletRequest q_Files) {

			List<MultipartFile> fList = q_Files.getFiles("q_File");
			 String title = q_Files.getParameter("q_Title");

			System.out.println("title="+title);
		    System.out.println("file = " + fList.size()); 
			  for(int i = 0; i <fList.size(); i++) { 
			   System.out.println("file = " +fList.get(i).getOriginalFilename());
			  }
			mav=cqm.boardWrite(q_Files);

			return mav;
		}
		@RequestMapping(value = "/CsCenter/boardUpdateFrm",method=RequestMethod.GET)  //1대1문의 수정페이지 컨트롤러
		public ModelAndView boardUpdateFrm(HttpServletRequest req) {
			
			mav = cqm.boardUpdateFrm(req);
			
			return mav;
			
		}
		@RequestMapping(value = "/CsCenter/boardUpdate",method=RequestMethod.POST)//1대1문의 수정 컨트롤러
		public ModelAndView boardUpdate(HttpServletRequest req) {

			
			mav=cqm.boardUpdate(req);

			return mav;
		}
		
		@RequestMapping(value = "/CsCenter/ReportWrite",method=RequestMethod.POST)  // 신고게시판 컨트롤러
		
		
		public ModelAndView ReportWrite(MultipartHttpServletRequest RepW_Files) {

			List<MultipartFile> RepWList = RepW_Files.getFiles("Rep_File");
		    String title = RepW_Files.getParameter("Rep_Title");

			System.out.println("title="+title);
		    System.out.println("file = " + RepWList.size()); 
			  for(int i = 0; i <RepWList.size(); i++) { 
			   System.out.println("file = " +RepWList.get(i).getOriginalFilename());
			  }
			mav=cqm.ReportWrite(RepW_Files);

			return mav;
	}
		
}
