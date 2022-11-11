package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.NewsDAO;
import kr.or.ddit.dto.FaqVO;
import kr.or.ddit.dto.NewsVO;

public class NewsServiceImpl implements NewsService {

	private NewsDAO newsDAO;
	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}
	

	
	@Override 
	public Map<String, Object>getNewsList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();

		// 현재 page 번호에 맞는 리스트를 perPageNum 개수 만큼 가져오기.
		List<NewsVO> newsList = newsDAO.selectNewsList(cri);
		
		// 전체 board 개수
		int totalCount = newsDAO.selectNewsListCount(cri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("newsList", newsList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public NewsVO getNews(int newsNo) throws SQLException {
		NewsVO news = newsDAO.selectNewsByNewsNo(newsNo);
		newsDAO.increaseNewsCnt(newsNo);
		return news;
	}


	@Override
	public void regist(NewsVO news) throws SQLException {
		int newsNo = newsDAO.selectNewsSeqNext();
		news.setNewsNo(newsNo);
		//System.out.println("dashkdsdgksjayhdkjsa"+ news);
		newsDAO.insertNews(news);
		
	}

	@Override
	public void modify(NewsVO news) throws SQLException {
		newsDAO.updateNews(news);

	}

	@Override
	public void remove(int newsNo) throws SQLException {
		newsDAO.deleteNews(newsNo);

	}


	@Override
	public NewsVO getNewsModify(int newsNo) throws SQLException {
		NewsVO news = newsDAO.selectNewsByNewsNo(newsNo);
		return news;
	}

}
