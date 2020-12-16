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
	
	// ��ü �Խù� ���� ��ȯ�ϴ� ��� - list.jsp���� ȣ��
	public int getTotalCount() {
		
		int cnt = template.selectOne("berhm.count");
		
		return cnt;
		
	}
	
	// ���ϴ� �������� �Խù��� ���ȭ������ ǥ���ϱ� ���� '�迭'�� ��ȯ�ϴ� ���
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

	// ���� �߰�
	public boolean b_add(BbsVO bvo) {
		
			boolean chk = false;
			
			int cnt = template.insert("berhm.b_add",bvo);
			if(cnt>0) {
				chk = true;
			}
			
			return chk;
	}
	
	// �Խù� ����
	public BbsVO getview(String b_idx,String phone) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("b_idx", b_idx);
		map.put("phone", phone);
		
		BbsVO vo = template.selectOne("berhm.getBbs", map);
		
		return vo;
	}
	
	// ���ڷ� ���� seq�� �Խù� hit�� �����ϴ� ���
	public void b_hit(String b_idx) {
		int cnt =template.update("berhm.b_hit", b_idx);
		
	}
	
}
