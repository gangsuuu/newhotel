package com.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.hotel.vo.HotelInquiryVO;
import com.hotel.vo.NoticeVO;
import com.hotel.vo.ReplyInquiryVO;
import com.spring.service.FileServiceImpl;
import com.spring.service.InquiryServiceImpl;
import com.spring.service.NoticeServiceImpl;
import com.spring.service.PageServiceImpl;
import com.spring.service.ReplyInquiryServiceImpl;

@Controller
public class AdminController {

	@Autowired
	private PageServiceImpl pageService;
	
	@Autowired
	private InquiryServiceImpl inquiryService;
	
	@Autowired
	private FileServiceImpl fileService;
		
	@Autowired
	private ReplyInquiryServiceImpl replyinquiryService;
	
	@Autowired
	private NoticeServiceImpl noticeService;

	
	/******************************************************
			김수민
	 *******************************************************/

	/************************************************************
		Admin_inquiry
	***********************************************************/
	/**
	 * 관리자 고객문의 답변 삭제처리
	 * reply_delete_check.do
	 */
	@RequestMapping(value="/reply_delete_check.do", method=RequestMethod.POST)
	public ModelAndView reply_delete_check(String iid, HttpServletRequest request) 
	throws Exception {
		ModelAndView mv = new ModelAndView();
		
		ReplyInquiryVO vo = replyinquiryService.getRiid(iid);
		int result = replyinquiryService.getDelte(iid);
				
		mv.setViewName("redirect:/admin_inquiry_list.do");
		return mv;
	}
	
	
	/**
	 * 관리자 고객문의 답변글 상세보기
	 * ajax : admin_reply_content_json
	 */
	@ResponseBody
	@RequestMapping(value="admin_reply_content_json.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String admin_reply_content_json(String iid) {
		
		//System.out.println(iid);
		
		ReplyInquiryVO vo = replyinquiryService.getRiid(iid);
		Gson gson = new Gson();
		JsonObject jobject = new JsonObject();
		if(vo != null) {
			jobject.addProperty("reid", vo.getReid());
			jobject.addProperty("recontent", vo.getRecontent());
			jobject.addProperty("redate", vo.getRedate());
			jobject.addProperty("iid", vo.getIid());
			jobject.addProperty("hcount", vo.getHcount());		
			jobject.addProperty("reply", 1);		
		}else {
			jobject.addProperty("reply", 0);		
			
		}
		
		return gson.toJson(jobject);
		
	}
	
	/**
	 * 관리자 미답변 리스트 출력
	 * ajax : admin_replynone_list_json
	 */
	@ResponseBody
	@RequestMapping(value="admin_replynone_list_json.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String admin_replynone_list_json(String rpage) {
		
		Map<String, Integer> param = pageService.getPageResult(rpage, "inquiry_replyno", inquiryService);			
		ArrayList<HotelInquiryVO> list = replyinquiryService.replynoList(param.get("startCount"), param.get("endCount"));
		
		JsonObject jobject = new JsonObject();
		JsonArray jarray = new JsonArray();
		Gson gson = new Gson();

		for(HotelInquiryVO vo : list) {
			if(vo != null) {
				JsonObject jo = new JsonObject();
				jo.addProperty("rno", vo.getRno());
				jo.addProperty("iid", vo.getIid());
				jo.addProperty("hotelname", vo.getHotelname());
				jo.addProperty("category", vo.getCategory());
				jo.addProperty("title", vo.getTitle());
				jo.addProperty("secret", vo.getSecret());
				jo.addProperty("secretnum", vo.getSecretnum());
				jo.addProperty("content", vo.getContent());
				jo.addProperty("idate", vo.getIdate());
				jo.addProperty("mid", vo.getMid());
				jo.addProperty("rcount", vo.getRcount());
				jo.addProperty("reply", 1);
				
				jarray.add(jo);
				
			}else {
				jobject.addProperty("reply", 0);
			}
		}//for-end
		
		jobject.add("list", jarray); 
		jobject.addProperty("dbCount", param.get("dbCount"));
		jobject.addProperty("pageSize", param.get("pageSize"));
		jobject.addProperty("rpage", param.get("rpage"));
		jobject.addProperty("pageCount", param.get("pageCount"));
		
//		System.out.println(param.get("dbCount"));
//		System.out.println(param.get("pageCount"));
//		System.out.println(param.get("startCount"));
//		System.out.println(param.get("endCount"));
		
		
		return gson.toJson(jobject);
		
	}
	
	
	/**
	 * 관리자 고객문의 답변등록 처리
	 */
	@RequestMapping(value="/admin_reply_check.do", method=RequestMethod.POST)
	public ModelAndView admin_reply_check(ReplyInquiryVO vo, HttpServletRequest request) 
													throws Exception {
		ModelAndView mv = new ModelAndView();
			
		//DB 연동
		//1. hotel_inquiry 테이블 저장 --> iid 생성
		int result = replyinquiryService.getWriteResult(vo);
		
		/*if(result == 1) {
			//2. iid값을 가져오기
			//ReplyInquiryVO iid = replyinquiryService.getIid();
			
			//3. iid를 레퍼런스하는 reply_inquiry 테이블 저장

			//int result2 = replyinquiryService.getWriteResult(vo);
			
		}*/		
		
		mv.setViewName("redirect:/admin_inquiry_list.do");
		
		return mv;
	}
	
	
	/**
	 * 관리자 고객문의 문의글 삭제처리
	 */
	@RequestMapping(value="/admin_inquiry_delete_check.do", method=RequestMethod.POST)
	public ModelAndView admin_inquiry_delete_check(String iid, HttpServletRequest request) 
	throws Exception {
		ModelAndView mv = new ModelAndView();
		
		HotelInquiryVO vo = inquiryService.getContent(iid);
		int result = inquiryService.getDelete(iid);
		if(result == 1){
			//게시글 삭제 시, upload폴더에 존재하는 파일이 있다면 삭제하기
			fileService.fileDelete(vo, request);
			
			mv.setViewName("redirect:/admin_inquiry_list.do");
		}else{
			mv.setViewName("errorpage");
		}
				
		return mv;
	}
	
	
	/**
	 * 관리자 고객문의 문의글 수정처리
	 */
	@RequestMapping(value="/admin_inquiry_update_check.do", method=RequestMethod.POST)
	public ModelAndView admin_inquiry_update_check(HotelInquiryVO vo, HttpServletRequest request)
	throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//기존파일이 존재하는 경우, 이름을 변수로 저장 - 맨위에 변수 선언!
		String old_filename = vo.getIsfile();
		
		//수정하고 상세페이지 변경해주기
		vo.setContent(vo.getContent().replace("\r\n","<br/>"));
		
		//수정 시, 새로운파일을 선택했는지 안했는지 확인
		vo = fileService.fileCheck(vo);
		int result = inquiryService.getUpdate(vo);
		
		if(result == 1) {
			// 새로운 파일을 upload폴더에 저장
			fileService.fileSave(vo, request);
			mv.setViewName("redirect:/admin_inquiry_list.do");
		}else {
			mv.setViewName("errorpage");
		}
		
		return mv;
	}
	
	
	/**
	 * 관리자 고객문의 문의글 수정화면
	 */
	@RequestMapping(value="/admin_inquiry_update.do", method=RequestMethod.GET)
	public ModelAndView admin_inquiry_update(String iid) {
		ModelAndView mv = new ModelAndView();
		
		HotelInquiryVO vo = inquiryService.getContent(iid);
		//System.out.println(vo.getContent());
		
		//DB에 <br/>를 \r\n으로 변경해서 vo에 content에 넣어줘서 보여준다.
		vo.setContent(vo.getContent().replace("<br/>", "\r\n"));
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_inquiry_update");
		return mv;
	}	
	
	
	/**
	 * 관리자 고객문의 문의글 상세페이지
	 */
	@RequestMapping(value="/admin_inquiry_content.do", method=RequestMethod.GET)
	public ModelAndView admin_inquiry_content(String iid) {
		ModelAndView mv =  new ModelAndView();
		
		HotelInquiryVO vo = inquiryService.getContent(iid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_inquiry_content");
		return mv;
	}
	
	
	/**
	 * 관리자 고객문의 문의글 전체 리스트
	 */
	@RequestMapping(value="/admin_inquiry_list.do", method=RequestMethod.GET)
	public ModelAndView admin_inquiry_list(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Integer> param = pageService.getPageResult(rpage, "inquiry", inquiryService);
		
		ArrayList<HotelInquiryVO> list = inquiryService.getBoardList(param.get("startCount"), param.get("endCount"));
		
		ArrayList<ReplyInquiryVO> reply = replyinquiryService.getIid();
		
		
		mv.addObject("reply", reply);
		mv.addObject("list", list);
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.addObject("rpage", param.get("rpage"));		
		mv.setViewName("/admin/admin_inquiry_list");
		
		return mv;
	}
	
	
	/**
	 * admin_inquiry_list_search.do : 문의글 검색하기
	 */
	@RequestMapping(value="/admin_inquiry_list_search.do", method=RequestMethod.POST)
	public ModelAndView admin_inquiry_list_search(String rpage, String searchlist, String keyword) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Integer> param = pageService.getPageResult(rpage, "inquiry", inquiryService);			
		ArrayList<HotelInquiryVO> list = replyinquiryService.getSearch(param.get("startCount"),param.get("endCount"), searchlist, keyword);
		
		mv.addObject("list", list);
		mv.addObject("listSize", list.size());
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("pageSize",  param.get("pageSize"));
		mv.addObject("rpage", rpage);		
		mv.addObject("searchlist",searchlist);
		mv.addObject("keyword",keyword);
		mv.setViewName("/admin/admin_inquiry_list");
				
		return mv;
	}
	
	
	/*******************************************
	 *				 김민재
	 *******************************************/
	

	/**
	 * admin_event_list_search.do : 이벤트 검색 기능
	 */
	@RequestMapping(value="admin_event_list_search.do", method=RequestMethod.GET)
		public ModelAndView event_list_search(String rpage,
				@RequestParam(defaultValue="ntitle") String search_option, //기본 검색 옵션값 제목
				@RequestParam(defaultValue="") String keyword //키워드 기본값 공백
				)throws Exception {

		ModelAndView mv = new ModelAndView();
		
		Map<String, Integer> param = pageService.getNoticeSearchResult(rpage, "event", noticeService, search_option, keyword);
			
		ArrayList<NoticeVO> list = noticeService.event_list_search(param.get("startCount"), param.get("endCount"), search_option, keyword);
		mv.addObject("list", list);
		mv.addObject("listSize", list.size());
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.addObject("rPage", param.get("rPage"));
		mv.addObject("keyword",keyword);
		mv.addObject("search", "search");									// 검색 됐음을 알려주는 객체
		mv.setViewName("admin/admin_notice/admin_event_list_search");
		
			return mv;
		
	}
	
	
	/**
	 * admin_notice_list_search.do : 공지 검색 기능
	 */
	@RequestMapping(value="admin_notice_list_search.do", method=RequestMethod.GET)
	public ModelAndView notice_list_search(String rpage,
			@RequestParam(defaultValue="ntitle") String search_option, //기본 검색 옵션값 제목
			@RequestParam(defaultValue="") String keyword //키워드 기본값 공백
			)throws Exception {
		
		ModelAndView mv = new ModelAndView();
		Map<String, Integer> param = pageService.getNoticeSearchResult(rpage, "notice", noticeService, search_option, keyword);
		
		ArrayList<NoticeVO> list = noticeService.notice_list_search(param.get("startCount"), param.get("endCount"), search_option, keyword);
		mv.addObject("list", list);
		mv.addObject("listSize", list.size());
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.addObject("rPage", param.get("rPage"));
		mv.addObject("keyword",keyword);
		mv.addObject("search", "search");									// 검색 됬음을 알려주는 객체
		mv.setViewName("admin/admin_notice/admin_notice_list_search");
		
		return mv;
		
	}
	/**
	 * admin_notice_del_ok.do : 게시물 삭제 처리(이벤트 포함)
	 */
	@RequestMapping(value="/admin_notice_del_ok.do", method=RequestMethod.POST)
	public ModelAndView admin_notice_del_ok(String nid, HttpServletRequest request) 
			throws Exception{
		ModelAndView mv= new ModelAndView();
		
		NoticeVO vo = noticeService.getContent(nid);
		int result = noticeService.getDelete(vo);
		if(result == 1){
			fileService.fileDelete(vo, request);
			if(vo.getNtag().equals("event")) {
			mv.setViewName("redirect:/admin_event_list.do");
			}else {
				mv.setViewName("redirect:/admin_notice_list.do");	
			}
		}else{
			mv.setViewName("error_page");
		}

		return mv;
	}
	

	/**
	 * admin_notice_write_check.do : 게시물 글쓰기 처리(이벤트 포함)
	 */
	@RequestMapping(value="/admin_notice_write_check.do", method=RequestMethod.POST)
	public ModelAndView admin_notice_write(NoticeVO vo, HttpServletRequest request) 
	throws Exception{
		ModelAndView mv = new ModelAndView();

		//파일이 선택 되었는지 체크
				vo = fileService.fileCheck(vo);
				
				vo.setNcontent(vo.getNcontent().replace("\r\n", "<br>"));
				
				int result = noticeService.getWriteResult(vo);
				if(result == 1){	
					//파일 있는경우 upload 폴더에 파일 저장
					if(!vo.getNfile().equals("")) {
						//upload 폴더의 경로를 가져오기 위해, HttpServletRequest 객체를 파라미터로 가져옴!
						fileService.fileSave(vo, request);
					}
					if(vo.getNtag().equals("event")) {
						mv.setViewName("redirect:/admin_event_list.do");
					}else {
						mv.setViewName("redirect:/admin_notice_list.do");	
					}
				}else{

					mv.setViewName("error_page");
				}


				return mv;
	
	}
	
	/**
	 * admin_notice_update_check.do : 공지사항 수정 처리
	 */
	@RequestMapping(value="/admin_notice_update_check.do", method=RequestMethod.POST)
	public ModelAndView admin_notice_update_check(NoticeVO vo, HttpServletRequest request) 
			throws Exception{
		ModelAndView mv = new ModelAndView();
		
		String old_filename = vo.getNsfile(); 
		
		vo = fileService.update_fileCheck(vo);
		
		vo.setNcontent(vo.getNcontent().replace("\r\n", "<br>"));
		
		int result = noticeService.getUpdate(vo);
		if(result ==1){
			//새로운 파일을 upload 폴더에 저장한 후 기존의 파일 삭제
			fileService.notice_filesave(vo, request, old_filename);
			if(vo.getNtag().equals("event")) {
				mv.setViewName("redirect:/admin_event_list.do");
			}else {
				mv.setViewName("redirect:/admin_notice_list.do");
			}		
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	
	/**
	 * admin_notice_content.do : 공지사항 상세 정보 
	 */
	@RequestMapping(value="/admin_notice_content.do", method=RequestMethod.GET)
	public ModelAndView admin_notice_content(String nid) {
		ModelAndView mv = new ModelAndView();
		
		NoticeVO vo = noticeService.getContent(nid);
		if(vo != null){
			noticeService.getUpdateHits(nid);
		}
		mv.addObject("vo", vo);
		if(vo.getNtag().equals("event")) {
			mv.setViewName("/admin/admin_notice/admin_event_content");
		}else {
			mv.setViewName("/admin/admin_notice/admin_notice_content");
		}
		return mv;
	}
	
	/**
	 * admin_event_update.do : 이벤트 수정화면 
	 */
	@RequestMapping(value="/admin_event_update.do", method=RequestMethod.GET)
	public ModelAndView admin_event_update(String nid) {
		ModelAndView mv = new ModelAndView();
		
		NoticeVO vo = noticeService.getContent(nid);
		
		vo.setNcontent(vo.getNcontent().replace("<br>","\r\n"));
		
		mv.addObject("vo",vo);
		mv.setViewName("/admin/admin_notice/admin_event_update");
		return mv;
	}
	
	/**
	 * admin_notice_update.do : 공지사항 수정화면 
	 */
	@RequestMapping(value="/admin_notice_update.do", method=RequestMethod.GET)
	public ModelAndView admin_notice_update(String nid) {
		ModelAndView mv = new ModelAndView();
		
		NoticeVO vo = noticeService.getContent(nid);
		
		vo.setNcontent(vo.getNcontent().replace("<br>","\r\n"));
		
		mv.addObject("vo",vo);
		mv.setViewName("/admin/admin_notice/admin_notice_update");
		return mv;
	}
	
	/**
	 * admin_event_write.do : 이벤트 글쓰기
	 */
	@RequestMapping(value="/admin_event_write.do" , method=RequestMethod.GET)
	public String admin_event_write() {
		String result =  "admin/admin_notice/admin_event_write";
		return result;
	}
	
	/**
	 * admin_notice_write.do : 공지사항 글쓰기
	 */
	@RequestMapping(value="/admin_notice_write.do" , method=RequestMethod.GET)
	public String admin_notice_write() {
		String result =  "admin/admin_notice/admin_notice_write";
		return result;
	}
	

	/**
	 * admin_event_list.do : 이벤트 목록
	 */
	@RequestMapping(value="/admin_event_list.do" , method=RequestMethod.GET)
	ModelAndView admin_event_list(String rpage) {
		ModelAndView mv = new ModelAndView();

		Map<String, Integer> param = pageService.getPageResult(rpage, "event", noticeService);
		
		ArrayList<NoticeVO> list = noticeService.event_getList(param.get("startCount"), param.get("endCount"));
		
		mv.addObject("list", list);
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.addObject("rPage", param.get("rPage"));
		mv.setViewName("admin/admin_notice/admin_event_list");
			
	
			return mv;
	}
	
	/**
	 * admin_notice_list.do : 공지사항 목록
	 */
	@RequestMapping(value="/admin_notice_list.do" , method=RequestMethod.GET)
	ModelAndView admin_notice_list(String rpage) {
		ModelAndView mv = new ModelAndView();

		Map<String, Integer> param = pageService.getPageResult(rpage, "notice", noticeService);
		
		ArrayList<NoticeVO> list = noticeService.getList(param.get("startCount"), param.get("endCount"));
		
		mv.addObject("list", list);
		mv.addObject("dbCount", param.get("dbCount"));
		mv.addObject("pageSize", param.get("pageSize"));
		mv.addObject("rPage", param.get("rPage"));
			mv.setViewName("admin/admin_notice/admin_notice_list");
			
	
			return mv;
	}
	
	/*******************************************
	 *김민재 끝
	 *******************************************/
	
}
