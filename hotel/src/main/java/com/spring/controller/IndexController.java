package com.spring.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.vo.NoticeVO;
import com.spring.service.NoticeServiceImpl;

@Controller
public class IndexController {
	
	@Autowired
	private NoticeServiceImpl noticeService;
	
	/**
	 *  index.do
	 */
	@RequestMapping(value="/shillaStay.do",method=RequestMethod.GET) 
	public ModelAndView header() {
		ModelAndView mv = new ModelAndView();
		ArrayList<NoticeVO> eventlist = noticeService.getRecentEvent();//최근 이벤트3건 
		mv.addObject("eventlist", eventlist);
		mv.setViewName("index");
		
		return mv;
	}

	
}
