package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.CareerVO;

public interface CareerDAO {
	
	List<CareerVO> selectCareerListById(String id) throws SQLException;
	
	CareerVO selectCareerByCrrNo(String crrNo) throws SQLException;
	
	void insertCareer(CareerVO career) throws SQLException;
	
	void updateCareer(CareerVO career) throws SQLException;
	
	void deleteCareer(String crrNo) throws SQLException;

}
