package boardProject.service;

import java.util.List;

public interface MemberService {

	//회원가입 처리
	public String insertMember(MemberVO vo) throws Exception;
	
	//우편번호 검색
	public List<?> selectPostList(String dong) throws Exception;
	
}
