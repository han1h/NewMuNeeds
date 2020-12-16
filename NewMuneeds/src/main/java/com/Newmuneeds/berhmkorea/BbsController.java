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
   
   // ������ ����� ���� �����
   public final int BLOCK_LIST = 10; // ���������� ������ �Խù� ��
   public final int BLOCK_PAGE = 5; // �� ���� ������ ������ ��
   
   // ��� ������
   int nowPage; // ���� ������
   int rowTotal; // ��ü �Խù� ��
   String pageCode; // ����¡ ó���� HTML �ڵ尡 ����� ��
   
   // ����Ʈ ȭ������ ��ȯ�ϱ�
	@RequestMapping("/notice.inc")
	public ModelAndView handleRequest(String nowPage) throws Exception {
		// ����ڰ� ���������� notice.inc��� ��û ���� ��
		// �����ϴ� ��

		// ���� ������ ���� �޴´�.
		if(nowPage == null) 
			this.nowPage = 1;
		else 
			this.nowPage = Integer.parseInt(nowPage);
		
		// �� �Խù��� ���� MyBatisȯ���� ���� ��´�.
		rowTotal = b_dao.getTotalCount();

		// ����¡ ó���� ���� ��ü ����
		Paging page = new Paging(this.nowPage,  BLOCK_LIST, BLOCK_PAGE,rowTotal);
		//jsp���� ǥ���� ����¡ ����� �ڵ带 pageCode���ٰ� ����
		pageCode = page.getSb().toString();

		//JSP���� ǥ���� �Խù����� ������� �ޱ� ����
		// begin�� end�� �ʿ��ϴ�.
		int begin = page.getBegin();
		int end = page.getEnd();

		// MyBatisȯ���� ���� begin�� end�� �����ϸ鼭 
		// ǥ���� �Խù����� �޴´�.
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
	
	// ���� �߰� ���
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
	
	// ���� ȭ�� ��ȯ
	@RequestMapping("/bbsView.inc")
	public ModelAndView view(String b_idx,String nowPage, String phone) {
		ModelAndView mv = new ModelAndView();
		
		// �ѹ��̶� �б⸦ �� �Խù�
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
					// �ѹ� �б⸦ ������ �Խù�
					chk = true;
					break;
				}
			}
			
		if(!chk) {
			// �ѹ��� �б⸦ ���� ���� ���, hit ����
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
