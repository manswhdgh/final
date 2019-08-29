package com.proj.trade;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.service.AuctionManagement;

//경매, 역경매 포워딩 컨트롤러
@Controller
public class AuctionController {
	@Autowired
	AuctionManagement bm;
	
	ModelAndView mav;
	
	@RequestMapping(value = "/auctionFrm", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		
		System.out.println();
		return "auction/auctionContent";
	}
	
	
	
	@RequestMapping(value="/auctionContent")
	public ModelAndView content(String m_Id) {
		mav=bm.getContents(m_Id);
		return mav;
	}
	
}
