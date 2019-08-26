package com.proj.trade;


import java.util.Locale;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.proj.trade.service.AdminManagement;


@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
	

		return "admin";
	}
	
	@Autowired
	AdminManagement am;

	ModelAndView mav;
	
	@RequestMapping(value = "/admPromo", method = RequestMethod.GET)
	public ModelAndView AdmPromoList(Integer pageNum){
		mav = am.getAdmPromoList(pageNum);
		return mav;
	}

}
