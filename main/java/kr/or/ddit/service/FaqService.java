package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.FaqVO;

public interface FaqService {
	
	// 전체보기
	List<FaqVO> getAllFaqList(String adId) throws SQLException;
	
	// 상세보기
	FaqVO getFaq(int faqNo) throws SQLException;
	
	// 등록
	void regist(FaqVO faq) throws SQLException;
	
	// 수정
	void modify(FaqVO faq) throws SQLException;
	
	// 삭제
	void remove(int faqNo) throws SQLException;
	
	// 개인회원문의
	List<FaqVO> getAllFaqIndmemberList() throws SQLException;
	
	// 기업회원문의
	List<FaqVO> getAllFaqComemberList() throws SQLException;
	
	// 개인회원문의
	List<FaqVO> getAllFaqEtcList() throws SQLException;
	
}
