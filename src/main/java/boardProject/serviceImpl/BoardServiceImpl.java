package boardProject.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import boardProject.service.BoardService;
import boardProject.service.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public String insertBoard(BoardVO vo) throws Exception {
		return boardDAO.insertBoard(vo);
	}

	@Override
	public List<?> selectBoard(BoardVO vo) throws Exception {
		return boardDAO.selectBoard(vo);
	}

	@Override
	public int totalBoard(BoardVO vo) throws Exception {
		return boardDAO.totalBoard(vo);
	}

	@Override
	public BoardVO selectBoardDetail(int unq) throws Exception {
		return boardDAO.selectBoardDetail(unq);
	}

	@Override
	public int updateBoardHits(int unq) throws Exception {
		return boardDAO.updateBoardHits(unq);
	}

	@Override
	public int updateBoard(BoardVO vo) throws Exception {
		return boardDAO.updateBoard(vo);
	}

	@Override
	public int selectBoardPass(BoardVO vo) throws Exception {
		return boardDAO.selectBoardPass(vo);
	}

	@Override
	public int deleteBoard(BoardVO vo) throws Exception {
		return boardDAO.deleteBoard(vo);
	}

}
