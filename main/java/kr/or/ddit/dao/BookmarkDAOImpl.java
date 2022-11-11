package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.dto.BookmarkVO;

public class BookmarkDAOImpl implements BookmarkDAO {
	
	private SqlSession session;
	
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<BookmarkVO> selectBookmarkById(String id) throws SQLException {
		List<BookmarkVO> bookmarkList = session.selectList("Bookmark-Mapper.selectBookmarkById", id);
		return bookmarkList;
	}

}
