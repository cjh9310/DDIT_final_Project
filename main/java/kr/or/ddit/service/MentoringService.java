package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.MentoringVO;

public interface MentoringService {
	
	//리스트 조회
	Map<String, Object> getMentoringList(Criteria cri)throws SQLException;
	
	//상세보기
	MentoringVO getMentoring(int menNo) throws SQLException;
	
	//등록
	void registAll(MentoringVO mentoring)throws SQLException;
	
	void regist(MentoringVO mentoring)throws SQLException;
	
	//수정
	void modify(MentoringVO mentoring)throws SQLException;
	
	//진행과정 수정
	void modifyComem(MentoringVO mentoring)throws SQLException;
	
	//삭제
	void remove(int menNo)throws SQLException;
}
