package kr.or.ddit.dto;

public class EmpstatsVO {

	private String trendNo;
	private String trendPeriod;
	private String disCode;
	private String ageCode;
	private float trendRatio;
	private float trendCnt;

	public String getTrendNo() {
		return trendNo;
	}

	public void setTrendNo(String trendNo) {
		this.trendNo = trendNo;
	}

	public String getDisCode() {
		return disCode;
	}

	public void setDisCode(String disCode) {
		this.disCode = disCode;
	}

	public String getAgeCode() {
		return ageCode;
	}

	public void setAgeCode(String ageCode) {
		this.ageCode = ageCode;
	}

	public float getTrendRatio() {
		return trendRatio;
	}

	public void setTrendRatio(float trendRatio) {
		this.trendRatio = trendRatio;
	}

	public float getTrendCnt() {
		return trendCnt;
	}

	public void setTrendCnt(float trendCnt) {
		this.trendCnt = trendCnt;
	}
	
	public String getTrendPeriod() {
		return trendPeriod;
	}

	public void setTrendPeriod(String trendPeriod) {
		this.trendPeriod = trendPeriod;
	}

}
