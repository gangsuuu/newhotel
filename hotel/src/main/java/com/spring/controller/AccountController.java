package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AccountController {
	
	
	/**
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		if(svo != null) {
			session.invalidate();	//���� ���� ����
			mv.addObject("logout_result","ok"); 
		}
		mv.setViewName("/index");
		return mv;
		
	}
	
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.POST)
	public ModelAndView loginCheck(HotelMemberVO vo, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		SessionVO svo = MemberService.getLoginResult(vo); 
		if(svo != null) {
			if(svo.getLoginresult() == 1){
				session.setAttribute("svo", svo);
				mv.addObject("login_result","ok");
				mv.setViewName("/login/loginresult");
			}
		}else{
			mv.addObject("login_result","fail");
			mv.setViewName("user/acount/login");
		}
		return mv;
	}
	
	 */
	
	/******************************************
					�α���
	 *******************************************/
	/**
	 * loginCheck.do : �α��� �� ȭ��
	 */
	@RequestMapping(value="shillaStay/login.do", method=RequestMethod.GET)
	public ModelAndView login(String auth) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("auth", auth);
		mv.setViewName("user/account/login");
		return mv;
	}
	/******************************************
					�α���
	 *******************************************/	
	/******************************************
	 				ȸ������
	 *******************************************/
	
	/**
	 *	ȸ������ ��  
	 */
	@RequestMapping(value="shillaStay/join/information.do", method=RequestMethod.GET)
	public String join() {
		return "user/account/join";
	}
	/**
	 * ������ ���� ���� 
	 */
	@RequestMapping(value="shillaStay/join/marketing.do", method=RequestMethod.GET)
	public String join_agreeMarket() {
	return "user/account/join";
	}
	
}