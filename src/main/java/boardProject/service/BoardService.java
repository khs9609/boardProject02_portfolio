package boardProject.service;

import java.util.List;

public interface BoardService {
	
	// 글쓰기 저장처리
	public String insertBoard(BoardVO vo) throws Exception;
	
	//게시판 목록
	public List<?> selectBoard(BoardVO vo) throws Exception;
}
