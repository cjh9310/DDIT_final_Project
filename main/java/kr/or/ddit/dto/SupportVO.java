package kr.or.ddit.dto;

import java.util.Date;

public class SupportVO {
	
	private int supNo; //상담게시물번호
	private String indId;//작성자
	private int supType; // 상담유형(0:진로상담, 1:취업상담, 2:프로그램상담)
	private String supTitle; // 상담제목
	private String supContent; // 상담내용
	private Date supDate; // 작성일자
	private int supProcess; //상담진행과정(0:상담신청접수, 1:상담중, 2:상담종료, 3:반려)
	private String supPdate; //상담희망일자
	private Date supEdate; //상담완료일자
	
	public int getSupNo() {
		return supNo;
	}
	public void setSupNo(int supNo) {
		this.supNo = supNo;
	}
	public String getIndId() {
		return indId;
	}
	public void setIndId(String indId) {
		this.indId = indId;
	}
	public int getSupType() {
		return supType;
	}
	public void setSupType(int supType) {
		this.supType = supType;
	}
	public String getSupTitle() {
		return supTitle;
	}
	public void setSupTitle(String supTitle) {
		this.supTitle = supTitle;
	}
	public String getSupContent() {
		return supContent;
	}
	public void setSupContent(String supContent) {
		this.supContent = supContent;
	}
	public Date getSupDate() {
		return supDate;
	}
	public void setSupDate(Date supDate) {
		this.supDate = supDate;
	}
	public int getSupProcess() {
		return supProcess;
	}
	public void setSupProcess(int supProcess) {
		this.supProcess = supProcess;
	}
	public String getSupPdate() {
		return supPdate;
	}
	public void setSupPdate(String supPdate) {
		this.supPdate = supPdate;
	}
	public Date getSupEdate() {
		return supEdate;
	}
	public void setSupEdate(Date supEdate) {
		this.supEdate = supEdate;
	}
	@Override
	public String toString() {
		return "SupportVO [supNo=" + supNo + ", indId=" + indId + ", supType=" + supType + ", supTitle=" + supTitle
				+ ", supContent=" + supContent + ", supDate=" + supDate + ", supProcess=" + supProcess + ", supPdate="
				+ supPdate + ", supEdate=" + supEdate + "]";
	}
	
	
	
	
	
}
