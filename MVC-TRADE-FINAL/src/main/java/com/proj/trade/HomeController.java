package com.proj.trade;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "main";
	}

	@RequestMapping(value = "/MyInfo", method = RequestMethod.GET)
	public String MyInfo(Locale locale, Model AuctionManagement) {
		logger.info("Welcome home! The client locale is {}.");

		return "MyInfo";
	}

	@RequestMapping(value = "/AuctionManagement", method = RequestMethod.GET)
	public String AuctionManagement(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "AuctionManagement";
	}

	@RequestMapping(value = "/BuyManagement", method = RequestMethod.GET)
	public String BuyManagement(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "BuyManagement";
	}

	@RequestMapping(value = "/CancellationHistory", method = RequestMethod.GET)
	public String CancellationHistory(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "CancellationHistory";
	}

	@RequestMapping(value = "/ProfileModify", method = RequestMethod.GET)
	public String ProfileModify(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "ProfileModify";
	}

	@RequestMapping(value = "/SalesManagement", method = RequestMethod.GET)
	public String SalesManagement(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "SalesManagement";
	}

	@RequestMapping(value = "/TransactionHistory", method = RequestMethod.GET)
	public String TransactionHistory(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "TransactionHistory";
	}
	@RequestMapping(value = "/MsgMain", method = RequestMethod.GET)
	public String MsgMain(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.");

		return "MsgMain";
	}
}
