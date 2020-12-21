package com.Newmuneeds.berhmkorea;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.data.vo.UserVO;

import mybatis.dao.UserDAO;

@Controller
public class UserController {

	@Autowired
	private UserDAO u_dao;
	
	@Autowired
	private HttpSession session;
	
	 @Autowired
    private KakaoAPI kakao;
	
	//로그인 화면으로
	@RequestMapping(value = "/gologin.inc")
	public ModelAndView gologing() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		
		return mv;
		
	}
	
	// 회원가입 화면으로
	@RequestMapping(value = "goReg.inc")
	public ModelAndView goReg() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Reg");
		
		return mv;
	}
	
	// 회원가입 완료
	@RequestMapping(value = "/regOk.inc",method = RequestMethod.POST)
	public ModelAndView newid(String id,String pw,String name,String nickname)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		UserVO vo = new UserVO();
		
		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setNickname(nickname);
		vo.setStatus("0");
		
		u_dao.search(vo);
		if(vo!=null)
			mv.setViewName("Login");
		
		return mv;
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/idCheck.inc", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> goidCheck(String id){

		Map<String, Object> map = new HashMap<String, Object>();

		boolean chk = u_dao.id_okok(id);
		if(chk) {
			map.put("tru", chk );
		}
		return map;
	}
	
	//아이디 저장
	@RequestMapping(value = "/userdo.inc", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> login_id(String id,String pw) {
		Map<String, Object> map = new HashMap<String, Object>();
		boolean chk = u_dao.log(id,pw);
		map.put("chk", chk);

		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPw(pw);

		//중복 아이디 검사
		UserVO uvo = u_dao.search_user(id,pw);
		session.setAttribute("userVO",uvo);

		return map;
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout.inc",method = {RequestMethod.POST,RequestMethod.GET})
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:home.inc";
	}
	
	
	// 카카오톡 로그인
	 @RequestMapping(value = "/kakaologin.inc")
	 public String kakaoLogin(@RequestParam("code") String code, HttpSession session)throws IOException {
		 
		    String access_Token = kakao.getAccessToken(code);
		    
		    Map<String, Object> userInfo = new HashMap<String, Object>();
		    userInfo = kakao.getUserInfo(access_Token);
		  
		    if (userInfo.get("email") != null) {
		        session.setAttribute("userId", userInfo.get("email"));
		        session.setAttribute("access_Token", access_Token);
		    }
		    session.setAttribute("access_Token1", access_Token);
		    return "home";
		}

	 // 카카오톡 로그 아웃
	 @RequestMapping(value = "/kakaologout.inc")
	 public String Logout(HttpSession session) {
	        //kakao restapi 객체 선언
	        KakaoAPI kr = new KakaoAPI();
	        //노드에 로그아웃한 결과값음 담아줌 매개변수는 세션에 잇는 token을 가져와 문자열로 변환
	        JsonNode node = kr.Logout(session.getAttribute("access_Token1").toString());
	        //결과 값 출력
	        System.out.println("로그인 후 반환되는 아이디 : " + node.get("id"));
	        
	        session.setAttribute("node", node.get("id"));
	        
	        
	        
	        return "redirect:/home.inc";
	    }    

	 // 유저 정보 보러 들어가기
	 @RequestMapping(value = "/gouser.inc",method = RequestMethod.POST)
	 public ModelAndView go_user(String pw,String id)throws Exception {
		 UserVO uvo = u_dao.user_view(pw,id);
		 
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("uvo", uvo);
		 
		 mv.setViewName("gouserview");
		 
		 return mv;
		 
	 }
	 
	 // 유저정보 수정
	 @RequestMapping(value = "/userEdit.inc",method = RequestMethod.POST)
	 public ModelAndView userqa(String pwd, String id)throws Exception{
		 
		 ModelAndView mv = new ModelAndView();
		 
		 Map<String, String> map = new HashMap<String, String>();
		 map.put("id", id);
		 map.put("pwd", pwd);
		 
		 boolean value = u_dao.user_edit(pwd,id);
		 
		 if(value) {
			 mv.setViewName("redirect:/user.inc");
		 }
		 
		 return mv;
	 }
	 
	 //유저정보 삭제
	 @RequestMapping(value = "/userDelete.inc",method = RequestMethod.POST)
	 public ModelAndView userdel(String pw,String id,HttpSession session)throws Exception{
		 logout(session);
		 ModelAndView mv = new ModelAndView();
		 
		 Map<String, String> map = new HashMap<String, String>();
		 map.put("id", id);
		 map.put("pw", pw);
		 
		 boolean value = u_dao.user_del(pw, id);
		 
		 if(value) {
			 mv.setViewName("redirect:home.inc");
		 }
		 
		 return mv;
	 }

}
