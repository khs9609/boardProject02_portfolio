package boardProject.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Repository;

import boardProject.service.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO{

	public String insertBoard(BoardVO vo) {
		return (String) insert("boardDAO.insertBoard", vo);
	}

	public List<?> selectBoard(BoardVO vo) {
		return list("boardDAO.selectBoard", vo);
	}

	public int totalBoard(BoardVO vo) {
		return (int) select("boardDAO.totalBoard", vo);
	}

	public BoardVO selectBoardDetail(int unq) {
		return (BoardVO) select("boardDAO.selectBoardDetail", unq);
	}

}
