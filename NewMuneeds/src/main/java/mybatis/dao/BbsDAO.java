package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.data.vo.BbsVO;

public class BbsDAO {
	
	@Autowired
	private SqlSessionTemplate template;
	
	// 전체 게시물 수를 반환하는 기능 - list.jsp에서 호출
	public int getTotalCount() {
		
		int cnt = template.selectOne("berhm.count");
		
		return cnt;
		
	}
	
	// 원하는 페이지의 게시물을 목록화면으로 표현하기 위해 '배열'로 반환하는 기능
	public BbsVO[] b_getList(int begin,int end) {
		BbsVO[] ar = null;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		map.put("begin", begin);
		map.put("end", end);
		
		List<BbsVO> list = template.selectList("berhm.list", map);
		
		if(list != null) {
				ar = new BbsVO[list.size()];
				
				list.toArray(ar);
		}
		
		return ar;
	}

	// 원글 추가
	public boolean b_add(BbsVO bvo) {
		
			boolean chk = false;
			
			int cnt = template.insert("berhm.b_add",bvo);
			if(cnt>0) {
				chk = true;
			}
			
			return chk;
	}
	
	// 게시물 보기
	public BbsVO getview(String b_idx,String phone) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("b_idx", b_idx);
		map.put("phone", phone);
		
		BbsVO vo = template.selectOne("berhm.getBbs", map);
		
		return vo;
	}
	
	// 인자로 받은 seq의 게시물 hit를 증가하는 기능
	public void b_hit(String b_idx) {
		int cnt =template.update("berhm.b_hit", b_idx);
		
	}
	
}
