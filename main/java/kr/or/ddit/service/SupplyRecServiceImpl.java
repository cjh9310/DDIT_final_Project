package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.SupplyRecDAO;
import kr.or.ddit.dto.SupplyRecVO;

public class SupplyRecServiceImpl implements SupplyRecService {
	
	private SupplyRecDAO supplyRecDAO;
	public void setSupplyRecDAO(SupplyRecDAO supplyRecDAO) {
		this.supplyRecDAO = supplyRecDAO;
	}
	
	@Override
	public List<SupplyRecVO> getSupplyRecList(int open_seqno) throws SQLException {
		
		List<SupplyRecVO> supplyRecList = supplyRecDAO.selectSupplyRecByNo(open_seqno);
		
		return supplyRecList;
	}
}
