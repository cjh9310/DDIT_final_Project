package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ContestVO;

public interface ContestService {
	//리스트조회
	Map<String, Object> getContestList()throws SQLException;
	
	Map<String, Object> getContestList(Criteria cri)throws SQLException;
	
	//상세보기
	ContestVO getContest(int conNo) throws SQLException;
	
	//등록
	void regist(ContestVO contest) throws SQLException;
	
	//수정
	void modify(ContestVO contest) throws SQLException;
	
	//삭제
	void remove(int conNo) throws SQLException;
	
}
