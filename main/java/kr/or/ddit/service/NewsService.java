package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.FaqVO;
import kr.or.ddit.dto.NewsVO;

public interface NewsService {
	// 목록 조회
		Map<String, Object> getNewsList(Criteria cri) throws SQLException;
		
		// 상세보기
		NewsVO getNews(int newsNo) throws SQLException;
		
		// 수정화면 상세
		NewsVO getNewsModify(int newsNo) throws SQLException;
		
		// 등록
		void regist(NewsVO News) throws SQLException;
		
		// 수정
		void modify(NewsVO News) throws SQLException;
		
		// 삭제
		void remove(int pubNo) throws SQLException;
		

		
	
}
