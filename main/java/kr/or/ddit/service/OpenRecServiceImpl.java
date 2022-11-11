package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.OpenRecDAO;
import kr.or.ddit.dto.OpenRecVO;

public class OpenRecServiceImpl implements OpenRecService {

	private OpenRecDAO openRecDAO;
	public void setOpenRecDAO(OpenRecDAO openRecDAO) {
		this.openRecDAO = openRecDAO;
	}
	
	@Override
	public Map<String, Object> getOpenRecList() throws SQLException {
		Map<String, Object> dataMap = null;
		
		List<OpenRecVO> openRecList = openRecDAO.selectOpenRecList();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("openRecList", openRecList);
		
		System.out.println(dataMap.size());
		
		return dataMap;
	}

	@Override
	public Map<String, Object> getOpenRecList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = null;
		
		List<OpenRecVO> openRecList = openRecDAO.selectSearchOpenRecList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(openRecDAO.selectOpenRecListCount(cri));
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("pageMaker",pageMaker);
		dataMap.put("openRecList", openRecList);
		
		return dataMap;
	}

	@Override
	public Map<String, Object> getOpenRecListByConm(String open_conm) throws SQLException {
		Map<String, Object> dataMap = null;
		
		List<OpenRecVO> openRecList = openRecDAO.selectOpenRecListByConm(open_conm);
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("openRecList", openRecList);
		
		return dataMap;
	}
	
	@Override
	public Map<String, Object> getOpenRecListForMain() throws SQLException {
		Map<String, Object> dataMap = null;
		
		List<OpenRecVO> openRecList = openRecDAO.selectOpenRecListForMain();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("openRecList", openRecList);
		
		return dataMap;
	}

	@Override
	public int regist(OpenRecVO openRec) throws SQLException {
		if(openRecDAO.insertOpenRec(openRec) != 1) {
			return -1;
		}
		return 1;
	}

	@Override
	public OpenRecVO getOpenRecListByNo(int open_seqNo) throws SQLException {
		
		OpenRecVO openRecDetail = openRecDAO.selectOpenRecListByNo(open_seqNo);
		
		return openRecDetail;
	}
}
