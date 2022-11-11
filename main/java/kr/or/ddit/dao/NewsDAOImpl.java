package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.NewsVO;


public class NewsDAOImpl implements NewsDAO {
	
	private SqlSession session;	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<NewsVO> selectNewsList(Criteria cri) throws SQLException {
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow+cri.getPerPageNum()-1;
		
		Map<String,Object> dataParam = new HashMap<String,Object>();
		
		dataParam.put("startRow",startRow);
		dataParam.put("endRow",endRow);
//		dataParam.put("searchType", cri.getSearchType());
//		dataParam.put("keyword",cri.getKeyword());
		
		List<NewsVO> newsList 
				= session.selectList("News-Mapper.selectNewsList", dataParam);
		
		return newsList;
	}

	@Override
	public int selectNewsListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("News-Mapper.selectNewsListCount",cri);
		return count;
	}

	@Override
	public NewsVO selectNewsByNewsNo(int newsNo) throws SQLException {
		NewsVO news = session.selectOne("News-Mapper.selectNewsByNewsNo", newsNo);
		return news;
	}

	@Override
	public int selectNewsSeqNext() throws SQLException {
		int seq_num = session.selectOne("News-Mapper.selectNewsSeqNext");
		return seq_num;
	}

	@Override
	public void increaseNewsCnt(int newsNo) throws SQLException {
		session.update("News-Mapper.increaseNewsCnt", newsNo);
		
	}

	@Override
	public void insertNews(NewsVO news) throws SQLException {
		System.out.println("kajgsakjgsakjsa"+news);
		session.update("News-Mapper.insertNews", news);
	}

	@Override
	public void updateNews(NewsVO news) throws SQLException {
		session.update("News-Mapper.updateNews", news);
	}

	@Override
	public void deleteNews(int newsNo) throws SQLException {
		session.update("News-Mapper.deleteNews", newsNo);
		
	}

}
