package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.SupportVO;

public class SupportDAOImpl implements SupportDAO {
	
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	

	@Override
	public List<SupportVO> selectSupportCriteria(Criteria cri) throws SQLException {
		
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		List<SupportVO> supportList = session.selectList("Support-Mapper.selectSupportList",cri,rowBounds);
		
		return supportList;
	}

	@Override
	public int selectSupportCriteriaTotalCount(Criteria cri) throws SQLException {
		
		int count = session.selectOne("Support-Mapper.selectSupportListCount", cri);
		
		return count;
	}

	@Override
	public SupportVO selectSupportBySupNo(int supNo) throws SQLException {

		SupportVO support = session.selectOne("Support-Mapper.selectSupportBySupNo",supNo);
		
		return support;
	}

	@Override
	public void insertSupport(SupportVO support) throws SQLException {
		session.update("Support-Mapper.insertSupport", support);
	}

	@Override
	public void updateSupport(SupportVO support) throws SQLException {
		session.update("Support-Mapper.updateSupport", support);
	}
	
	@Override
	public void updateSupportCounselor(SupportVO support) throws SQLException {
		session.update("Support-Mapper.updateSupportCounselor",support);
	}
	
	@Override
	public void deleteSupport(int supNo) throws SQLException {
		session.delete("Support-Mapper.deleteSupport", supNo);
	}

	@Override
	public int selectSupportSeqNext() throws SQLException {
		
		int seq_num = session.selectOne("Support-Mapper.selectSupportSeqNext");
		return seq_num;
	}


	

}
