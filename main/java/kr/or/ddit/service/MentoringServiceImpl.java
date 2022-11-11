package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.MentoringDAO;
import kr.or.ddit.dto.MentoringVO;
@Service
public class MentoringServiceImpl implements MentoringService {
	
	private MentoringDAO mentoringDAO;
	public void setMentoringDAO(MentoringDAO mentoringDAO) {
		this.mentoringDAO = mentoringDAO;
	}

	@Override
	public Map<String, Object> getMentoringList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		//현재페이지 번호에 맞는 리스트를 perpageNum 갯수만큼 가져오기
		List<MentoringVO> mentoringList = mentoringDAO.selectMentoringCriteria(cri);
		
		//전체 게시물 갯수
		int totalCount = mentoringDAO.selectMentoringCriteriaTotalCount(cri);
		
		//전처리 totalCnt(멘토링리스트 뿌릴때 사용)
		int totalCnt = totalCount/4;
		
		//pageMaker 생성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("totalCnt",totalCnt);
		dataMap.put("mentoringList",mentoringList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public MentoringVO getMentoring(int menNo) throws SQLException {
		MentoringVO mentoring = mentoringDAO.selectMentoringByMenNo(menNo);
		return mentoring;
	}

	@Override
	public void registAll(MentoringVO mentoring) throws SQLException {
		int menNo = mentoringDAO.selectMentoringSeqNext();
		mentoring.setMenNo(menNo);
		mentoringDAO.insertAllMentoring(mentoring);
		
	}

	@Override
	public void regist(MentoringVO mentoring) throws SQLException {
		int menNo = mentoringDAO.selectMentoringSeqNext();
		mentoring.setMenNo(menNo);
		mentoringDAO.insertMentoring(mentoring);
		
	}

	@Override
	public void modify(MentoringVO mentoring) throws SQLException {
		mentoringDAO.updateMentoring(mentoring);
		
	}

	@Override
	public void modifyComem(MentoringVO mentoring) throws SQLException {
		mentoringDAO.updateMentoringComem(mentoring);
		
	}

	@Override
	public void remove(int menNo) throws SQLException {
		mentoringDAO.deleteMentoring(menNo);
		
	}

	

}
