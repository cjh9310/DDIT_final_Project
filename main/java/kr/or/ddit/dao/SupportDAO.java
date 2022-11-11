package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.SupportVO;

public interface SupportDAO {
	
	List<SupportVO> selectSupportCriteria(Criteria cri) throws SQLException;
	
	int selectSupportCriteriaTotalCount(Criteria cri) throws SQLException;
	
	SupportVO selectSupportBySupNo(int supNo) throws SQLException;
	
	void insertSupport(SupportVO support) throws SQLException;
	
	//회원이 수정하는 상담신청내용
	void updateSupport(SupportVO support) throws SQLException;
	
	//상담사가 상태를 변경하는 update
	void updateSupportCounselor(SupportVO support) throws SQLException;
	
	void deleteSupport(int supNo) throws SQLException;
	
	int selectSupportSeqNext() throws SQLException;
}
