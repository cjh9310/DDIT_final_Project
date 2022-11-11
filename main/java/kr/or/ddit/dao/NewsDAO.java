package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.FaqVO;
import kr.or.ddit.dto.NewsVO;

public interface NewsDAO {
	
	List<NewsVO> selectNewsList(Criteria cri) throws SQLException;
	
	int selectNewsListCount(Criteria cri) throws SQLException;
	
	NewsVO selectNewsByNewsNo(int newsNo) throws SQLException;
	
	// pub_seq.nextval 갖고오기.
	int selectNewsSeqNext() throws SQLException;
	
	//viewcnt 증가
	void increaseNewsCnt(int newsNo) throws SQLException;
	
	void insertNews(NewsVO news) throws SQLException;
	
	void updateNews(NewsVO news) throws SQLException;
	
	void deleteNews(int newsNo) throws SQLException;
	
	

}
