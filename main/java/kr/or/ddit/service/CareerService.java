package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.dto.CareerVO;

public interface CareerService {
	
	Map<String, Object> getCareerListById(String id)throws SQLException;
	
	CareerVO getCareerByCrrNo(String crrNo) throws SQLException;
	
	void regist(CareerVO career) throws SQLException;
	
	void modify(CareerVO career) throws SQLException;
	
	void remove(String crrNo) throws SQLException;
	
}


