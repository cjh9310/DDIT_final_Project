package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.FaqVO;

public class FaqDAOImpl implements FaqDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<FaqVO> selectAllFaqList(String adId) throws SQLException {
		return session.selectList("Faq-Mapper.selectAllFaqList",adId);
	}

	@Override
	public FaqVO selectFaqByFaqNo(int faqNo) throws SQLException {
		return session.selectOne("Faq-Mapper.selectFaqByFaqNo",faqNo);
	}

	@Override
	public int selectFaqSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("Faq-Mapper.selectFaqSequenceNextValue");
		return seq_num;
	}

	@Override
	public void insertFaq(FaqVO faq) throws SQLException {
		session.insert("Faq-Mapper.insertFaq", faq);
	}

	@Override
	public void updateFaq(FaqVO faq) throws SQLException {
		session.update("Faq-Mapper.updateFaq", faq);
	}

	@Override
	public void deleteFaq(int faqNo) throws SQLException {
		session.update("Faq-Mapper.deleteFaq", faqNo);
	}

	@Override
	public List<FaqVO> selectFaqByIndmember() throws SQLException {
		return session.selectList("Faq-Mapper.selectFaqByIndmember");
	}

	@Override
	public List<FaqVO> selectFaqByCodmember() throws SQLException {
		return session.selectList("Faq-Mapper.selectFaqByCodmember");
	}

	@Override
	public List<FaqVO> selectFaqByEtc() throws SQLException {
		return session.selectList("Faq-Mapper.selectFaqByEtc");
	}

}
