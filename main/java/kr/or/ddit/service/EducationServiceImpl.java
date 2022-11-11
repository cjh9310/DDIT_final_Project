package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.EducationDAO;
import kr.or.ddit.dto.EducationVO;

public class EducationServiceImpl implements EducationService {
	
	private EducationDAO educationDAO;
	public void setEducationDAO(EducationDAO educationDAO) {
		this.educationDAO = educationDAO;
	}
	
	@Override
	public Map<String, Object> getEducationListById(String id) throws SQLException {
		Map<String, Object> eduMap = new HashMap<String, Object>();
		List<EducationVO> eduList = educationDAO.selectEducationById(id);
		eduMap.put("eduList", eduList);
		return eduMap;
	}
	
	@Override
	public EducationVO getEducationByEduNo(String eduNo) throws SQLException {
		EducationVO education = educationDAO.selectEducationByEduNo(eduNo);
		return education;
	}
	
	@Override
	public void regist(EducationVO education) throws SQLException {
		educationDAO.insertEducation(education);
	}
	
	@Override
	public void modify(EducationVO education) throws SQLException {
		educationDAO.updateEducation(education);
	}
	
	@Override
	public void remove(String eduNo) throws SQLException {
		educationDAO.deleteEducation(eduNo);
	}

}
