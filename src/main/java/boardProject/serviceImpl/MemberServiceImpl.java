package boardProject.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import boardProject.service.MemberService;
import boardProject.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Resource(name="memberDAO")
	private MemberDAO memberDAO;
	
	@Override
	public String insertMember(MemberVO vo) throws Exception {
		return memberDAO.insertMember(vo);
	}
	@Override
	public int idCheck(String userid) throws Exception {
		return memberDAO.idCheck(userid);
	}

	@Override
	public List<?> selectPostList(String dong) throws Exception {
		return memberDAO.selectPostList(dong);
	}


}
