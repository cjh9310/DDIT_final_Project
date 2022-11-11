package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.MentoringVO;

public interface MentoringDAO {
	
	List<MentoringVO> selectMentoringCriteria(Criteria cri) throws SQLException;
	
	int selectMentoringCriteriaTotalCount(Criteria cri) throws SQLException;
	
	MentoringVO selectMentoringByMenNo(int menNo)throws SQLException;
	
	void insertAllMentoring(MentoringVO mentoring) throws SQLException;
	
	void insertMentoring(MentoringVO mentoring)throws SQLException;
	
	void updateMentoring(MentoringVO mentoring)throws SQLException;
	
	void updateMentoringComem(MentoringVO mentoring) throws SQLException;
	
	void deleteMentoring(int menNo)throws SQLException;
	
	int selectMentoringSeqNext()throws SQLException;

	

	
	
}
