package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.SupplyRecVO;

public interface SupplyRecService {
	List<SupplyRecVO> getSupplyRecList(int open_seqno) throws SQLException;
}
