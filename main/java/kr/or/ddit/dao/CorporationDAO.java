package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.CorporationVO;

public interface CorporationDAO {
	
	List<CorporationVO> selectLogoList() throws SQLException;
	
}
