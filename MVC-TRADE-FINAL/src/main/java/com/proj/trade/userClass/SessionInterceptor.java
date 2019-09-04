package com.proj.trade.userClass;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.trade.bean.Member;

public class SessionInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	private HttpSession session;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("세션인터셉터 하기전");
		if (request.getSession().getAttribute("id") == null) {
			System.out.println("세션인터셉터");
			response.sendRedirect("./");
			return false;
		}
		System.out.println("블랙리스트 인터셉터 하기전");
		if (((Member) session.getAttribute("mb")).getM_Group() == 4) {
			System.out.println("블랙리스트 인터셉터");
			response.sendRedirect("../");
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle");
		modelAndView.addObject("msg", "로그인이 필요한 서비스입니다.");
	}
}
