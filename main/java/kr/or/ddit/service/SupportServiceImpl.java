package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.SupportDAO;
import kr.or.ddit.dto.SupportVO;

public class SupportServiceImpl implements SupportService {
	
	private SupportDAO supportDAO;
	public void setSupportDAO(SupportDAO supportDAO) {
		this.supportDAO = supportDAO;
	}
	
	@Override
	public Map<String, Object> getSupportList(Criteria cri) throws SQLException {


		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<SupportVO> supportList = supportDAO.selectSupportCriteria(cri);
		
		// 전체 board 개수
		int totalCount = supportDAO.selectSupportCriteriaTotalCount(cri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("supportList", supportList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public SupportVO getSupport(int supNo) throws SQLException {
		SupportVO support = supportDAO.selectSupportBySupNo(supNo);
		return support;
	}


	@Override
	public void regist(SupportVO support) throws SQLException {
		int supNo = supportDAO.selectSupportSeqNext();
		support.setSupNo(supNo);
		supportDAO.insertSupport(support);
	}

	@Override
	public void modify(SupportVO support) throws SQLException {
		supportDAO.updateSupport(support);

	}

	@Override
	public void remove(int supNo) throws SQLException {
		supportDAO.deleteSupport(supNo);

	}

}
