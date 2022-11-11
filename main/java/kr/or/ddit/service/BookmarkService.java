package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

public interface BookmarkService {
	
	Map<String, Object> getBookmarkListById(String id)throws SQLException;
	
}


