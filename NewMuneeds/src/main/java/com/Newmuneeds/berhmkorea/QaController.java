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
	
	//����¡ ����� ���� ��� ��
	public final int q_BLOCK_LIST = 10;  // ���������� ������ �Խù�
	public final int q_BLOCK_PAGE = 5; // �Ѻ��� ������ ������ ��
	
	// ��� ������
	int nowPage;
	int q_rowTotal;
	String qpageCode;
	
	// qa ����Ʈ ȭ������ ��ȯ�ϱ�
   @RequestMapping("/qanotice.inc")
   public ModelAndView handleRequest(String nowPage) throws Exception {
      // ����ڰ� ���������� notice.inc��� ��û ���� ��
      // �����ϴ� ��

      // ���� ������ ���� �޴´�.
      if(nowPage == null)
         this.nowPage = 1;
      else
         this.nowPage = Integer.parseInt(nowPage);


      // �� �Խù��� ���� MyBatisȯ���� ���� ��´�.
      q_rowTotal =q_dao.getQaTotalCount();

      // ����¡ ó���� ���� ��ü ����
      q_Paging qpage = new q_Paging(this.nowPage, q_BLOCK_LIST, q_BLOCK_PAGE, q_rowTotal);
      //jsp���� ǥ���� ����¡ ����� �ڵ带 pageCode���ٰ� ����
      qpageCode = qpage.getSb().toString();

      //JSP���� ǥ���� �Խù����� ������� �ޱ� ����
      // begin�� end�� �ʿ��ϴ�.
      int q_begin = qpage.getBegin();
      int q_end = qpage.getEnd();

      // MyBatisȯ���� ���� begin�� end�� �����ϸ鼭 
      // ǥ���� �Խù����� �޴´�.
      QaVO[] ar = q_dao.q_getList(q_begin, q_end);

      ModelAndView mv = new ModelAndView();
      mv.addObject("q_pageCode", qpageCode);
      mv.addObject("q_list", ar);
      mv.addObject("q_nowPage", qpage.getNowPage());
      mv.addObject("q_blockList", q_BLOCK_LIST);
      mv.addObject("q_rowTotal", q_rowTotal); // �Խù� �տ� ��ȣ��¿�

      session.setAttribute("q_list", ar);
      
      mv.setViewName("qanotice");

      return mv;
   }
	
	//qa ���� ������ �̵�
	@RequestMapping("/qawrite.inc")
	public ModelAndView q_add(String nowPage) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("nowPage", nowPage);
		mv.setViewName("qawrite");
		
		return mv;
	}
	
	//�����Ϳ� �̹��� ǥ�� �κ�
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
	
	// ���� �߰� ���
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
	
	// ���� ȭ�� ��ȯ
	@RequestMapping("/qaView.inc")
	public ModelAndView qa_view(String qabnowPage,String qb_idx,String qpwd)throws Exception {
		
		if(qabnowPage == null)
			this.nowPage = 1;
		
		ModelAndView mv = new ModelAndView();
		
		// �ѹ��̶� �б⸦ �� �Խù�
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
					// �ѹ� �б⸦ ������ �Խù�
					chk = true;
					break;
				}
			}
			
		if(!chk) {
			// �ѹ��� �б⸦ ���� ���� ���, hit ����
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
	
	// ���� ȭ�� ��ȯ
	@RequestMapping("/qaEditgo.inc")
	public ModelAndView qaedit(String b_idx, String qnowPage,String pwd) {

		QaVO qvo = q_dao.qaview(b_idx,pwd);

		ModelAndView mv = new ModelAndView();

		mv.addObject("q_vo", qvo);
		mv.addObject("qanowPage",qnowPage);
		mv.setViewName("qaEdit");

		return mv;
	}
	
	// ���� ���� �Ϸ�
	@RequestMapping(value = "/qaEditok.inc", method = RequestMethod.POST)
	public ModelAndView qaeditok(QaVO vo) throws Exception{
	
		// ���� ó���� ���� ó�� �����Ͽ� �ڿ� throws Exception�� ��� ���� try catch�� ����ϸ� �ʿ䰡 ����.
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
	
	//���� ����
	@RequestMapping(value = "qaDel.inc",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> del(String b_idx,String pwd){
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		boolean chk = q_dao.q_del(b_idx, pwd);
		
		map.put("chk", chk);
		
		return map;
	}
	
}
