package boardProject.serviceImpl;

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

}
