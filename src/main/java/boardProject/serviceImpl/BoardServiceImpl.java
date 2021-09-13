package boardProject.serviceImpl;

import javax.annotation.Resource;

import boardProject.service.BoardService;
import boardProject.service.BoardVO;

public class BoardServiceImpl implements BoardService {

	@Resource(name="boardDAO")
	private BoardDAO boardDAO;
	
	@Override
	public String insertBoard(BoardVO vo) throws Exception {
		return boardDAO.insertBoard(vo);
	}

}
