package kr.or.ddit.dto;

import java.util.Date;

public class MentoringVO {
	
	private int menNo; //멘토링 일련번호
	private String coId; // 멘토링 주최 기업아이디
	private String menTitle; //멘토링프로그램명
	private String menContent; //멘토링프로그램내용
	private Date menDate; //멘토프로그램 게시물등록일자
	private Date menSdate; //멘토프로그램 시작일자
	private Date menEdate; //멘토프로그램 종료일자
	private int numPeople;//참가인원수 제한
	private int menProgress; //멘토링프로그램 진행률
	
	public int getMenNo() {
		return menNo;
	}
	public void setMenNo(int menNo) {
		this.menNo = menNo;
	}
	public String getCoId() {
		return coId;
	}
	public void setCoId(String coId) {
		this.coId = coId;
	}
	public String getMenTitle() {
		return menTitle;
	}
	public void setMenTitle(String menTitle) {
		this.menTitle = menTitle;
	}
	public String getMenContent() {
		return menContent;
	}
	public void setMenContent(String menContent) {
		this.menContent = menContent;
	}
	public Date getMenDate() {
		return menDate;
	}
	public void setMenDate(Date menDate) {
		this.menDate = menDate;
	}
	public Date getMenSdate() {
		return menSdate;
	}
	public void setMenSdate(Date menSdate) {
		this.menSdate = menSdate;
	}
	public Date getMenEdate() {
		return menEdate;
	}
	public void setMenEdate(Date menEdate) {
		this.menEdate = menEdate;
	}
	public int getNumPeople() {
		return numPeople;
	}
	public void setNumPeople(int numPeople) {
		this.numPeople = numPeople;
	}
	public int getMenProgress() {
		return menProgress;
	}
	public void setMenProgress(int menProgress) {
		this.menProgress = menProgress;
	}
	@Override
	public String toString() {
		return "MentoringVO [menNo=" + menNo + ", coId=" + coId + ", menTitle=" + menTitle + ", menContent="
				+ menContent + ", menDate=" + menDate + ", menSdate=" + menSdate + ", menEdate=" + menEdate
				+ ", numPeople=" + numPeople + ", menProgress=" + menProgress + "]";
	}
	
	
	
	
	
}
