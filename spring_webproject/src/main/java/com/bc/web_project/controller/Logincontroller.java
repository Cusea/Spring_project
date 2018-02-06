package com.bc.web_project.controller;

import java.io.IOException;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.service.UserService;
import com.bc.web_project.vo.UserVo;

@RestController
@RequestMapping("/layout/*")
public class Logincontroller {
	
	@Inject
	private UserService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {}
	
	@RequestMapping(value="loginPage", method=RequestMethod.POST)
	public ModelAndView loginPOST(LoginDTO dto, HttpSession session, Model model){
		ModelAndView modelAndView = new ModelAndView();
		System.out.println(dto);
		try {
			UserVo userVo = service.login(dto);
			if(userVo ==null) {
				modelAndView.setViewName("layout/loginPage");
			}
			
			model.addAttribute("userVo",userVo);
			if(dto.isUserCookie()) {
				System.out.println("쿠키로그인 되냐???????????????????????????????????????");
				int amount = 60*60*24*7;
				Date sessionLimit = new Date(System.currentTimeMillis()+(1000*amount));
				service.keepLogin(userVo.getId(), session.getId(), sessionLimit);
			}
			
			modelAndView.setViewName("/");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return modelAndView;
	}
	
	@RequestMapping(value="loginPage", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("layout/loginPage");
		return model;
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public void logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) throws Exception {
		Object obj = session.getAttribute("login");
		if(obj!=null) {
			UserVo user = (UserVo) obj;
			session.removeAttribute("login");
			session.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie!= null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(user.getId(), session.getId(), new Date());
			}
		}
		System.out.println(request.getContextPath());
		response.sendRedirect(request.getContextPath());
		
	}
	
	@RequestMapping(value="signupPage", method=RequestMethod.GET)
	public ModelAndView signupGET() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("layout/signupPage");
		return model;
	}
	@RequestMapping(value="signupPage", method=RequestMethod.POST)
	public ModelAndView signup(UserVo user,HttpSession session, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			UserVo userVo = service.signup(user);
			System.out.println(userVo);
			if(userVo.getNum()==0) {
				modelAndView.setViewName("layout/signupPage");
			}else {
				LoginDTO dto = new LoginDTO();
				dto.setId(userVo.getId());
				dto.setPw(userVo.getPw());
				userVo = service.login(dto);
				session.setAttribute("login",userVo);
				modelAndView.setViewName("redirect:/");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return modelAndView;
	}
	
	@RequestMapping(value="checkId/{id}/", method=RequestMethod.GET)
	public String checkId(@PathVariable String id) {
		//System.out.println(id);
		UserVo userVo = null;
		try {
			userVo = service.selectId(id);
			//System.out.println(userVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "{\"checkId\":"+((userVo!=null)?true:false)+"}";
	}
	
	@RequestMapping(value="searchId", method=RequestMethod.POST)
	public ModelAndView searchId(UserVo user) {
		//System.out.println(user);
		ModelAndView model = new ModelAndView();
		UserVo userVo = null;
		try {
			userVo = service.selectId(user.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(userVo!=null) {
			model.addObject("search", true);
		}else {
			model.addObject("search", false);
		}
		model.setViewName("layout/loginPage");
		return model;
	}
	
	@RequestMapping(value="searchPw", method=RequestMethod.POST)
	public ModelAndView searchPw(UserVo user) {
		System.out.println(user);
		ModelAndView model = new ModelAndView();
		String pw = null;
		try {
			pw = service.searchPw(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(pw!=null) {
			model.addObject("pw", pw);
		}
		System.out.println(pw);
		model.setViewName("layout/loginPage");
		return model;
	}
}
