package com.Newmuneeds.berhmkorea;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class golist {

	// Ȩ ȭ������ ����
	@RequestMapping(value = "home.inc")
	public String gohome() {
		return "home";
	}
	
	// ȸ�� �Ұ� ȭ������ ����- ���� ��� ����
	@RequestMapping(value = "Introduce.inc")
	public String gointroduce() {
		return "Introduce";
	}
	
	// ���� �������� �̵�
	@RequestMapping(value = "gonoinjung.inc")
	public String goinjung() {
			return "noinjung";
	}
	
	// ������������ �̵�
	@RequestMapping(value = "goexolanation.inc")
	public String gomap() {
		return "Explanation";
	}
	
	// ���� ȭ������ �̵�
	@RequestMapping(value = "kMap.inc")
	public String goMap() {
		return "kMap";
	}
	
	// ���� ȭ������ �̵�
	@RequestMapping(value = "payment.inc")
	public String goPayments() {
		return "payment";
	}
	
	//Q&A ȭ�� ��ȯ
	@RequestMapping(value = "QandA.inc")
	public String QandA() {
		return "QandAnotice";
	}
	
	@RequestMapping(value = "/kaj.inc",method = RequestMethod.GET)
	@ResponseBody
	public Map<String, String> gogo(String dt){
		Map<String, String> map = new HashMap<String, String>();
		map.put("addr", dt);
		
		return map;
	}
	
	// shop 화면 전환 
	@RequestMapping(value = "shop.inc")
	public String goshop() {
		return "stuff";
	}
	
	// 자연가글 화면 이동
	@RequestMapping(value = "Goggles.inc")
	public String Goggles() {
		return "Goggles";
	}
	
	// 자연가글 화면 이동
	@RequestMapping(value = "ha1000.inc")
	public String ha1000() {
		return "h1000";
	}
	
	// 자연가글 화면 이동
	@RequestMapping(value = "caredeaf.inc")
	public String caredeaf() {
		return "caredeaf";
	}
	
	// 관리자 페이지
	@RequestMapping(value = "/admin.inc")
	public String goadmin() {
		return "admin";
	}
	
	// 사용자 페이지 
	@RequestMapping(value = "/user.inc")
	public String goUser() {
		return "user";
	}
	
	//popup창 발생
	@RequestMapping(value = "/popup.inc")
	public String goPopUP() {
		return "refund";
	}
	
	// 회원정보 수정화면 가기전 비밀번호 입력하러 가기
	@RequestMapping(value = "/useredit.inc")
	public String usereditgo() {
		return "usereditgo";
	}
	
	// 비밀번호 popup창 발생
	@RequestMapping(value = "/pwpopup.inc")
	public String gopwPopUP() {
		return "userEdit";
	}
	
	// 회원탈퇴 화면 전환
	@RequestMapping(value = "/userdel.inc")
	public String userdel() {
		return "userDel";
	}
}
