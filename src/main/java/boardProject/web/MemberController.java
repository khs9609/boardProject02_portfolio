package boardProject.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import boardProject.service.BoardVO;
import boardProject.service.MemberService;
import boardProject.service.MemberVO;

@Controller
public class MemberController {
	
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping("/memberWrite.do")
	public String MemberWrite() {
		return "HsMember/memberWrite";
	}
	
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
	
	@RequestMapping("loginWrite.do")
	public String LoginWrite() {
		
		return "HsMember/loginWrite";
	}
}
