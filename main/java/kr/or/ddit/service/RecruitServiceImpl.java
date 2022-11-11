package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.RecruitDAO;
import kr.or.ddit.dto.CareerVO;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.RecruitVO;

public class RecruitServiceImpl implements RecruitService {

	private RecruitDAO recruitDAO;
	public void setRecruitDAO(RecruitDAO recruitDAO) {
		this.recruitDAO = recruitDAO;
	}

	@Override
	public RecruitVO getRecruit(String recWantedno) throws SQLException {
		RecruitVO recruit = recruitDAO.selectRecruitByRecWantedno(recWantedno);
		return recruit;
	}

	@Override
	public RecruitVO getRecruitForModify(String recWantedno) throws SQLException {
		RecruitVO recruit = recruitDAO.selectRecruitByRecWantedno(recWantedno);
		return recruit;
	}

	@Override
	public Map<String, Object> getRecruitList(Criteria cri) throws SQLException {

		Criteria searchCri = (Criteria) cri;

		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<RecruitVO> recruitlist = recruitDAO.selectRecruitCriteria(searchCri);
		// reply count 입력

		// 전체 board 개수
		int totalCount = recruitDAO.selectRecruitListCount(searchCri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("recruitList", recruitlist);
		dataMap.put("pageMaker", pageMaker);

		//System.out.println(dataMap.size());

		return dataMap;
	}
	
	@Override
	public Map<String, Object> getRecruitListByScroll(int startNum, int endNum) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<RecruitVO> recruitlist = recruitDAO.selectRecruitListByScroll(startNum, endNum);
		dataMap.put("recruitList", recruitlist);
		return dataMap;
	}
	
	@Override
	public Map<String, Object> getRecruitListForMain() throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<RecruitVO> recruitlist = recruitDAO.selectRecruitListForMain();
		dataMap.put("recruitList", recruitlist);
		
		return dataMap;
	}

	@Override
	public void regist(RecruitVO recruit) throws Exception {
		String recWantedno = recruitDAO.selectRecruitSequenceNextValue();
		System.out.println("구인인증번호"+recWantedno);
		recruit.setRecWantedno(recWantedno);
		
		recruitDAO.insertRecruit(recruit);
	}

	@Override
	public void modify(RecruitVO recruit) throws Exception {
		recruitDAO.updateRecruit(recruit);

	}

	@Override
	public void remove(String recWantedno) throws Exception {
		recruitDAO.deleteRecruit(recWantedno);

	}

	@Override
	public Map<String, Object> getSupplyRecruitList(String id) throws SQLException {
		Map<String, Object> supRecMap = new HashMap<String, Object>();
		List<RecruitVO> supRecList = recruitDAO.selectSupplyListById(id);
		supRecMap.put("supRecList", supRecList);
		return supRecMap;
	}

	@Override
	public Map<String, Object> getRecruitListByConm(String co_name) throws SQLException {
		Map<String, Object> dataMap = null;
		
		List<RecruitVO> recruitList = recruitDAO.selectRecruitByConm(co_name);
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("recruitList", recruitList);
		
		return dataMap;
	}
	
}
