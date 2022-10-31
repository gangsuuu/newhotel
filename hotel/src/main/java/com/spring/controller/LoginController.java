package com.spring.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.vo.BasketVO;
import com.hotel.vo.HotelMemberVO;
import com.hotel.vo.SessionVO;
import com.spring.service.BasketServiceImpl;
import com.spring.service.MemberServiceImpl;
import com.spring.service.PageServiceImpl;



@Controller
public class LoginController {

	@Autowired
	private MemberServiceImpl MemberService;
	@Autowired 
	private BasketServiceImpl basketService;
	@Autowired 
	private PageServiceImpl pageService;
	
	
	/********** Á¶ÁøÈñ **************/
	@RequestMapping(value="/book.do",method=RequestMethod.GET)
	public ModelAndView booklist(String rpage) {
		ModelAndView mv = new ModelAndView();
		Map<String, Integer> param = pageService.getPageResult(rpage, "basket", basketService);
		
	    ArrayList<BasketVO> blist=(ArrayList<BasketVO>)basketService.getList(param.get("startCount"), param.get("endCount"));
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("rpage", param.get("rpage"));
		mv.addObject("pageSize", param.get("pageSize"));
	    mv.addObject("basketlist", blist);
		mv.setViewName("/book/book");
		return mv;
	}
	
	
	
}

