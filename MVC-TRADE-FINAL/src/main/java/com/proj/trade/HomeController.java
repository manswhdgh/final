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
import com.proj.trade.service.NoticeManagement;

//메인페이지 포워딩 컨트롤러

@Controller
public class HomeController {
	
	@Autowired
	NoticeManagement nm;
	
	ModelAndView mav;

	@RequestMapping(value = "/")
	public ModelAndView MainForm(Integer pageNum) {
		mav=nm.getNoticeList(pageNum);
		return mav;
	}
}
