package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.EducationVO;

public class EducationDAOImpl implements EducationDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<EducationVO> selectEducationById(String id) throws SQLException {
		List<EducationVO> eduList = session.selectList("Education-Mapper.selectEducationById", id);
		return eduList;
	}
	
	@Override
	public EducationVO selectEducationByEduNo(String eduNo) throws SQLException {
		EducationVO education = session.selectOne("Education-Mapper.selectEducationByEduNo", eduNo);
		return education;
	}
	
	@Override
	public void insertEducation(EducationVO education) throws SQLException {
		session.update("Education-Mapper.insertEducation", education);
	}
	
	@Override
	public void updateEducation(EducationVO education) throws SQLException {
		session.update("Education-Mapper.updateEducation", education);
	}
	
	@Override
	public void deleteEducation(String eduNo) throws SQLException {
		session.update("Education-Mapper.deleteEducation", eduNo);
	}

}
