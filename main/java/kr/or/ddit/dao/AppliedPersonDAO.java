package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.ApplicantsVO;

public interface AppliedPersonDAO {
	ApplicantsVO appliedPersonList(String id) throws SQLException;
}
