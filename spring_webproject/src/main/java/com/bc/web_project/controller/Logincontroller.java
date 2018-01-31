package com.bc.web_project.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.service.UserService;
import com.bc.web_project.vo.UserVo;

@Controller
@RequestMapping("/layout/*")
public class Logincontroller {
	
	@Inject
	private UserService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	@RequestMapping(value="loginPage", method=RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model){
		System.out.println(dto);
		try {
			UserVo userVo = service.login(dto);
			if(userVo ==null) {
				return;
			}else {
				model.addAttribute("userVo",userVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="loginPage", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView model = new ModelAndView();
		
		model.setViewName("layout/loginPage");
		return model;
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public void logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		session.removeAttribute("login");
		try {
			response.sendRedirect(request.getContextPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/*public String generateState() {
		SecureRandom random = new SecureRandom();
	    return new BigInteger(130, random).toString(32);
	}
	
	@RequestMapping(value="naver", method=RequestMethod.GET)
	public  String naver() {
		ModelAndView model = new ModelAndView();
		
		String client_id = "BYGUjJrxhO95iuUIsKGm";
		String redirect_uri = "http%3a%2f%2flocalhost%3a8989%2fweb_project%2f";
		String state = generateState();
		HttpRequest requrest = 
		String viewName = "https://nid.naver.com/oauth2.0/authorize?client_id="+client_id+"&response_type=code&redirect_uri="+redirect_uri+"&state="+state;
		model.setViewName(viewName);
		return "redirect:"+viewName;
	}*/
	
}
