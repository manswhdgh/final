package com.proj.trade;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.service.BoardManagement;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	BoardManagement bm;
	
	ModelAndView mav;
	
	@RequestMapping(value = "/")
	public ModelAndView MainForm(Integer pageNum) {
		mav=bm.getNoticeList(pageNum);
		return mav;
	}
	@RequestMapping(value = "/main")
	public ModelAndView Main(Integer pageNum) {
		mav=bm.getNoticeList(pageNum);
		return mav;
	}

	@RequestMapping(value = "/MyInfo", method = RequestMethod.GET)
	public String MyInfo() {

		return "MyInfo";
	}
	@RequestMapping(value = "/MsgMain", method = RequestMethod.GET)
	public String MsgMain() {

		return "MsgMain";
	}
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {

		return "test";
	}


}
