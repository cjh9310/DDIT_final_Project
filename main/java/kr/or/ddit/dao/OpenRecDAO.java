package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ApplicantsVO;
import kr.or.ddit.dto.OpenRecVO;

public interface OpenRecDAO {
	List<OpenRecVO> selectOpenRecList() throws SQLException;
	
	List<OpenRecVO> selectSearchOpenRecList(Criteria cri) throws SQLException;
	
	int selectOpenRecListCount(Criteria cri) throws SQLException;
	
	List<OpenRecVO> selectOpenRecListByConm(String open_conm) throws SQLException;

	List<OpenRecVO> selectOpenRecListForMain() throws SQLException;
	
	OpenRecVO selectOpenRecListByNo(int open_seqno) throws SQLException;
	
	int insertOpenRec(OpenRecVO openRec) throws SQLException;
}
