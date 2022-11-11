package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.ApplicantsVO;

public class AppliedPersonDAOImpl implements AppliedPersonDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public ApplicantsVO appliedPersonList(String id) throws SQLException {
		ApplicantsVO appliedPersonResume = session.selectOne("Applicants-Mapper.appliedPersonList",id);
		return appliedPersonResume;
	}

}
