package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShowpageController {
	
	//allrooms
	@RequestMapping(value="shillaStay/accommodation/allrooms.do",method=RequestMethod.GET)
	public String allrooms() {
		return "onlyshow/viewAccmo/allrooms";
	}
	//deluxe
	@RequestMapping(value="shillaStay/accommodation/deluxe.do",method=RequestMethod.GET)
	public String deluxe() {
		return "onlyshow/viewAccmo/deluxe";
	}
	//deluxOndol
	@RequestMapping(value="shillaStay/accommodation/deluxeOnDol.do",method=RequestMethod.GET)
	public String deluxOndol() {
		return "onlyshow/viewAccmo/deluxeOnDol";
	}
	//grand
	@RequestMapping(value="shillaStay/accommodation/grand.do",method=RequestMethod.GET)
	public String grand() {
		return "onlyshow/viewAccmo/grand";
	}
	//primierDeluex
	@RequestMapping(value="shillaStay/accommodation/primierDeluxe.do",method=RequestMethod.GET)
	public String primierDeluex() {
		return "onlyshow/viewAccmo/primierDeluxe";
	}
	//standard
	@RequestMapping(value="shillaStay/accommodation/standard.do",method=RequestMethod.GET)
	public String standard() {
		return "onlyshow/viewAccmo/standard";
	}
	
	
	//introhotel
	@RequestMapping(value="/shillaStay/guestservice/introhotel.do",method=RequestMethod.GET)
	public String introhotelService() {
		return "onlyshow/service/introhotelService";
	}
		
	//viewGuestService
	@RequestMapping(value="/shillaStay/guestservice/viewGuestService.do",method=RequestMethod.GET)
	public String viewGuestService() {
		return "onlyshow/service/viewGuestService";
	}
	
	
	@RequestMapping(value="shillaStay/dining/resturant.do",method=RequestMethod.GET)
	public String resturant() {
		
		return "onlyshow/dining/resturant";
	}
	@RequestMapping(value="shillaStay/dining/lounge.do",method=RequestMethod.GET)
	public String lounge() {
		
		return "onlyshow/dining/lounge";
	}
	
	
	@RequestMapping(value="shillaStay/facilities/businessRoom.do",method=RequestMethod.GET)
	public String businessRoom() {
		return "onlyshow/facilities/businessRoom";
	}
	@RequestMapping(value="shillaStay/facilities/fitnessRoom.do",method=RequestMethod.GET)
	public String fitnessRoom() {
		return "onlyshow/facilities/fitnessRoom";
	}
	@RequestMapping(value="shillaStay/facilities/meetingRoom.do",method=RequestMethod.GET)
	public String meetingRoom() {
		return "onlyshow/facilities/meetingRoom";
	}
	
	

	/**
	 *  /shllastya/hotelinfo.do
	 */
	@RequestMapping(value="/shillaStay/hotelinfo.do",method=RequestMethod.GET)
	public String shllastya_hotelinfo() {
		return "onlyshow/footerpage/hotelinfo";
	}
	@RequestMapping(value="/shillaStay/hotelMap.do",method=RequestMethod.GET)
	public String hotelmap() {
		return "onlyshow/footerpage/hotelmap";
	}
	@RequestMapping(value="/shillaStay/hotellocation.do",method=RequestMethod.GET)
	public String hotellocation() {
		return "onlyshow/footerpage/location";
	}
	
	
}
