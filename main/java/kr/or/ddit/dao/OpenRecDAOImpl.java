package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;


import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ApplicantsVO;
import kr.or.ddit.dto.OpenRecVO;

public class OpenRecDAOImpl implements kr.or.ddit.dao.OpenRecDAO {
	
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<OpenRecVO> selectOpenRecList() throws SQLException {
		List<OpenRecVO> openRecList
			= session.selectList("OpenRec-Mapper.selectOpenRecList");
		
		return openRecList;
	}

	@Override
	public List<OpenRecVO> selectSearchOpenRecList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		List<OpenRecVO> openRecList = session.selectList("OpenRec-Mapper.selectSearchOpenRecList",cri,rowBounds);
		
		return openRecList;
	}

	@Override
	public int selectOpenRecListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("OpenRec-Mapper.selectOpenRecListCount",cri);
		return count;
	}

	@Override
	public List<OpenRecVO> selectOpenRecListByConm(String open_conm) throws SQLException {
		List<OpenRecVO> openRecList
			= session.selectList("OpenRec-Mapper.selectOpenRecListByConm",open_conm);
		return openRecList;
	}
	
	@Override
	public List<OpenRecVO> selectOpenRecListForMain() throws SQLException {
		List<OpenRecVO> openRecList
		= session.selectList("OpenRec-Mapper.selectOpenRecListForMain");
		return openRecList;
	}

	@Override
	public OpenRecVO selectOpenRecListByNo(int open_seqno) throws SQLException {
		OpenRecVO openRec
			= session.selectOne("OpenRec-Mapper.selectOpenRecListbyNo", open_seqno);
		return openRec;
	}

	@Override
	public int insertOpenRec(OpenRecVO openRec) throws SQLException {
		int check = session.insert("OpenRec-Mapper.insertOpenRec", openRec);
		return check;
	}

	
}
