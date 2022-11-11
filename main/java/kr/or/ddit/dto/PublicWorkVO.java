package kr.or.ddit.dto;

import java.util.Date;

public class PublicWorkVO {
	
	private int pubNo; // 게시글번호
	private String adId; // 글쓴이(관리자번호)
	private String pubContent; // 글내용
	private String pubTitle; // 글제목
	private String pubHost; // 주최자
	private String pubSdate; // 등록일
	private String pubEdate; // 종료일
	private int viewCnt;   // 조회수
	
	public int getPubNo() {
		return pubNo;
	}
	public void setPubNo(int pubNo) {
		this.pubNo = pubNo;
	}
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getPubContent() {
		return pubContent;
	}
	public void setPubContent(String pubContent) {
		this.pubContent = pubContent;
	}
	public String getPubTitle() {
		return pubTitle;
	}
	public void setPubTitle(String pubTitle) {
		this.pubTitle = pubTitle;
	}
	public String getPubHost() {
		return pubHost;
	}
	public void setPubHost(String pubHost) {
		this.pubHost = pubHost;
	}
	public String getPubSdate() {
		return pubSdate;
	}
	public void setPubSdate(String pubSdate) {
		this.pubSdate = pubSdate;
	}
	public String getPubEdate() {
		return pubEdate;
	}
	public void setPubEdate(String pubEdate) {
		this.pubEdate = pubEdate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	
	@Override
	public String toString() {
		return "PublicWorkVO [pubNo=" + pubNo + ", adId=" + adId + ", pubContent=" + pubContent + ", pubTitle="
				+ pubTitle + ", pubHost=" + pubHost + ", pubSdate=" + pubSdate + ", pubEdate=" + pubEdate + ", viewCnt="
				+ viewCnt + "]";
	}
	
	
	
}
