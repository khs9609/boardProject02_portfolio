package boardProject.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import boardProject.service.BoardService;
import boardProject.service.BoardVO;

@Controller
public class BoardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	/*메인화면*/
	@RequestMapping("/main.do")
	public String Main() {
		
		return "HsBoard/main";
	}
	
	/* 글쓰기 화면 */
	@RequestMapping("boardWrite.do")
	public String boardWrite() {
		
		return "HsBoard/boardWrite";
	}
	
	/* 글쓰기 저장처리 */
	@RequestMapping("boardWriteSave.do")
	@ResponseBody
	public String insertBoard(BoardVO vo) throws Exception {
		
		// String result를 DAO?service로 받아와서
		// result가 null일때 문제가 없다는 것이기에, ok를 반환
		// ok는 새로운 문자열을 생성해 리턴값으로 반환되도록 설정
		
		String result = boardService.insertBoard(vo);
		String msg = "";
		if(result == null) msg="ok";
		else msg = "fail";
		
		return msg;
	}
}
