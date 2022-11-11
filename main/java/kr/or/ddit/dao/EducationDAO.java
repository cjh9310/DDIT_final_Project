package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.EducationVO;

public interface EducationDAO {
	
	List<EducationVO> selectEducationById(String id) throws SQLException;
	
	EducationVO selectEducationByEduNo(String eduNo) throws SQLException;
	
	void insertEducation(EducationVO education) throws SQLException;
	
	void updateEducation(EducationVO education) throws SQLException;
	
	void deleteEducation(String eduNo) throws SQLException;
	
}
