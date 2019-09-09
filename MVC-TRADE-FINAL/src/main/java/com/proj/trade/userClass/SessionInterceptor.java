package com.proj.trade.userClass;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
			session.setAttribute("intermsg", "swal.fire('','로그인이 필요한 서비스입니다.', 'error')");
			response.sendRedirect("./");
			//RequestDispatcher rd = request.getRequestDispatcher("./");
			//rd.forward(request, response);
			return false;
		}else if(((Member)session.getAttribute("mb")).getM_Group() == 4) {
			System.out.println("블랙리스트 인터셉터");
			//response.sendRedirect("./");
			session.setAttribute("intermsg", "swal.fire('','접근이 불가능한 계정입니다.', 'error')");
			return false;
		}
		return true;
	}
}
