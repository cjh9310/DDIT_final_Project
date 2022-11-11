package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.PublicWorkVO;

public class PublicWorkDAOImpl implements PublicWorkDAO {
	
	private SqlSession session;	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<PublicWorkVO> searchPublicWorkList(Criteria cri) throws SQLException {
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow+cri.getPerPageNum()-1;
		
		Map<String,Object> dataParam = new HashMap<String,Object>();
		
		dataParam.put("startRow",startRow);
		dataParam.put("endRow",endRow);
//		dataParam.put("searchType", cri.getSearchType());
//		dataParam.put("keyword",cri.getKeyword());
		
		List<PublicWorkVO> publicWorkList 
				= session.selectList("PublicWork-Mapper.searchPublicWorkList", dataParam);
		
		return publicWorkList;
	}

	@Override
	public int selectSearchPublicWorkListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("PublicWork-Mapper.selectSearchPublicWorkListCount",cri);
		return count;
	}

	@Override
	public List<PublicWorkVO> selectAllPublicWorkList(String adId) throws SQLException {
		if(adId != null) {
			return session.selectList("PublicWork-Mapper.selectAllPublicWorkList", adId);
		}
		System.out.println(adId);
		return null;
	}
	
	@Override
	public PublicWorkVO selectPublicWorkByPubNo(int pubNo) throws SQLException {
		return session.selectOne("PublicWork-Mapper.selectPublicWorkByPubNo", pubNo);
	}

	@Override
	public int selectPublicWorkSequenceNextValue() throws SQLException {
		int seq_num = session.selectOne("PublicWork-Mapper.selectPublicWorkSequenceNextValue");
		return seq_num;
	}

	@Override
	public void increaseViewCount(int pubNo) throws SQLException {
		session.update("PublicWork-Mapper.increaseViewCount", pubNo);
		
	}

	@Override
	public void insertPublicWork(PublicWorkVO publicWork) throws SQLException {
		session.insert("PublicWork-Mapper.insertPublicWork", publicWork);
	}

	@Override
	public void updatePublicWork(PublicWorkVO publicWork) throws SQLException {
		session.update("PublicWork-Mapper.updatePublicWork", publicWork);
	}

	@Override
	public void deleteNotice(int pubNo) throws SQLException {
		session.update("PublicWork-Mapper.deleteNotice", pubNo);
		
	}

}
