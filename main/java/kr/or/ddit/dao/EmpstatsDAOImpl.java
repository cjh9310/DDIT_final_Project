package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.EmpstatsVO;

public class EmpstatsDAOImpl implements EmpstatsDAO {
	
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<EmpstatsVO> selectEmpStats() throws SQLException {
		List<EmpstatsVO> empstatsList = session.selectList("Empstats-Mapper.selectEmpStats");
		return empstatsList;
	}

}
