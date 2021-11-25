package service;

import java.util.List;

import dao.BoardDao;
import vo.Attach;
import vo.Board;
import vo.Criteria;

public class BoardServiceImpl implements BoardService {
	private BoardDao dao = new BoardDao();
	
	//트랜잭션
	@Override
	public Long write(Board board) {
		// TODO Auto-generated method stub
		//글 작성 수 글 번호 반환
		Long bno =dao.insert(board);
		
		//각 첨부파일에 글번호 부여
		for( Attach attach: board.getAttachs()) {
			attach.setBno(bno);
			dao.writeAttach(attach);
		}
		
		//첨부 파일 작성
		
		
		return bno;
	}
	
	@Override
	public Board read(Long bno) {
		// TODO Auto-generated method stub
		Board board= dao.read(bno);
		board.setAttachs(dao.readAttach(bno));
		return board;
	}

	@Override
	public List<Board> list() {
		return dao.list();
	}
	
	@Override
	public List<Board> list(Criteria cri) {
		List<Board> list = dao.list(cri);
		list.forEach(b-> b.setAttachs(dao.readAttach(b.getBno())));
		return list;
	}

	public void name() {
		
	}
	
	@Override
	public void modify(Board board) {
		dao.update(board);
		
	}
	
	
	@Override
	public void remove(Long bno) {
		dao.delete(bno);
		
	}

	@Override
	public String findOriginBy(String uuid) {
		// TODO Auto-generated method stub
		return dao.findOriginBy(uuid);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return dao.getCount();
	}

	@Override
	public int getCount(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Attach> readAttachByPath(String path) {
		// TODO Auto-generated method stub
		return dao.readAttachByPath(path);
	}

	
}
