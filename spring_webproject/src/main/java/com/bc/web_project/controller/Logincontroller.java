package com.bc.web_project.controller;

import java.io.IOException;

import javax.inject.Inject;
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

import com.bc.web_project.dao.UserDao;
import com.bc.web_project.dto.LoginDTO;
import com.bc.web_project.service.UserService;
import com.bc.web_project.vo.UserVo;

@RestController
@RequestMapping("/layout/*")
public class Logincontroller {
	
	@Inject
	private UserService service;
	@Inject
	private UserDao dao;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {}
	
	@RequestMapping(value="loginPage", method=RequestMethod.POST)
	public ModelAndView loginPOST(LoginDTO dto, HttpSession session, Model model){
		ModelAndView modelAndView = new ModelAndView();
		try {
			UserVo userVo = service.login(dto);
			if(userVo ==null) {
				modelAndView.setViewName("layout/loginPage");
			}else {
				model.addAttribute("userVo",userVo);
				modelAndView.setViewName("/");
			}
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
	public void logout(HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		session.removeAttribute("login");
		try {
			response.sendRedirect(request.getContextPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
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
			if(userVo.getNum()==0) {
				modelAndView.setViewName("layout/signupPage");
			}else {
				LoginDTO dto = new LoginDTO();
				dto.setId(userVo.getId());
				dto.setPw(userVo.getPw());
				userVo = service.login(dto);
				model.addAttribute("userVo",userVo);
				modelAndView.setViewName("layout/loginPage");
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
	
}
