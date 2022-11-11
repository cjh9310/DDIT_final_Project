package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.PublicWorkDAO;
import kr.or.ddit.dto.PublicWorkVO;

public class PublicWorkServiceImpl implements PublicWorkService {
	
	private PublicWorkDAO publicWorkDAO;
	public void setPublicWorkDAO(PublicWorkDAO publicWorkDAO) {
		this.publicWorkDAO = publicWorkDAO;
	}

	// 목록조회
	@Override
	public Map<String, Object> getPublicWorkList(Criteria cri) throws SQLException {
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<PublicWorkVO> publicWorkList = publicWorkDAO.searchPublicWorkList(cri);
		
		// 전체 board 개수
		int totalCount = publicWorkDAO.selectSearchPublicWorkListCount(cri);
		
		// pageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("publicWorkList", publicWorkList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	// 상세보기
	@Override
	public PublicWorkVO getPublicWork(int pubNo) throws SQLException {
		
		PublicWorkVO publicWork = publicWorkDAO.selectPublicWorkByPubNo(pubNo);
		publicWorkDAO.increaseViewCount(pubNo);
		
		return publicWork;
	}
	
	// 전체보기
	@Override
	public List<PublicWorkVO> getAllPublicWokrList(String adId) throws SQLException {
		List<PublicWorkVO> publicWork = publicWorkDAO.selectAllPublicWorkList(adId);
		
		return publicWork;
	}

	// 수정화면 상세
	@Override
	public PublicWorkVO getPublicWorkModify(int pubNo) throws SQLException {

		PublicWorkVO publicWork = publicWorkDAO.selectPublicWorkByPubNo(pubNo);
		return publicWork;
	}

	// 등록
	@Override
	public void regist(PublicWorkVO publicWork) throws SQLException {
		publicWorkDAO.insertPublicWork(publicWork);
	}

	// 수정
	@Override
	public void modify(PublicWorkVO publicWork) throws SQLException {

		publicWorkDAO.updatePublicWork(publicWork);
		
	}

	// 삭제
	@Override
	public void remove(int pubNo) throws SQLException {
		
		publicWorkDAO.deleteNotice(pubNo);
		
	}

}
