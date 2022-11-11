package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.FaqVO;

public interface FaqDAO {
	
	List<FaqVO> selectAllFaqList(String adId) throws SQLException;
	
	FaqVO selectFaqByFaqNo(int faqNo) throws SQLException;
	
	int selectFaqSequenceNextValue() throws SQLException;
	
	void insertFaq(FaqVO faq) throws SQLException;
	
	void updateFaq(FaqVO faq) throws SQLException;
	
	void deleteFaq(int faqNo) throws SQLException;
	
	List<FaqVO> selectFaqByIndmember()throws SQLException;
	
	List<FaqVO> selectFaqByCodmember()throws SQLException;
	
	List<FaqVO> selectFaqByEtc()throws SQLException;


}
