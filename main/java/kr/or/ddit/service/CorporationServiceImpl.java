package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.CorporationDAO;
import kr.or.ddit.dto.CorporationVO;

public class CorporationServiceImpl implements CorporationService {
	
	private CorporationDAO corporationDAO;
	public void setCorporationDAO(CorporationDAO corporationDAO) {
		this.corporationDAO = corporationDAO;
	}
	
	@Override
	public Map<String, Object> getLogoList() throws SQLException {
		Map<String, Object> logoMap = new HashMap<String, Object>();
		List<CorporationVO> logoList = corporationDAO.selectLogoList();
		logoMap.put("logoList", logoList);
		return logoMap;
	}

}
