package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.PublicWorkVO;

public interface PublicWorkService {
	
	// 목록 조회
	Map<String, Object> getPublicWorkList(Criteria cri) throws SQLException;
	
	// 상세보기
	PublicWorkVO getPublicWork(int pubNo) throws SQLException;
	
	// 전체보기
	List<PublicWorkVO> getAllPublicWokrList(String adId) throws SQLException;
	
	// 수정화면 상세
	PublicWorkVO getPublicWorkModify(int pubNo) throws SQLException;
	
	// 등록
	void regist(PublicWorkVO publicWork) throws SQLException;
	
	// 수정
	void modify(PublicWorkVO publicWork) throws SQLException;
	
	// 삭제
	void remove(int pubNo) throws SQLException;
	
}
