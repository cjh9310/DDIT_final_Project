package kr.or.ddit.dto;

public class FaqVO {
	
	private int faqNo; // 게시글번호
	private String adId; // 글쓴이(관리자번호)
	private String faqTitle; // 글제목
	private String faqContent; // 글내용
	private String faqSdate; // 등록일
	private String faqCategory; // 카테고리
	
	public int getFaqNo() {
		return faqNo;
	}
	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getFaqContent() {
		return faqContent;
	}
	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}
	public String getFaqSdate() {
		return faqSdate;
	}
	public void setFaqSdate(String faqSdate) {
		this.faqSdate = faqSdate;
	}
	public String getFaqCategory() {
		return faqCategory;
	}
	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}
	
	
	@Override
	public String toString() {
		return "FaqVO [faqNo=" + faqNo + ", adId=" + adId + ", faqTitle=" + faqTitle + ", faqContent=" + faqContent
				+ ", faqSdate=" + faqSdate + ", faqCategory=" + faqCategory + "]";
	}
	
	

}
