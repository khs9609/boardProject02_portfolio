package boardProject.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import boardProject.service.BoardVO;
import boardProject.service.MemberService;
import boardProject.service.MemberVO;

@Controller
public class MemberController {
	
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	
	/* 회원가입 화면 */
	@RequestMapping("/memberWrite.do")
	public String MemberWrite() {
		return "HsMember/memberWrite";
	}
	
	/* 회원가입 처리 */
	@RequestMapping("/memberWriteSave.do")
	@ResponseBody
	public String insertMember(MemberVO vo) throws Exception {
		
		String msg = "";
		String result = memberService.insertMember(vo);
		if(result == null) {
			msg = "ok";
		}
		
		return msg;
	}
	/* 로그인 페이지 화면 */
	@RequestMapping("loginWrite.do")
	public String LoginWrite() {
		
		return "HsMember/loginWrite";
	}
	
	/* 우편번호 검색 화면 */
	@RequestMapping("/post1.do")
	public String post1() {
		return "HsMember/post1";
	}
	
	/* 우편번호 검색 결과 */
	@RequestMapping("/post2.do")
	public String post2(String dong, ModelMap model) throws Exception {
		
		List<?> list = memberService.selectPostList(dong);
		model.addAttribute("list", list);
		
		return "HsMember/post2";
	}
	
}
