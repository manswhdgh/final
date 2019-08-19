package com.proj.trade;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "Main";
	}

	@RequestMapping(value = "/MyInfo", method = RequestMethod.GET)
	public String MyInfo() {
		logger.info("Welcome home! The client locale is {}.");

		return "MyInfo";
	}
	@RequestMapping(value = "/MsgMain", method = RequestMethod.GET)
	public String MsgMain() {
		logger.info("Welcome home! The client locale is {}.");

		return "MsgMain";
	}
	@RequestMapping(value = "/BuyManagement", method = RequestMethod.GET)
	public String BuyManagement() {
		logger.info("Welcome home! The client locale is {}.");

		return "BuyManagement";
	}


}
