package com.proj.trade;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.proj.trade.bean.Message;
import com.proj.trade.service.UserInfoManagement;

@Controller
public class UserInfoController {
	@Autowired
	UserInfoManagement um;

	ModelAndView mav;
	HttpSession session;

	@RequestMapping(value = "/MyInfo")
	public ModelAndView getMyInfo(String usinfo, HttpServletRequest req) {
		session = req.getSession();
		mav = um.getMyInfo(usinfo, req);

		return mav;
	}

	@RequestMapping(value = "/MsgMain")
	public ModelAndView MsgBoard(Message message, HttpServletRequest req) {

		mav = um.msgList(message, req);
		return mav;
	}

	@RequestMapping(value = "/contents")
	public ModelAndView contents(Integer bnum) {
		System.out.println("컨트롤러 컨텐츠 BNUM=" + bnum);
		mav = um.getContents(bnum);
		return mav;
	}

	@RequestMapping(value = "/msggrouplist", produces = "application/json; charset=utf8")
	public @ResponseBody String messageajax(Integer anum) {

		System.out.println("anum=" + anum);
		String json = um.Messageajax(anum);
		return json;

	}
}
