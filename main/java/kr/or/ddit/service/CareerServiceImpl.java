package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.CareerDAO;
import kr.or.ddit.dto.CareerVO;

public class CareerServiceImpl implements CareerService {
	
	private CareerDAO careerDAO;
	public void setCareerDAO(CareerDAO careerDAO) {
		this.careerDAO = careerDAO;
	}
	
	@Override
	public Map<String, Object> getCareerListById(String id) throws SQLException {
		Map<String, Object> crrMap = new HashMap<String, Object>();
		List<CareerVO> crrList = careerDAO.selectCareerListById(id);
		crrMap.put("crrList", crrList);
		return crrMap;
	}

	@Override
	public CareerVO getCareerByCrrNo(String crrNo) throws SQLException {
		CareerVO career = careerDAO.selectCareerByCrrNo(crrNo);
		return career;
	}
	
	@Override
	public void regist(CareerVO career) throws SQLException {
		careerDAO.insertCareer(career);
	}
	
	@Override
	public void modify(CareerVO career) throws SQLException {
		careerDAO.updateCareer(career);
	}
	
	@Override
	public void remove(String crrNo) throws SQLException {
		careerDAO.deleteCareer(crrNo);
	}
	
}
