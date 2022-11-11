package kr.or.ddit.dto;

import java.util.Date;

public class RecruitVO {

	// 채용공고 필드
	private String recWantedno; // 구인인증번호
	private Date recRegdt; // 등록일자
	private String coName; // 회사명
	private int recMinsal; // 최소임금액
	private int recMaxsal; // 최대임금액
	private String recMinedubg; // 최소학력
	private String recPersonal; // 근로자수
	private String recCapitalamt; // 자본금
	private String recYrsalesamt; // 연매출액
	private String recIndtpcdnm; // 업종
	private String recHomepg; // 회사홈페이지
	private String recBusisize; // 회사규모
	private String recJobsnm; // 모집집종
	private String recWantedtitle; // 구인제목
	private String recJobcont; // 직무내용
	private String recReceiptclosedt; // 접수마감일
	private String reccollectpsncnt; // 모집인원
	private String recSaltpnm; // 임금조건
	private String recEntertpnm; // 경력조건
	private String recWorkdayworkhrcont; // 근무시간/형태
	private String recFourins; // 연금4대 보험
	private String recRegion; // 근무지
	private String secCode; // 업종코드
	private int idx; // rownum을 idx로 표기

	// 채용공고 지원내역 필드
	private int rownum;
	private int supNo;
	private String indId;
	private Date subDate;
	private int supStatus;

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

	public Date getSubDate() {
		return subDate;
	}

	public void setSubDate(Date subDate) {
		this.subDate = subDate;
	}

	public int getSupStatus() {
		return supStatus;
	}

	public void setSupStatus(int supStatus) {
		this.supStatus = supStatus;
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

	public Date getRecRegdt() {
		return recRegdt;
	}

	public void setRecRegdt(Date recRegdt) {
		this.recRegdt = recRegdt;
	}

	public int getRecMinsal() {
		return recMinsal;
	}

	public void setRecMinsal(int recMinsal) {
		this.recMinsal = recMinsal;
	}

	public int getRecMaxsal() {
		return recMaxsal;
	}

	public void setRecMaxsal(int recMaxsal) {
		this.recMaxsal = recMaxsal;
	}

	public String getRecMinedubg() {
		return recMinedubg;
	}

	public void setRecMinedubg(String recMinedubg) {
		this.recMinedubg = recMinedubg;
	}

	public String getRecPersonal() {
		return recPersonal;
	}

	public void setRecPersonal(String recPersonal) {
		this.recPersonal = recPersonal;
	}

	public String getRecCapitalamt() {
		return recCapitalamt;
	}

	public void setRecCapitalamt(String recCapitalamt) {
		this.recCapitalamt = recCapitalamt;
	}

	public String getRecYrsalesamt() {
		return recYrsalesamt;
	}

	public void setRecYrsalesamt(String recYrsalesamt) {
		this.recYrsalesamt = recYrsalesamt;
	}

	public String getRecIndtpcdnm() {
		return recIndtpcdnm;
	}

	public void setRecIndtpcdnm(String recIndtpcdnm) {
		this.recIndtpcdnm = recIndtpcdnm;
	}

	public String getRecHomepg() {
		return recHomepg;
	}

	public void setRecHomepg(String recHomepg) {
		this.recHomepg = recHomepg;
	}

	public String getRecBusisize() {
		return recBusisize;
	}

	public void setRecBusisize(String recBusisize) {
		this.recBusisize = recBusisize;
	}

	public String getRecJobsnm() {
		return recJobsnm;
	}

	public void setRecJobsnm(String recJobsnm) {
		this.recJobsnm = recJobsnm;
	}

	public String getRecWantedtitle() {
		return recWantedtitle;
	}

	public void setRecWantedtitle(String recWantedtitle) {
		this.recWantedtitle = recWantedtitle;
	}

	public String getRecJobcont() {
		return recJobcont;
	}

	public void setRecJobcont(String recJobcont) {
		this.recJobcont = recJobcont;
	}

	public String getRecReceiptclosedt() {
		return recReceiptclosedt;
	}

	public void setRecReceiptclosedt(String recReceiptclosedt) {
		this.recReceiptclosedt = recReceiptclosedt;
	}

	public String getReccollectpsncnt() {
		return reccollectpsncnt;
	}

	public void setReccollectpsncnt(String reccollectpsncnt) {
		this.reccollectpsncnt = reccollectpsncnt;
	}

	public String getRecSaltpnm() {
		return recSaltpnm;
	}

	public void setRecSaltpnm(String recSaltpnm) {
		this.recSaltpnm = recSaltpnm;
	}

	public String getRecEntertpnm() {
		return recEntertpnm;
	}

	public void setRecEntertpnm(String recEntertpnm) {
		this.recEntertpnm = recEntertpnm;
	}

	public String getRecWorkdayworkhrcont() {
		return recWorkdayworkhrcont;
	}

	public void setRecWorkdayworkhrcont(String recWorkdayworkhrcont) {
		this.recWorkdayworkhrcont = recWorkdayworkhrcont;
	}

	public String getRecFourins() {
		return recFourins;
	}

	public void setRecFourins(String recFourins) {
		this.recFourins = recFourins;
	}

	public String getRecRegion() {
		return recRegion;
	}

	public void setRecRegion(String recRegion) {
		this.recRegion = recRegion;
	}

	public String getSecCode() {
		return secCode;
	}

	public void setSecCode(String secCode) {
		this.secCode = secCode;
	}
	
	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	@Override
	public String toString() {
		return "RecruitVO [recWantedno=" + recWantedno + ", coName=" + coName + ", recRegdt=" + recRegdt
				+ ", recMinsal=" + recMinsal + ", recMaxsal=" + recMaxsal + ", recMinedubg=" + recMinedubg
				+ ", recPersonal=" + recPersonal + ", recCapitalamt=" + recCapitalamt + ", recYrsalesamt="
				+ recYrsalesamt + ", recIndtpcdnm=" + recIndtpcdnm + ", recHomepg=" + recHomepg + ", recBusisize="
				+ recBusisize + ", recJobsnm=" + recJobsnm + ", recWantedtitle=" + recWantedtitle + ", recJobcont="
				+ recJobcont + ", recReceiptclosedt=" + recReceiptclosedt + ", reccollectpsncnt=" + reccollectpsncnt
				+ ", recSaltpnm=" + recSaltpnm + ", recEntertpnm=" + recEntertpnm + ", recWorkdayworkhrcont="
				+ recWorkdayworkhrcont + ", recFourins=" + recFourins + ", recRegion=" + recRegion + "]";
	}

}
