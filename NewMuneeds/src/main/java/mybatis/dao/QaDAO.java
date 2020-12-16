package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.data.vo.BbsVO;
import com.data.vo.QaVO;

public class QaDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	// 질문사항 게시물의 '수'를 반환하는 기능
	public int getQaTotalCount() {
		int cnt = template.selectOne("qa.qa_totalcount");
		
		return cnt;
	}
	
	// 원하는 페이지의 게시물을 목록 화면으로 표현하기 위한 배열 표현
	public QaVO[] q_getList(int begin,int end) {
		
		QaVO[] q_ar = null;
		
		Map<String, Integer> q_map = new HashMap<String, Integer>();
		
		q_map.put("begin", begin);
		q_map.put("end", end);
		
		List<QaVO> q_list = template.selectList("qa.qalist", q_map);
		
		// 받은 리스트 준비
		if(q_list != null) {
			
			q_ar = new QaVO[q_list.size()];
			q_list.toArray(q_ar);
		}
		
		return q_ar;
	}
	
	// QA 원글 추가
	public boolean q_add(QaVO qvo) {
		boolean chk = false;
		int cnt = template.insert("qa.q_add", qvo);
		if (cnt>0) {
			chk = true;
		}
		return chk;
	}
	
	// 게시물 보기
	public QaVO qaview(String b_idx,String pwd) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("b_idx", b_idx);
		map.put("pwd", pwd);
		
		QaVO vo = template.selectOne("qa.qagetBbs", map);
		return vo;
	}
	
	// 인자로 받은 seq의 게시물 hit를 증가하는 기능
	public void qa_hit(String b_idx) {
		int cnt =template.update("qa.q_hit", b_idx);
	}
	
	// 게시물 수정 
	public boolean q_edit(QaVO vo) {
		
		boolean value = false;
		
		int cnt = template.update("qa.q_edit",vo);
		
		if(cnt > 0)
			value = true;
		
		return value;
	}
	
	// 게시물 삭제
	public boolean q_del(String b_idx, String pwd) {
		
		boolean chk = false;
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("b_idx", b_idx);
		map.put("pwd", pwd);
		
		int cnt = template.update("qa.q_del", map);
		
		if(cnt > 0) {
			chk = true;
		}
		
		return chk;
	}
	
}
