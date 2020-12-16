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
	
	@RequestMapping(value = "ha1000.inc")
	public String ha1000() {
		return "ha1000";
	}
	
}
