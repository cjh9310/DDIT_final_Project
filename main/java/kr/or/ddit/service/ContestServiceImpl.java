package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.ContestDAO;
import kr.or.ddit.dto.ContestVO;
import kr.or.ddit.dto.OpenRecVO;

public class ContestServiceImpl implements ContestService {
	
	private ContestDAO contestDAO;
	public void setContestDAO(ContestDAO contestDAO) {
		this.contestDAO = contestDAO;
	}

	@Override
	public Map<String, Object> getContestList() throws SQLException {
		Map<String, Object> dataMap = null;
		
		List<ContestVO> contestList = contestDAO.selectContestList();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("contestList", contestList);
		
		return dataMap;
	}
	
	@Override
	public Map<String, Object> getContestList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		//현재페이지 번호에 맞는 리스트를 perpageNum 갯수만큼 가져오기
		List<ContestVO> contestList = contestDAO.selectContestCriteria(cri);
		System.out.println("왜안나와"+contestList);
		//전체 게시물 개수
		int totalCount = contestDAO.selectContestCriteriaTotalCount(cri);
		
		//공모전리스트 뿌릴때 편하게 하려고 작업한 totalCnt
		int totalCnt = totalCount/4;
		
		//pagemaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("totalCnt", totalCnt);
		dataMap.put("contestList", contestList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public ContestVO getContest(int conNo) throws SQLException {
		ContestVO contest = contestDAO.selectContestByconNo(conNo);
		return contest;
	}

	@Override
	public void regist(ContestVO contest) throws SQLException {
		int conNo = contestDAO.selectContestSeqNext();
		contest.setConNo(conNo);
		contestDAO.insertContest(contest);

	}

	@Override
	public void modify(ContestVO contest) throws SQLException {
		contestDAO.updateContest(contest);

	}

	@Override
	public void remove(int conNo) throws SQLException {
		contestDAO.deleteContest(conNo);
	}

	

}
