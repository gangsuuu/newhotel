package com.spring.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BookController {
	
	@RequestMapping(value="/shillaStay/reservation.do", method=RequestMethod.GET)
	public String reservation() {
		return "/reservation/reservation_list";
	}
	
	@RequestMapping(value="/bookinsert.do",method = RequestMethod.GET)
	public ModelAndView bookinsert() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/book/bookinsert");
		return mv;
	}
	
	@RequestMapping(value="/bookinsertresult.do",method=RequestMethod.POST)
	public ModelAndView bookInsert() {
		ModelAndView mv=new ModelAndView();
			mv.setViewName("/book/bookinsertresult");
		return mv;
	}
	
	
	
	
}




