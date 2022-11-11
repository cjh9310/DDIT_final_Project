package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.PublicWorkVO;

public interface PublicWorkDAO {
	
	List<PublicWorkVO> searchPublicWorkList(Criteria cri) throws SQLException;
	
	int selectSearchPublicWorkListCount(Criteria cri) throws SQLException;
	
	List<PublicWorkVO> selectAllPublicWorkList(String adId) throws SQLException;
	
	PublicWorkVO selectPublicWorkByPubNo(int pubNo) throws SQLException;
	
	// Pub_seq.nextVal 갖고오기.
	int selectPublicWorkSequenceNextValue() throws SQLException;
	
	//viewcnt 증가
	void increaseViewCount(int pubNo) throws SQLException;
	
	void insertPublicWork(PublicWorkVO publicWork) throws SQLException;
	
	void updatePublicWork(PublicWorkVO publicWork) throws SQLException;
	
	void deleteNotice(int pubNo) throws SQLException;
	

}
