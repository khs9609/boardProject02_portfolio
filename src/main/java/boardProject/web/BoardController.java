package boardProject.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	/*게시판 목록 보기*/
	@RequestMapping("/boardList.do")
	public String selectBoard(BoardVO vo, ModelMap model) throws Exception {
		
		// 1.보여질 게시물 개수를 위한 설정 값
		int unit = 5;
		
		// 2.total 갯수
		int total = boardService.totalBoard(vo);
		
		// 3. 보여질 페이지 수
		int totalPage = (int)Math.ceil((double)total/unit);
		
		//4. 현재 보여지는 페이지
		int viewPage = vo.getViewPage();
		
		//4-1. viewpage를 임의로 건드리거나, 아무것도 건드리지 않고 페이지만 접속했을 떄
		if(viewPage > totalPage || viewPage < 1) {
			viewPage = 1;
		}
		
		//5. 시작페이지와 끝페이지 설정
		int startIndex = (viewPage-1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
		
		//6. 게시글을 최신순서대로 리스트에 표시
		int startRowno = total - (viewPage - 1) * unit;
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		//0. 리스트를 출력
		List<?> list = boardService.selectBoard(vo);
		
		model.addAttribute("resultList", list);
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		
		model.addAttribute("rowNum", startRowno);

		return "HsBoard/boardList";
	}
	
	/* 게시판 상세보기  */
	@RequestMapping("/boardDetail.do")
	public String boardDetail(BoardVO vo, ModelMap model) throws Exception {
		
		BoardVO boardVO = boardService.selectBoardDetail(vo.getUnq());
		
		// 조회수 증가
		boardService.updateBoardHits(vo.getUnq());

		model.addAttribute("boardVO", boardVO);
		
		return "HsBoard/boardDetail";
	}
	
	/* 게시판 수정화면 */
	@RequestMapping("/boardModify.do")
	public String boardModify(BoardVO vo, ModelMap model) throws Exception{
		
		BoardVO boardVO = boardService.selectBoardDetail(vo.getUnq());
		model.addAttribute("boardVO", boardVO);
		
		return "HsBoard/boardModify";
	}
	
	
	
	
	
	
}
