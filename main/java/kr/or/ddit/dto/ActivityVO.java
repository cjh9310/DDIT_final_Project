package kr.or.ddit.dto;

public class ActivityVO {
	
	private String actNo; //활동이력 일련번호
	private String indId; //개인회원 아이디
	private int conNo; //공모전 일련번호
	private int menNo; //멘토링 일련번호
	private int actStatus; // 진행상태(0,1,2,3)
	private int actPrize; //수상내역(0,1,2)
	private int actScore; //가산점수(1,2,3)
	private String actTel; //신청자가 공모응모페이지에서 직접 입력한 전화번호
	private String actEmail; //신청자가 공모응모페이지에서 직접 입력한 이메일주소
	
	private MentoringVO mentoringVO;
	private ContestVO contestVO;
	
	public String getActNo() {
		return actNo;
	}
	public void setActNo(String actNo) {
		this.actNo = actNo;
	}
	public String getIndId() {
		return indId;
	}
	public void setIndId(String indId) {
		this.indId = indId;
	}
	public int getConNo() {
		return conNo;
	}
	public void setConNo(int conNo) {
		this.conNo = conNo;
	}
	public int getMenNo() {
		return menNo;
	}
	public void setMenNo(int menNo) {
		this.menNo = menNo;
	}
	public int getActStatus() {
		return actStatus;
	}
	public void setActStatus(int actStatus) {
		this.actStatus = actStatus;
	}
	public int getActPrize() {
		return actPrize;
	}
	public void setActPrize(int actPrize) {
		this.actPrize = actPrize;
	}
	public int getActScore() {
		return actScore;
	}
	public void setActScore(int actScore) {
		this.actScore = actScore;
	}
	public String getActTel() {
		return actTel;
	}
	public void setActTel(String actTel) {
		this.actTel = actTel;
	}
	public String getActEmail() {
		return actEmail;
	}
	public void setActEmail(String actEmail) {
		this.actEmail = actEmail;
	}
	public MentoringVO getMentoringVO() {
		return mentoringVO;
	}
	public void setMentoringVO(MentoringVO mentoringVO) {
		this.mentoringVO = mentoringVO;
	}
	public ContestVO getContestVO() {
		return contestVO;
	}
	public void setContestVO(ContestVO contestVO) {
		this.contestVO = contestVO;
	}
	@Override
	public String toString() {
		return "ActivityVO [actNo=" + actNo + ", indId=" + indId + ", conNo=" + conNo + ", menNo=" + menNo
				+ ", actStatus=" + actStatus + ", actPrize=" + actPrize + ", actScore=" + actScore + ", actTel="
				+ actTel + ", actEmail=" + actEmail + ", mentoringVO=" + mentoringVO + ", contestVO=" + contestVO + "]";
	}
	
	
	
	
	
}
