package com.proj.trade;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.service.AdminManagement;


@Controller
public class AdminController {
	@Autowired
	AdminManagement am;

	ModelAndView mav;
	
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model, HttpServletRequest req) {
		return "admin";
	}

	// 판매자 신청 목록
	@RequestMapping(value = "/admPromo", method = RequestMethod.GET)
	public ModelAndView AdmPromoList(Integer pageNum, HttpServletRequest req) {
		mav = am.getAdmPromoList(pageNum);

		return mav;
	}

	// admPromo search ajax
	@RequestMapping(value = "/admPromoSearch", method = RequestMethod.GET)
	public @ResponseBody String admPromo(String sVal) {
		System.out.println("val="+sVal);
		String json = am.getSearchList(sVal); // ArrayList--->Gson이용해서 json으로 변환
		return json;
	} 
	//블랙리스트
	@RequestMapping(value = "/admBanList", method = RequestMethod.GET)
	public ModelAndView AdmBanList(Integer pageNum, HttpServletRequest req) {
		mav = am.getAdmBanList(pageNum);

		return mav;
	}
	@RequestMapping(value = "/viewQna") 
	 public String QnAFrm() {
		 return "/viewQna"; 
		 }
	@RequestMapping(value = "/viewQnaAjax") 
	 public ModelAndView ViewQnaAjax() {
		 mav=new ModelAndView(); 
		 mav.setViewName("viewQnaAjax"); 
		 return mav; 
		 }
	@RequestMapping(value = "/reportAjax") 
	 public ModelAndView reportAjax() {
		 mav=new ModelAndView(); 
		 mav.setViewName("reportAjax"); 
		 return mav; 
		 }
	
	
	
	/*
	 * @RequestMapping(value = "/inquiry") public ModelAndView inquiry() { mav=new
	 * ModelAndView(); mav.setViewName("inquiry"); return mav; }
	 */
	
	
	@RequestMapping(value = "/inquiry")   //  (유지권) 관리자-1대1문의  
	public ModelAndView inquiry(Integer pageNum) {
	     mav=am.inquiry(pageNum);
	
		 return mav; 
		 }
	
	@RequestMapping(value = "/inquiryAjax")    // (유지권)관리자-1대1문의 Ajax페이지 
	 public ModelAndView inquiryAjax() {
		 mav=new ModelAndView(); 
		 mav.setViewName("inquiryAjax"); 
		 return mav; 
		 }
	
	@RequestMapping(value = "/boardReport") 
	 public ModelAndView boardReport() {
		 mav=new ModelAndView(); 
		 mav.setViewName("boardReport"); 
		 return mav; 
		 }
	
	@RequestMapping(value = "/q_contents")   //  (유지권) 관리자-1대1문의 게시판 가져오게 하는 컨트롤러 
	public ModelAndView contents(Integer q_Register) {
		mav = am.contents(q_Register);
		return mav;

	}
	
	
	@RequestMapping(value = "/putQnaReply")   // (유지권) 관리자-1대1문의 관리자 답변 달아주기 
	public ModelAndView putQnaReply(String  reply, String q_Register)  {
		mav = am.putQnaReply(reply,q_Register);
		System.out.println("reply = "+reply);
		System.out.println("register = "+q_Register);
		return mav;

	}
	@RequestMapping(value = "/download", method = RequestMethod.GET)  // (유지권) 관리자-1대1문의 파일다운로드 
	public void download(@RequestParam Map<String, Object> param, HttpServletRequest req, HttpServletResponse res)
			throws Exception {

		// 세션을 무효화 후 다시 만드는 이유는 세션하이재킹을 예방하기 위해서
		// HttpSession session = req.getSession();
		// session.invalidate();
		// HttpSession session = req.getSession();

		param.put("root", req.getSession().getServletContext().getRealPath("/"));
		param.put("response", res);

		am.download(param);
	}

	
	
	
	
	
	
	// admBanListsearch ajax
	/*
	 * @RequestMapping(value = "/admBanSearch", method = RequestMethod.GET)
	 * public @ResponseBody String AdmBanList(String val, HttpServletRequest req) {
	 * System.out.println("val="+val);
	 * 
	 * Object json = am.getBanSearchList(); // ArrayList---> json으로 변환 return json;
	 * }
	 * 
	 */
}
