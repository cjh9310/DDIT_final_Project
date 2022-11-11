package kr.or.ddit.command;

public class Criteria {
	
	private int page=1;
	private int perPageNum=10;
	private String searchType ;
	private String searchAll;
	private String keyword=null;
	private String searchBtn1;
	private String searchBtn2;
	private String searchBtn3;
	private String searchBtn4;
	private String searchBtn5;
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	
	public String getSearchAll() {
		return searchAll;
	}
	public void setSearchAll(String searchAll) {
		this.searchAll = searchAll;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page<1) {
			this.page=1;
		}else {
			this.page = page;
		}
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum < 1) {
			this.perPageNum = 10;
		}else {
			this.perPageNum = perPageNum;
		}
	}
	
	public int getStartRowNum() {
		return (this.page-1)*perPageNum;		
	}
	public String getSearchBtn1() {
		
		return searchBtn1;
	}
	public void setSearchBtn1(String searchBtn1) {
		this.searchBtn1 = searchBtn1;
	}
	public String getSearchBtn2() {
		return searchBtn2;
	}
	public void setSearchBtn2(String searchBtn2) {
		this.searchBtn2 = searchBtn2;
	}
	public String getSearchBtn3() {
		return searchBtn3;
	}
	public void setSearchBtn3(String searchBtn3) {
		this.searchBtn3 = searchBtn3;
	}
	public String getSearchBtn4() {
		return searchBtn4;
	}
	public void setSearchBtn4(String searchBtn4) {
		this.searchBtn4 = searchBtn4;
	}
	public String getSearchBtn5() {
		return searchBtn5;
	}
	public void setSearchBtn5(String searchBtn5) {
		this.searchBtn5 = searchBtn5;
	}
	
}






