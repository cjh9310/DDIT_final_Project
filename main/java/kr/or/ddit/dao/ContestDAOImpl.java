package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ContestVO;
import kr.or.ddit.dto.OpenRecVO;

public class ContestDAOImpl implements ContestDAO {
	
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ContestVO> selectContestList() throws SQLException {
		List<ContestVO> contestList
			= session.selectList("Contest-Mapper.selectContestList");
		
		return contestList;
	}
	
	@Override
	public List<ContestVO> selectContestCriteria(Criteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<ContestVO> contestList = session.selectList("Contest-Mapper.selectContestList", cri, rowBounds);
		
		return contestList;
	}

	@Override
	public int selectContestCriteriaTotalCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Contest-Mapper.selectContestListCount", cri);
		return count;
	}

	@Override
	public ContestVO selectContestByconNo(int conNo) throws SQLException {
		ContestVO contest = session.selectOne("Contest-Mapper.selectContestByConNo", conNo);
		return contest;
	}

	@Override
	public void insertContest(ContestVO contest) throws SQLException {
		session.update("Contest-Mapper.insertContest", contest);

	}

	@Override
	public void updateContest(ContestVO contest) throws SQLException {
		session.update("Contest-Mapper.updateContest", contest);

	}

	@Override
	public void deleteContest(int conNo) throws SQLException {
		session.delete("Contest-Mapper.deleteContest", conNo);

	}

	@Override
	public int selectContestSeqNext() throws SQLException {
		int seq_num = session.selectOne("Contest-Mapper.selectContestSeqNext"); 
		return seq_num;
	}

}
