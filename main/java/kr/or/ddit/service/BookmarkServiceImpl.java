package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.BookmarkDAO;
import kr.or.ddit.dto.BookmarkVO;

public class BookmarkServiceImpl implements BookmarkService {
	
	private BookmarkDAO bookmarkDAO;
	public void setBookmarkDAO(BookmarkDAO bookmarkDAO) {
		this.bookmarkDAO = bookmarkDAO;
	}
	
	@Override
	public Map<String, Object> getBookmarkListById(String id) throws SQLException {
		Map<String, Object> bookmarkMap = new HashMap<String, Object>();
		List<BookmarkVO> bookmarkList = bookmarkDAO.selectBookmarkById(id);
		bookmarkMap.put("bookmarkList", bookmarkList);
		return bookmarkMap;
	}

}
