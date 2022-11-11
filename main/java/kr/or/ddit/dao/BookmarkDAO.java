package kr.or.ddit.dao;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.dto.BookmarkVO;

public interface BookmarkDAO {
	
	List<BookmarkVO> selectBookmarkById(String id) throws SQLException;
	
}
