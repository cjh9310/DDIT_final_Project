package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

public interface CorporationService {
	
	Map<String, Object> getLogoList()throws SQLException;
	
}


