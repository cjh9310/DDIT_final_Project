package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.dto.EducationVO;

public interface EducationService {
	
	Map<String, Object> getEducationListById(String id)throws SQLException;
	
	EducationVO getEducationByEduNo(String eduNo) throws SQLException;
	
	void regist(EducationVO education) throws SQLException;
	
	void modify(EducationVO education) throws SQLException;
	
	void remove(String eduNo) throws SQLException;
	
}


