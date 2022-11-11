package kr.or.ddit.dto;

public class SalaryVO {

	private String coName; // 기업명
	private int coSal; // 평균연봉
	private String recIndtpcdnm; // 업종
	private String recYrsalesamt; // 연매출액
	private String recPersonal; // 근무자수
	private String recRegion; // 근무지역
	private String recMaxSal;
	private String recMinSall;
	private int salRank;

	public int getSalRank() {
		return salRank;
	}

	public String getRecMaxSal() {
		return recMaxSal;
	}

	public void setRecMaxSal(String recMaxSal) {
		this.recMaxSal = recMaxSal;
	}

	public String getRecMinSall() {
		return recMinSall;
	}

	public void setRecMinSall(String recMinSall) {
		this.recMinSall = recMinSall;
	}

	public String getCoName() {
		return coName;
	}

	public int getCoSal() {
		return coSal;
	}

	public String getRecIndtpcdnm() {
		return recIndtpcdnm;
	}

	public String getRecYrsalesamt() {
		return recYrsalesamt;
	}

	public String getRecPersonal() {
		return recPersonal;
	}

	public String getRecRegion() {
		return recRegion;
	}

	@Override
	public String toString() {
		return "SalaryVO [coName=" + coName + ", coSal=" + coSal + ", recIndtpcdnm=" + recIndtpcdnm + ", recYrsalesamt="
				+ recYrsalesamt + ", recPersonal=" + recPersonal + ", recRegion=" + recRegion + "]";
	}

}
