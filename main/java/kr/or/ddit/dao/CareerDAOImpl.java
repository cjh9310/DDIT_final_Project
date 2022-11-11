package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.CareerVO;
import kr.or.ddit.dto.CareerVO;

public class CareerDAOImpl implements CareerDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<CareerVO> selectCareerListById(String id) throws SQLException {
		List<CareerVO> crrList = session.selectList("Career-Mapper.selectCareerListById", id);
		return crrList;
	}
	
	@Override
	public CareerVO selectCareerByCrrNo(String crrNo) throws SQLException {
		CareerVO Career = session.selectOne("Career-Mapper.selectCareerByCrrNo", crrNo);
		return Career;
	}
	
	@Override
	public void insertCareer(CareerVO career) throws SQLException {
		session.update("Career-Mapper.insertCareer", career);
	}
	
	@Override
	public void updateCareer(CareerVO career) throws SQLException {
		session.update("Career-Mapper.updateCareer", career);
	}
	
	@Override
	public void deleteCareer(String crrNo) throws SQLException {
		session.update("Career-Mapper.deleteCareer", crrNo);
	}

}
