//package kr.or.ddit.scheduler;
//
//import java.io.File;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import kr.or.ddit.dao.BoardDAO;
//import kr.or.ddit.dao.NoticeDAO;
//import kr.or.ddit.dao.PdsDAO;
//
//public class RemoveSummernoteImageScheduler {
//
//	private NoticeDAO noticeDAO;
//	public void setNoticeDAO(NoticeDAO noticeDAO) {
//		this.noticeDAO = noticeDAO;
//	}
//	
//	private BoardDAO boardDAO;
//	public void setBoardDAO(BoardDAO boardDAO) {
//		this.boardDAO = boardDAO;
//	}
//	
//	private PdsDAO pdsDAO;
//	public void setPdsDAO(PdsDAO pdsDAO) {
//		this.pdsDAO = pdsDAO;
//	}
//	
//	private String filePath;
//	public void setFilePath(String filePath) {
//		this.filePath = filePath;
//	}
//	
//	private static final Logger Logger = 
//		LoggerFactory.getLogger(RemoveMemberPictureScheduler.class);
//	
//	public void fileRemove() throws Exception {
//		boolean existFile = false;
//		
//		File dir = new File(filePath);
//		File[] files = dir.listFiles();
//		
//		if(files != null) for(File file : files) {
//			existFile = (noticeDAO.selectNoticeByImage(file.getName()) != null) ||
//						(boardDAO.selectBoardByImage(file.getName()) != null) ||
//						(pdsDAO.selectPdsByImage(file.getName()) != null);
//			
//			if(existFile) {
//				Logger.info(file.getName() + "은 사용하는 파일입니다.");
//			} else {
//				Logger.info(file.getName() + "은 사용하지않는 파일입니다.");
//				if(file.exists()) file.delete();
//			}
//			existFile = false;
//		}
//	}
//}
