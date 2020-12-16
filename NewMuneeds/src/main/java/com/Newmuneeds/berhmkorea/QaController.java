package com.Newmuneeds.berhmkorea;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.data.vo.BbsVO;
import com.data.vo.QaVO;
import com.pro.util.FileRenameUtill;
import com.pro.util.Paging;
import com.pro.util.q_Paging;

import mybatis.dao.QaDAO;

@Controller
public class QaController {

	private String imgPath= "/resources/editor_img";
	private String uploadPath = "/resources/upload";
	
	@Autowired
	private QaDAO q_dao;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private ServletContext application;
	
	@Autowired
	private HttpSession session;
	
	//페이징 기법을 위한 상수 들
	public final int q_BLOCK_LIST = 10;  // 한페이지당 보여질 게시물
	public final int q_BLOCK_PAGE = 5; // 한블럭당 보여질 페이지 수
	
	// 멤버 변수들
	int nowPage;
	int q_rowTotal;
	String qpageCode;
	
	// qa 리스트 화면으로 전환하기
   @RequestMapping("/qanotice.inc")
   public ModelAndView handleRequest(String nowPage) throws Exception {
      // 사용자가 브라우저에서 notice.inc라고 요청 했을 때
      // 수행하는 곳

      // 현재 페이지 값을 받는다.
      if(nowPage == null)
         this.nowPage = 1;
      else
         this.nowPage = Integer.parseInt(nowPage);


      // 총 게시물의 수를 MyBatis환경을 통해 얻는다.
      q_rowTotal =q_dao.getQaTotalCount();

      // 페이징 처리를 위한 객체 생성
      q_Paging qpage = new q_Paging(this.nowPage, q_BLOCK_LIST, q_BLOCK_PAGE, q_rowTotal);
      //jsp에서 표현할 페이징 기법의 코드를 pageCode에다가 저장
      qpageCode = qpage.getSb().toString();

      //JSP에서 표현할 게시물들을 목록으로 받기 위해
      // begin과 end가 필요하다.
      int q_begin = qpage.getBegin();
      int q_end = qpage.getEnd();

      // MyBatis환경을 통해 begin과 end를 전달하면서 
      // 표현할 게시물들을 받는다.
      QaVO[] ar = q_dao.q_getList(q_begin, q_end);

      ModelAndView mv = new ModelAndView();
      mv.addObject("q_pageCode", qpageCode);
      mv.addObject("q_list", ar);
      mv.addObject("q_nowPage", qpage.getNowPage());
      mv.addObject("q_blockList", q_BLOCK_LIST);
      mv.addObject("q_rowTotal", q_rowTotal); // 게시물 앞에 번호찍는용

      session.setAttribute("q_list", ar);
      
      mv.setViewName("qanotice");

      return mv;
   }
	
	//qa 쓰기 페이지 이동
	@RequestMapping("/qawrite.inc")
	public ModelAndView q_add(String nowPage) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("nowPage", nowPage);
		mv.setViewName("qawrite");
		
		return mv;
	}
	
	//에디터에 이미지 표현 부분
	   @RequestMapping(value = "/saveImage.inc", method = RequestMethod.POST)
	   @ResponseBody
	   public Map<String, String> saveImage(QaVO vo) throws Exception{
	      String f_name = null;
	      MultipartFile mf = vo.getUpload();
	      if( mf != null &&mf.getSize() > 0) {

	         String path = application.getRealPath(imgPath);
	         f_name = mf.getOriginalFilename();

	         f_name = FileRenameUtill.checkFileName(path, f_name);

	         mf.transferTo(new File(path, f_name));
	      }

	      Map<String, String> map = new HashMap<String, String>();
	      map.put("url", request.getContextPath()+imgPath+"/"+f_name);
	      String url = request.getContextPath()+imgPath+"/"+f_name;
	      return map;
	   }
	
	// 원글 추가 기능
	@RequestMapping(value = "qaAdd.inc",method=RequestMethod.POST)
	public ModelAndView qa_write(QaVO qvo,String nowPage) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		MultipartFile mf = qvo.getUpload();
		
		if(mf != null && mf.getSize()>0) {
			
			String path = application.getRealPath(uploadPath);
			
			String f_name = mf.getOriginalFilename();
			
			f_name = FileRenameUtill.checkFileName(path, f_name);
			
			mf.transferTo(new File(path,f_name));
			
			qvo.setFile_name(f_name);
		}else {
			qvo.setFile_name("");
		}
		
		qvo.setIp(request.getRemoteAddr());
		
		boolean value = q_dao.q_add(qvo);
		
		if(value) 
			mv.setViewName("redirect:/qanotice.inc?nowPage="+nowPage);
		else
			mv.setViewName("redirect:/qawrite.inc?nowPage="+nowPage);
		
		return mv;
	}
	
	// 보기 화면 전환
	@RequestMapping("/qaView.inc")
	public ModelAndView qa_view(String qabnowPage,String qb_idx,String qpwd)throws Exception {
		
		System.out.println(qabnowPage);
		
		if(qabnowPage == null)
			this.nowPage = 1;
		
		ModelAndView mv = new ModelAndView();
		
		// 한번이라도 읽기를 한 게시물
		Object qobj = session.getAttribute("q_read_list");
		List<QaVO> qar_list = null;
		if(qobj != null) {
			qar_list = (List<QaVO>) qobj;
		}else {
			qar_list = new ArrayList<QaVO>();
		}
		
		QaVO qvo = null;
		if(qb_idx != null) {
			qvo =  q_dao.qaview(qb_idx,qpwd);
		
			boolean chk = false;
			for(QaVO qavo: qar_list) {
				if(qvo.getB_idx().equals(qavo.getB_idx())) {
					// 한번 읽기를 수행한 게시물
					chk = true;
					break;
				}
			}
			
		if(!chk) {
			// 한번도 읽기를 하지 않은 경우, hit 증가
			q_dao.qa_hit(qb_idx);
			
			String h = qvo.getHit();
			int hit = Integer.parseInt(h);
			++hit;
			qvo.setHit(String.valueOf(hit));
			
			qar_list.add(qvo);
			
			session.setAttribute("read_list",qar_list);
		}
		}
		mv.addObject("q_vo", qvo);
		mv.setViewName("qaView");
		mv.addObject("qa_idx", qb_idx);
		mv.addObject("qa_nowPage", this.nowPage);
		
		return mv;
	}
	
	// 수정 화면 전환
	@RequestMapping("/qaEditgo.inc")
	public ModelAndView qaedit(String b_idx, String qnowPage,String pwd) {

		System.out.println(qnowPage);
		
		QaVO qvo = q_dao.qaview(b_idx,pwd);

		ModelAndView mv = new ModelAndView();

		mv.addObject("q_vo", qvo);
		mv.addObject("qanowPage",qnowPage);
		mv.setViewName("qaEdit");

		return mv;
	}
	
	// 원글 수정 완료
	@RequestMapping(value = "/qaEditok.inc", method = RequestMethod.POST)
	public ModelAndView qaeditok(QaVO vo) throws Exception{
	
		// 파일 처리시 예외 처리 가능하여 뒤에 throws Exception을 사용 만약 try catch를 사용하면 필요가 없다.
		ModelAndView mv = new ModelAndView();
	
		MultipartFile mf = vo.getUpload();
	
		if(mf != null && mf.getSize()>0) {
			String path = application.getRealPath(uploadPath);
	
			String file_name = mf.getOriginalFilename();
	
			file_name = FileRenameUtill.checkFileName(path, file_name);
	
			mf.transferTo(new File(path,file_name));
	
			vo.setFile_name(file_name);
		}
	
		vo.setIp(request.getRemoteAddr());
	
		boolean value =q_dao.q_edit(vo);
	
		if(value) {
			mv.setViewName("redirect:/qanotice.inc?nowPage="+this.nowPage);
		}
	
		return mv;
	}
	
	//원글 삭제
	@RequestMapping(value = "qaDel.inc",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> del(String b_idx,String pwd){
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		boolean chk = q_dao.q_del(b_idx, pwd);
		
		map.put("chk", chk);
		
		return map;
	}
	
}
