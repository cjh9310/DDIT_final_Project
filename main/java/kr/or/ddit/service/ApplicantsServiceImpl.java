package kr.or.ddit.service;

import java.sql.SQLException;

import kr.or.ddit.dao.AppliedPersonDAO;
import kr.or.ddit.dto.ApplicantsVO;

public class ApplicantsServiceImpl implements ApplicantsService {
	
	private AppliedPersonDAO appliedPersonDAO;
	public void setAppliedPersonDAO(AppliedPersonDAO appliedPersonDAO) {
		this.appliedPersonDAO = appliedPersonDAO;
	}
	
	@Override
	public ApplicantsVO getResume(String id) throws SQLException {
		ApplicantsVO getResume = appliedPersonDAO.appliedPersonList(id);
		
		return getResume;
	}

}
