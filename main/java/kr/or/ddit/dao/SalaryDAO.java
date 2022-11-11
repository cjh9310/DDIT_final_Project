package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.SalaryVO;

public interface SalaryDAO {

	List<SalaryVO> selectSalaryList(Criteria cri) throws SQLException;

	int selectSalaryListCount(Criteria cri) throws SQLException;

	List<SalaryVO> selectSalaryByCoSal() throws SQLException;

	List<SalaryVO> selectSalaryBytypeSal() throws SQLException;
	
	List<SalaryVO> selectRegionList() throws SQLException;
	List<SalaryVO> selectSalaryByRegion(String region) throws SQLException;

}
