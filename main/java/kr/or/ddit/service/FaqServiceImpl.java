package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dao.FaqDAO;
import kr.or.ddit.dto.FaqVO;

public class FaqServiceImpl implements FaqService {
	
	private FaqDAO faqDAO;
	public void setFaqDAO(FaqDAO faqDAO) {
		this.faqDAO = faqDAO;
	}

	@Override
	public List<FaqVO> getAllFaqList(String adId) throws SQLException {
		List<FaqVO> faq = faqDAO.selectAllFaqList(adId);
		return faq;
	}

	@Override
	public FaqVO getFaq(int faqNo) throws SQLException {
		FaqVO faq = faqDAO.selectFaqByFaqNo(faqNo);
		
		return faq;
	}

	@Override
	public void regist(FaqVO faq) throws SQLException {
		faqDAO.insertFaq(faq);
	}

	@Override
	public void modify(FaqVO faq) throws SQLException {
		faqDAO.updateFaq(faq);
	}

	@Override
	public void remove(int faqNo) throws SQLException {
		faqDAO.deleteFaq(faqNo);
	}

	@Override
	public List<FaqVO> getAllFaqIndmemberList() throws SQLException {
		List<FaqVO> faqVO = faqDAO.selectFaqByIndmember();
		return faqVO;
	}

	@Override
	public List<FaqVO> getAllFaqComemberList() throws SQLException {
		List<FaqVO> faqVO = faqDAO.selectFaqByCodmember();
		return faqVO;
	}

	@Override
	public List<FaqVO> getAllFaqEtcList() throws SQLException {
		List<FaqVO> faqVO = faqDAO.selectFaqByEtc();
		return faqVO;
	}

}
