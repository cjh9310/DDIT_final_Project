package kr.or.ddit.service;

import java.sql.SQLException;

import kr.or.ddit.dto.ApplicantsVO;

public interface ApplicantsService {
	ApplicantsVO getResume(String id) throws SQLException;
}
