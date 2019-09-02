package com.proj.trade;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Board;
import com.proj.trade.service.AdminManagement;
import com.google.gson.Gson;

@Controller
public class AdminController {
	@Autowired
	AdminManagement am;

	ModelAndView mav;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		return "admin";
	}

	// 판매자 신청 목록
	@RequestMapping(value = "/admPromo", method = RequestMethod.GET)
	public ModelAndView AdmPromoList(Integer pageNum) {
		mav = am.getAdmPromoList(pageNum);

		return mav;
	}

	// admPromo search ajax
	@RequestMapping(value = "/admPromoSearch", method = RequestMethod.GET)
	public @ResponseBody String admPromo(String key) {
		// System.out.println("key="+key);

		String json = am.getSearchList(key).toString(); // ArrayList--->Gson이용해서 json으로 변환
		return json;
	}
	//
	@RequestMapping(value = "/addBanList", method = RequestMethod.GET)
	public String addBanList(String m_Id) {
		List<Board> users = admin_Mapper.AdmBanList();
		model.addAttribute("AdmBanList", AdmBanList);
	//	mav = am.getAdmPromoList(pageNum);

		return "addBanList";
	}

}
