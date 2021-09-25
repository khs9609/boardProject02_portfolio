package boardProject.service;

import java.util.List;

public interface BoardService {
	
	// 글쓰기 저장처리
	public String insertBoard(BoardVO vo) throws Exception;
	
	//게시판 목록
	public List<?> selectBoard(BoardVO vo) throws Exception;
	
	//Total 개수 불러오기
	public int totalBoard(BoardVO vo) throws Exception;
	
	//게시판 상세보기
	public BoardVO selectBoardDetail(int unq) throws Exception; 
	
	//조회수 증가
	public int updateBoardHits(int unq) throws Exception;
	
	//게시판 수정 처리
	public int updateBoard(BoardVO vo) throws Exception;
	
	//암호확인을 위한 서비스
	public int selectBoardPass(BoardVO vo) throws Exception;
	
	//게시물 삭제 처리
	public int deleteBoard(BoardVO vo) throws Exception;
	
}
