package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BookController {
	
	@RequestMapping(value="/shillaStay/admin/Roomedit.do", method=RequestMethod.GET)
	public String admin_roomedit() {
		return "/admin/admin_Room/admin_roomedit";
	}
	
	@ResponseBody
	@RequestMapping(value="/test.do", method = RequestMethod.POST)
	public String  admin_roominsert(String id) {
		String result = "";
			System.out.println("¿€µø");
			System.out.println(id);
		return result;
	}
	
	
	
	
	
}
