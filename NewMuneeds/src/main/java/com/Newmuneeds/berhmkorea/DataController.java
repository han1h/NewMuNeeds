package com.Newmuneeds.berhmkorea;

import javax.servlet.http.HttpSession;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.data.vo.AllVO;

@Controller
public class DataController {

		@Autowired
		private HttpSession session;
	
		
		// 전국 요양 시설
		@RequestMapping(value = "all_noinjung.inc",method = RequestMethod.POST)
		@ResponseBody
		public Map<String, Object>  goallnoinjung() throws Exception{
			
			URL all_injung = new URL("http://apis.data.go.kr/B550928/searchLtcInsttService/getLtcInsttSeachList?servicekey=Oud%2BHdgQ5sdzOBm63z2P37LnXvm3qC5Ch5wGjrAMvP4ZS5%2BsE3OsMqG58x47qS%2BgWp00UrRioTkfHu7xaAWvDA%3D%3D&siDoCd=11&numOfRows=100");
			
			Element root = connectXML(all_injung);
			
			Element a_body = root.getChild("body");
			
			Element  a_items = a_body.getChild("items");
			
			List<Element> a_list = a_items.getChildren("item");
			
			AllVO[] a_ar = new AllVO[a_list.size()];
			
			int i =0;
			for(Element a: a_list) {
				
				AllVO avo = new AllVO();
				
				avo.setSiDoCd(a.getChildText("siDoCd"));
				avo.setSiGunGuCd(a.getChildText("siGunGuCd"));
				avo.setAdminPttnCd(a.getChildText("adminPttnCd"));
				avo.setStartRgtDt(a.getChildText("startRgtDt"));
				avo.setEndRgtDt(a.getChildText("endRgtDt"));
				avo.setStartStpRptDt(a.getChildText("startStpRptDt"));
				avo.setEndStpRptDt(a.getChildText("endStpRptDt"));
				avo.setAdminNm(a.getChildText("adminNm"));
				avo.setLongTermAdminSym(a.getChildText("longTermAdminSym"));
				avo.setLongTermPeribRgtDt(a.getChildText("longTermPeribRgtDt"));
				avo.setStpRptDt(a.getChildText("stpRptDt"));
				
				a_ar[i++] = avo;
			}
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("ar", a_ar);
			
			return map;
		}
		
		
	
	public Element connectXML(URL url) throws Exception{
	      // 연결객체 생성
	      HttpURLConnection conn = (HttpURLConnection)url.openConnection();

	      // 연결객체로 부터 결과를 받는 contentType설정
	      conn.setRequestProperty("Content-Type", "application/xml");

	      conn.connect();

	      // 연결된 결과는 xml문서이고 그 문서를
	      // Document로 로드하기 위해 파서 준비
	      SAXBuilder builder = new SAXBuilder();

	      Document doc = builder.build(conn.getInputStream());

	      // 루트 반환
	      return doc.getRootElement();
	   }
}
