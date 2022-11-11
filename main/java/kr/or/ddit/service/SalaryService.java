package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.SalaryVO;

public interface SalaryService {

	//목록조회
	Map<String,Object> getSalaryList(Criteria cri)throws SQLException;

	Map<String,Object> getSalaryByRegionList()throws SQLException;
}
