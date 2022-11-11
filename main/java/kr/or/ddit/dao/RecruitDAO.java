package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.RecruitVO;

public interface RecruitDAO {

	List<RecruitVO> selectRecruitCriteria(Criteria cri) throws SQLException;
	
	List<RecruitVO> selectRecruitListForMain() throws SQLException;
	
	List<RecruitVO> selectRecruitListByScroll(int startNum, int endNum) throws SQLException;

	int selectRecruitListCount(Criteria cri) throws SQLException;

	RecruitVO selectRecruitByRecWantedno(String recWantedno) throws SQLException;
	/* RecruitVO selectBoardByImage(String imageFile) throws SQLException; */

	void insertRecruit(RecruitVO recruit) throws SQLException;

	void updateRecruit(RecruitVO recruit) throws SQLException;

	void deleteRecruit(String recWantedno) throws SQLException;
	
	String selectRecruitSequenceNextValue() throws SQLException;

	List<RecruitVO> selectSupplyListById(String id) throws SQLException;
	
	List<RecruitVO> selectRecruitByConm(String co_name) throws SQLException;
}
