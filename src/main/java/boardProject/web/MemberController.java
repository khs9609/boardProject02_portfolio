package boardProject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import boardProject.service.BoardVO;

@Controller
public class MemberController {
	
	
	@RequestMapping("/memberWrite.do")
	public String MemberWrite() {
		return "HsMember/memberWrite";
	}
	
	@RequestMapping("/memberWriteSave.do")
	@ResponseBody
	public String MemberWriteSave(BoardVO vo) throws Exception {
		
		return "";
	}
	
	@RequestMapping("loginWrite.do")
	public String LoginWrite() {
		
		return "HsMember/loginWrite";
	}
}
