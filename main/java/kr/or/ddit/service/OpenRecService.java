package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.OpenRecVO;

public interface OpenRecService {
	
	Map<String, Object> getOpenRecList() throws SQLException;
	
	Map<String, Object> getOpenRecList(Criteria cri) throws SQLException;
	
	Map<String, Object> getOpenRecListByConm(String open_conm) throws SQLException;

	Map<String, Object> getOpenRecListForMain() throws SQLException;
	
	OpenRecVO getOpenRecListByNo(int open_seqNo) throws SQLException;
	
	public int regist(OpenRecVO openRec) throws SQLException;
}
