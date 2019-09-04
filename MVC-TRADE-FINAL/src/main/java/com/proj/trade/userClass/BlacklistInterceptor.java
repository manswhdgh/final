package com.proj.trade.userClass;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.proj.trade.bean.Member;

public class BlacklistInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	private HttpSession session;
	
	
	//블랙리스트 처리된 회원계정 접근불가 처리
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("블랙리스트 인터셉터");
        System.out.println("인터셉터 아이디 : " + ((Member)session.getAttribute("mb")).getM_Id());
        System.out.println("인터셉터 회원유형 : " + ((Member)session.getAttribute("mb")).getM_Group());
		    if(((Member)session.getAttribute("mb")).getM_Group() == 4){
                    response.sendRedirect("./");
                    return false;
            }
        return true;
    }

	
	/*
	 * @Override public void postHandle(HttpServletRequest request,
	 * HttpServletResponse response, Object handler, ModelAndView modelAndView)
	 * throws Exception { System.out.println("postHandle");
	 * modelAndView.addObject("msg", "접근이 불가한 계정입니다."); }
	 */
}
