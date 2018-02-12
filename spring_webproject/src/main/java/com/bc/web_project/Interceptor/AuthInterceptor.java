package com.bc.web_project.Interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.bc.web_project.service.UserService;
import com.bc.web_project.vo.UserVo;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Inject
	private UserService userService;
	
	private void saveDest(HttpServletRequest req) {
		String uri = req.getRequestURI();
		String query = req.getQueryString();
		if(query== null || query.equals("null")) {
			query = "";
		}else {
			query = "?" +query;
		}
		
		if(req.getMethod().equals("GET")) {
			logger.info("uri:"+uri);
			logger.info("dest:"+(uri+query));
			req.getSession().setAttribute("dest", uri+query);
		}
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login")==null) {
			logger.info("로그인 안함");
			saveDest(request);
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie!=null) {
				UserVo userVo = userService.checkLoginBefore(loginCookie.getValue());
				logger.info("userVo: ", userVo);
				if(userVo!=null) {
					session.setAttribute("login", userVo);
					return true;
				}
			}
		}
		return true;
	}
	
}
