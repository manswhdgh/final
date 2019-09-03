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
	import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		 
		/*
		 * @RequestMapping(value = "/QnaWrite",method=RequestMethod.POST) public
		 * ModelAndView QnaWrite(Qna board,List<MultipartFile> files) { 
		 * return mav;
		 * 
		 * }
		 */
		@RequestMapping(value = "/boardWrite",method=RequestMethod.POST) 
		public ModelAndView boardWrite(MultipartHttpServletRequest files) {

			mav=cqm.boardWrite(files);
			System.out.println("title="+files.getParameter("q_Title"));
			System.out.println("content="+files.getParameter("q_Content"));
			System.out.println("file=" + files.getContentType());

			
			return mav;
		

			
		
	}
}
