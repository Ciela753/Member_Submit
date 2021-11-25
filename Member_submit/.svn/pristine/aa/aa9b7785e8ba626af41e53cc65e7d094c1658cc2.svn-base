package service;

import java.util.List;

import vo.Attach;
import vo.Board;
import vo.Criteria;

public interface BoardService {
	//글쓰기
	Long write(Board board);
	//글조회
	Board read(Long bno);
	//목록 조회
	List<Board> list();
	//목록 조회
	List<Board> list(Criteria cri);
	//글수정
	void modify(Board board);
	//글삭제
	void remove(Long bno);
	
	String findOriginBy(String uuid);

	//글 개수
	int getCount(Criteria cri);
	int getCount();
	
	 List<Attach> readAttachByPath(String path);
	
}
