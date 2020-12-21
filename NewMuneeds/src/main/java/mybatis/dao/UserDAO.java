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
	
	
	// 회원정보 보기
	public UserVO user_view(String pw,String id) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pw", pw);
		map.put("id", id);
		
		UserVO vo = ss.selectOne("user.user_info", map);
		
		return vo;
	}
	
	//회원 정보 수정
	public boolean user_edit(String pwd,String id) {
		boolean chk = false;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pwd", pwd);
		map.put("id", id);
		
		int cnt = ss.update("user.user_edit" , map);
		
		if(cnt>0) {
			chk = true;
		}
		return chk;
	}
	
	// 회원 정보 삭제
	public boolean user_del(String pw,String id) {
		boolean chk = false;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pw", pw);
		map.put("id", id);
		
		int cnt = ss.update("user.user_del", map);
		
		if(cnt>0) {
			chk = true;
		}
		
		return chk;
	}
	
}
