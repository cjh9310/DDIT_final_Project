package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.SalaryVO;

public class SalaryDAOImpl implements kr.or.ddit.dao.SalaryDAO {

	private SqlSession session;

	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	private SalaryDAO salaryDAO;

	public void setSalaryDAO(SalaryDAO salaryDAO) {
		this.salaryDAO = salaryDAO;
	}

	@Override
	public List<SalaryVO> selectSalaryList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<SalaryVO> salaryList = session.selectList("Salary-Mapper.selectSalaryList", cri, rowBounds);
		System.out.println("test1"+salaryList.size());
		return salaryList;
	}

	@Override
	public int selectSalaryListCount(Criteria cri) throws SQLException {
		int count=session.selectOne("Salary-Mapper.selectSalaryListCount",cri);
		return count;
	}

	@Override
	public List<SalaryVO> selectSalaryByCoSal() throws SQLException {
		List<SalaryVO> coSalList = session.selectList("Salary-Mapper.selectSalaryByCoSal");
		return coSalList;
	}

	@Override
	public List<SalaryVO> selectSalaryBytypeSal() throws SQLException {
		List<SalaryVO> typeSalList = session.selectList("Salary-Mapper.selectSalaryByTypeSal");
		System.out.println("대분류"+typeSalList.toString());
		return typeSalList;
	}
	
	@Override
	public List<SalaryVO> selectRegionList() throws SQLException {
		List<SalaryVO> regionList = session.selectList("Salary-Mapper.selectRegionList");
		return regionList;
	}

	@Override
	public List<SalaryVO> selectSalaryByRegion(String region) throws SQLException {
		List<SalaryVO> regionSalList = session.selectList("Salary-Mapper.selectSalaryByRegion", region);
		return regionSalList;
	}
	
}
