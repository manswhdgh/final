package com.proj.trade;


	import java.util.List;
	import java.util.Locale;

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
		CsQNAManagement cqm;
		@Autowired
		HttpSession session;
		
		ModelAndView mav;
		 
		
		@RequestMapping(value = "/CsCenter/CsMain")
		public ModelAndView Csmain() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/CsMain"); 
			 return mav; 
			 }
		
		
	
		 @RequestMapping(value = "/QnAFrm") 
		 public ModelAndView QnAFrm() {
			 mav=new ModelAndView(); 
			 mav.setViewName("CsCenter/QnAFrm"); 
			 return mav; 
			 }
		
	
	  @RequestMapping(value = "/QnaList") 
	  public ModelAndView QnaList(Integer pageNum){
	     mav=cqm.QnaList(pageNum);
		 	   
	       return mav; 
	  }
	 
	 
		
		 
	
		@RequestMapping(value = "/boardWrite",method=RequestMethod.POST) 
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
}
