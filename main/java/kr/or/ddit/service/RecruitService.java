package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;


import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.RecruitVO;

public interface RecruitService {
	
	//목록조회
	Map<String,Object> getRecruitList(Criteria cri)throws SQLException;

	Map<String,Object> getRecruitListForMain()throws SQLException;

	Map<String,Object> getRecruitListByScroll(int startNum, int endNum)throws SQLException;
	
	//상세조회
	RecruitVO getRecruit(String recWantedno)throws SQLException;	
	
	RecruitVO getRecruitForModify(String recWantedno)throws SQLException;
	
	public void regist(RecruitVO recruit) throws Exception;
	
	public void modify(RecruitVO recruit)throws Exception;
	
	public void remove(String recWantedno)throws Exception; 
	
	Map<String,Object> getSupplyRecruitList(String id)throws SQLException;
	
	Map<String, Object> getRecruitListByConm(String co_name) throws SQLException;
}
