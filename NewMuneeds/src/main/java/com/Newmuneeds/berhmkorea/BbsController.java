package com.Newmuneeds.berhmkorea;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.data.vo.BbsVO;
import com.pro.util.Paging;

import mybatis.dao.BbsDAO;

@Controller
public class BbsController {
	
	@Autowired
	private BbsDAO b_dao;
	
	@Autowired
	private HttpServletRequest request;
	
   @Autowired
	private ServletContext application;
   
   @Autowired
   private HttpSession session;
   
   // 페이지 기법을 위한 상수들
   public final int BLOCK_LIST = 10; // 한페이지당 보여질 게시물 수
   public final int BLOCK_PAGE = 5; // 한 블럭당 보여질 페이지 수
   
   // 멤버 변수들
   int nowPage; // 현제 페이지
   int rowTotal; // 전체 게시물 수
   String pageCode; // 페이징 처리된 HTML 코드가 저장될 곳
   
   // 리스트 화면으로 전환하기
	@RequestMapping("/notice.inc")
	public ModelAndView handleRequest(String nowPage) throws Exception {
		// 사용자가 브라우저에서 notice.inc라고 요청 했을 때
		// 수행하는 곳

		// 현재 페이지 값을 받는다.
		if(nowPage == null) 
			this.nowPage = 1;
		else 
			this.nowPage = Integer.parseInt(nowPage);
		
		// 총 게시물의 수를 MyBatis환경을 통해 얻는다.
		rowTotal = b_dao.getTotalCount();

		// 페이징 처리를 위한 객체 생성
		Paging page = new Paging(this.nowPage,  BLOCK_LIST, BLOCK_PAGE,rowTotal);
		//jsp에서 표현할 페이징 기법의 코드를 pageCode에다가 저장
		pageCode = page.getSb().toString();

		//JSP에서 표현할 게시물들을 목록으로 받기 위해
		// begin과 end가 필요하다.
		int begin = page.getBegin();
		int end = page.getEnd();

		// MyBatis환경을 통해 begin과 end를 전달하면서 
		// 표현할 게시물들을 받는다.
		BbsVO[] ar = b_dao.b_getList(begin, end);

		ModelAndView mv = new ModelAndView();
		mv.addObject("pageCode", pageCode);
		mv.addObject("list", ar);
		mv.addObject("nowPage", this.nowPage);
		mv.addObject("blockList", BLOCK_LIST);

		session.setAttribute("list", ar);
		
		mv.setViewName("notice");

		return mv;
	}
	
	// 원글 추가 기능
	@RequestMapping(value = "/bbsAdd.inc",method=RequestMethod.POST)
	public ModelAndView write(BbsVO bvo) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		bvo.setIp(request.getRemoteAddr());
		
		boolean value = b_dao.b_add(bvo);
		
		if(value)
			mv.setViewName("redirect:/notice.inc");
		else
			mv.setViewName("redirect:/home.inc");
		
		return mv;
	}
	
	// 보기 화면 전환
	@RequestMapping("/bbsView.inc")
	public ModelAndView view(String b_idx,String nowPage, String phone) {
		ModelAndView mv = new ModelAndView();
		
		// 한번이라도 읽기를 한 게시물
		Object obj = session.getAttribute("read_list");
		List<BbsVO> r_list = null;
		if(obj != null) {
			r_list = (List<BbsVO>) obj;
		}else {
			r_list = new ArrayList<BbsVO>();
		}
		
		BbsVO vo = null;
		if(b_idx != null) {
			vo =  b_dao.getview(b_idx,phone);
		
			boolean chk = false;
			for(BbsVO bvo: r_list) {
				if(vo.getB_idx().equals(bvo.getB_idx())) {
					// 한번 읽기를 수행한 게시물
					chk = true;
					break;
				}
			}
			
		if(!chk) {
			// 한번도 읽기를 하지 않은 경우, hit 증가
			b_dao.b_hit(b_idx);
			
			String h = vo.getHit();
			int hit = Integer.parseInt(h);
			++hit;
			vo.setHit(String.valueOf(hit));
			
			r_list.add(vo);
			
			session.setAttribute("read_list", r_list);
		}
		}
		mv.addObject("vo", vo);
		mv.setViewName("bbsView");
		mv.addObject("b_idx", b_idx);
		mv.addObject("nowPage", nowPage);
		
		return mv;
	}
}
