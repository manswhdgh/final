package com.proj.trade;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
