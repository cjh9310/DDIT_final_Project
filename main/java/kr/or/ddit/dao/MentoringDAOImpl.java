package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.MentoringVO;

public class MentoringDAOImpl implements MentoringDAO{
	
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<MentoringVO> selectMentoringCriteria(Criteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<MentoringVO> mentoringList = session.selectList("Mentoring-Mapper.selectMentoringList", cri,rowBounds);
		
		return mentoringList;
	}

	@Override
	public int selectMentoringCriteriaTotalCount(Criteria cri) throws SQLException {
		
		int count = session.selectOne("Mentoring-Mapper.selectMentoringListCount",cri);
		return count;
	}

	@Override
	public MentoringVO selectMentoringByMenNo(int menNo) throws SQLException {
		
		MentoringVO mentoring = session.selectOne("Mentoring-Mapper.selectMentoringByMenNo", menNo);
		return mentoring;
	}

	@Override
	public void insertAllMentoring(MentoringVO mentoring) throws SQLException {
		session.update("Mentoring-Mapper.insertAllMentoring", mentoring);
		
	}
	
	@Override
	public void insertMentoring(MentoringVO mentoring) throws SQLException {
		session.update("Mentoring-Mapper.insertMentoring", mentoring);
		
	}

	@Override
	public void updateMentoring(MentoringVO mentoring) throws SQLException {
		session.update("Mentoring-Mapper.updateMentoring", mentoring);
		
	}
	
	@Override
	public void updateMentoringComem(MentoringVO mentoring) throws SQLException {
		session.update("Mentoring-Mapper.updateMentoringComem", mentoring);
		
	}

	@Override
	public void deleteMentoring(int menNo) throws SQLException {
		session.delete("Mentoring-Mapper.deleteMentoring", menNo);
		
	}

	@Override
	public int selectMentoringSeqNext() throws SQLException {
		int seq_num = session.selectOne("Mentoring-Mapper.selectMentoringSeqNext");
		return seq_num;
	}

	
	
}
