package com.proj.trade.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.proj.trade.bean.Message;
import com.proj.trade.bean.MsgList;
import com.proj.trade.dao.IUserDao;

@Service
public class UserInfoManagement {
	@Autowired
	IUserDao uDao;

	@Autowired
	HttpSession session;

	ModelAndView mav;

	public ModelAndView getMyInfo(String usinfo, HttpServletRequest req) {

		mav = new ModelAndView();
		String view = null;

		mav.addObject("userinfo", usinfo);

		view = "MyInfo";
		mav.setViewName(view);

		return mav;
	}

	public ModelAndView msgList(Message message, HttpServletRequest req) {

		mav = new ModelAndView();
		String view = null;
		List<Message> mList = null;

		mList = uDao.getmList(message);
		mav.addObject("mList", mList);

		view = "MsgMain";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView getContents(Integer bNum) {
		mav = new ModelAndView();
		String view = null;
		Message message = uDao.getContents(bNum);
		mav.addObject("message", message);
		view = "MsgMainAjax";
		mav.setViewName(view);

		System.out.println("�����Ŵ�����Ʈ������" + message.getMs_Content());
		return mav;
	}

	public String Messageajax(Integer anum) {

		String view = null;
		List<MsgList> kList = null;

		kList = uDao.getklist(anum);

		System.out.println("klist=" + kList.size());

		view = "MsgMainAjax";
		mav.setViewName(view);
		// TODO Auto-generated method stub
		return new Gson().toJson(kList);
	}

}
