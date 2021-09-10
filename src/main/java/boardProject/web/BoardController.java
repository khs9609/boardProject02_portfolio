package boardProject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/main.do")
	public String Main() {
		
		return "HsBoard/main";
	}
	@RequestMapping("boardWrite.do")
	public String boardWrite() {
		
		return "HsBoard/boardWrite";
	}
}
