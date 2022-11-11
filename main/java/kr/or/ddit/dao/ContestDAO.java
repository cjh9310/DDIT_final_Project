package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ContestVO;

public interface ContestDAO {
	
	List<ContestVO> selectContestList() throws SQLException;
	
	List<ContestVO> selectContestCriteria(Criteria cri)throws SQLException;
	
	int selectContestCriteriaTotalCount(Criteria cri)throws SQLException;
	
	ContestVO selectContestByconNo(int conNo)throws SQLException;
	
	void insertContest(ContestVO contest)throws SQLException;
	
	void updateContest(ContestVO contest)throws SQLException;
	
	void deleteContest(int conNo)throws SQLException;
	
	int selectContestSeqNext()throws SQLException;

	
	
}
