package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.EmpstatsDAO;
import kr.or.ddit.dto.EmpstatsVO;

public class EmpstatsServiceImpl implements EmpstatsService {
	
	private EmpstatsDAO empstatsDAO;
	public void setEmpstatsDAO(EmpstatsDAO empstatsDAO) {
		this.empstatsDAO = empstatsDAO;
	}
	
	@Override
	public Map<String, Object> getEmpStatsList() throws SQLException {
		Map<String, Object> empstatsMap = new HashMap<String, Object>();
		List<EmpstatsVO> empstatsList = empstatsDAO.selectEmpStats();
		empstatsMap.put("empstatsList", empstatsList);
		return empstatsMap;
	}

}
