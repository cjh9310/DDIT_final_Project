package kr.or.ddit.dto;

public class BookmarkVO {

	// 기본 필드
	private int bookNo;
	private String recWantedno;
	private String coName;
	private int bookType;

	// 조인 필드 - 채용공고정보
	private String recCoName;
	private String recWantedtitle;

	// 조인 필드 - 기업정보
	private String coLogo;

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getRecWantedno() {
		return recWantedno;
	}

	public void setRecWantedno(String recWantedno) {
		this.recWantedno = recWantedno;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getRecCoName() {
		return recCoName;
	}

	public void setRecCoName(String recCoName) {
		this.recCoName = recCoName;
	}

	public String getRecWantedtitle() {
		return recWantedtitle;
	}

	public void setRecWantedtitle(String recWantedtitle) {
		this.recWantedtitle = recWantedtitle;
	}

	public String getCoLogo() {
		return coLogo;
	}

	public void setCoLogo(String coLogo) {
		this.coLogo = coLogo;
	}

	public int getBookType() {
		return bookType;
	}

	public void setBookType(int bookType) {
		this.bookType = bookType;
	}
	
}
