package kr.or.ddit.dto;


public class NewsVO {
	private int newsNo;   //게시물 번호
	private String adId;  //관리자 아이디
	private String newsTitle;  //게시물 제목
	private String newsPicture; //사진
	private String newsContent; //내용
	private String newsSdate;   //등록일
	private String newsOneContent;
	private int newsCnt;		//조회수
	
	
	public String getNewsSdate() {
		return newsSdate;
	}
	public void setNewsSdate(String newsSdate) {
		this.newsSdate = newsSdate;
	}
	public int getNewsNo() {
		return newsNo;
	}
	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsPicture() {
		return newsPicture;
	}
	public void setNewsPicture(String newsPicture) {
		this.newsPicture = newsPicture;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	
	public int getNewsCnt() {
		return newsCnt;
	}
	public void setNewsCnt(int newsCnt) {
		this.newsCnt = newsCnt;
	}
	public String getNewsOneContent() {
		return newsOneContent;
	}
	public void setNewsOneContent(String newsOneContent) {
		this.newsOneContent = newsOneContent;
	}
	@Override
	public String toString() {
		return "NewsVO [newsNo=" + newsNo + ", adId=" + adId + ", newsTitle=" + newsTitle + ", newsPicture="
				+ newsPicture + ", newsContent=" + newsContent + ", newsSdate=" + newsSdate + ", newsOneContent="
				+ newsOneContent + ", newsCnt=" + newsCnt + "]";
	}
	
	

	
	
	
	
	
	
}
