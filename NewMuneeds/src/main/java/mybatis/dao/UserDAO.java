package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.data.vo.UserVO;

public class UserDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// �Ҽ� �α��ν� ȸ�������� �ߴ��� �Ǵ� �κ� 
		public boolean search(UserVO vo) {
			//�ű԰����ڶ�� true 
			//������ ���ԵǾ��ִٸ� false
			boolean chk = true;
			
			int cnt = ss.selectOne("user.search_id", vo.getId());
			//id�� �־����� cnt �� ���� �ö󰡸� 
			if(cnt > 0) {
				chk = false;
			}			
			
			if(chk) {
				insertId(vo);
			}
			
			return chk; 
		}
	
	// ȸ�������� �ϴ� ��
	public void insertId(UserVO uvo) {
		int cnt2 = ss.insert("user.h_add", uvo);
	}
	
	// ȸ�����Խ� ���̵� �ߺ� Ȯ��
	public boolean id_okok(String id) {
		boolean chk = false;
		
		List<UserVO> cnt =  ss.selectList("user.id_ok",id);
		for(UserVO uvo:cnt) {
			if(uvo.getId().equals(id)) {
				chk = true;
				break;
			}
		}
		return chk;
	}
	
	// �α���
	public boolean log(String id, String pw) {
		boolean chk = false; // id , pw �Ѵ� ������ true �ֱ��
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		
		List<UserVO> cnt = ss.selectList("user.id_login", map);
		
		if(cnt.size()>0) {
			chk = true;
		}
		return chk;
	}
	
	//ȸ�� ���� ã�� 
	public UserVO search_user(String id,String pw) {
		UserVO[] ar = null;
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("id", id);
		map.put("pw", pw);
		UserVO uvo = ss.selectOne("user.id_login", map);
		
		return uvo;
	}
	
}
