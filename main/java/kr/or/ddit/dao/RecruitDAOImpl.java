package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.RecruitVO;

public class RecruitDAOImpl implements RecruitDAO {

	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<RecruitVO> selectRecruitCriteria(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<RecruitVO> recruitList = session.selectList("Recruit-Mapper.selectRecruitList", cri, rowBounds);

		return recruitList;
	}
	
	@Override
	public List<RecruitVO> selectRecruitListByScroll(int startNum, int endNum) throws SQLException {
		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("startNum", startNum);
		pageMap.put("endNum", endNum);
		List<RecruitVO> recruitList = session.selectList("Recruit-Mapper.selectRecruitListByScroll", pageMap);
		return recruitList;
	}
	
	@Override
	public List<RecruitVO> selectRecruitListForMain() throws SQLException {
		List<RecruitVO> recruitList = session.selectList("Recruit-Mapper.selectRecruitListForMain");
		return recruitList;
	}

	@Override
	public int selectRecruitListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Recruit-Mapper.selectRecruitListCount", cri);
		return count;
	}

	@Override
	public RecruitVO selectRecruitByRecWantedno(String recWantedno) throws SQLException {
		RecruitVO board = session.selectOne("Recruit-Mapper.selectRecruitByRecWantedno", recWantedno);
		return board;
	}

	@Override
	public void insertRecruit(RecruitVO recruit) throws SQLException {
		session.update("Recruit-Mapper.insertRecruit", recruit);
	}
	@Override
	public void updateRecruit(RecruitVO recruit) throws SQLException {
		session.update("Recruit-Mapper.updateRecruit", recruit);
	}

	@Override
	public void deleteRecruit(String recWantedno) throws SQLException {
		session.update("Recruit-Mapper.deleteRecruit", recWantedno);
	}
	
	@Override
	public String selectRecruitSequenceNextValue() throws SQLException {		
		return session.selectOne("Recruit-Mapper.selectRecruitSequenceNextValue");
	}
	
	
	@Override
	public List<RecruitVO> selectSupplyListById(String id) throws SQLException {
		List<RecruitVO> supRecList = session.selectList("Recruit-Mapper.selectSupplyRecruitListById", id);
		return supRecList;
	}

	@Override
	public List<RecruitVO> selectRecruitByConm(String co_name) throws SQLException {
		List<RecruitVO> recruitList
			= session.selectList("Recruit-Mapper.selectRecruitByConm",co_name);
		return recruitList;
	}
	
	
}
