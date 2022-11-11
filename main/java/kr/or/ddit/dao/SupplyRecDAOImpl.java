package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.SupplyRecVO;

public class SupplyRecDAOImpl implements SupplyRecDAO {
	
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<SupplyRecVO> selectSupplyRecByNo(int open_seqno) throws SQLException {
		List<SupplyRecVO> supplyRecList =
				session.selectList("SupplyRec-Mapper.selectSupplyRecByNo", open_seqno);
		return supplyRecList;
	}

}
