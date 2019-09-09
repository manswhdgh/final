package com.proj.trade;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Aboard;
import com.proj.trade.bean.Member;
import com.proj.trade.service.AuctionManagement;

//野껋럥�꼻, 占쎈열野껋럥�꼻 占쎈７占쎌뜖占쎈뎃 �뚢뫂�뱜嚥▲끇�쑎
@Controller
public class AuctionController {
	@Autowired
	AuctionManagement atm;

	ModelAndView mav;
	HttpSession session;

	@RequestMapping(value = "/auctionContent")
	public ModelAndView getContents(String atinfo, HttpServletRequest req) {
		session = req.getSession();
		mav = atm.getContents(atinfo, req);

		return mav;
	}

	@RequestMapping(value = "/auctionBoard")
	public ModelAndView auctionboard(Aboard aboard, HttpServletRequest req) {
		session = req.getSession();
		mav = atm.boardList(aboard, req);

		return mav;

	}

}
