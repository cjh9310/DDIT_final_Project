package kr.or.ddit.dto;

import java.util.Date;

public class EducationVO {

	private String eduNo;
	private String indId;
	private String eduName;
	private String eduDep;
	private String eduMajor;
	private Date eduSdate;
	private Date eduEdate;
	private int eduStatus;
	private String eduScore;
	private String strStatus;

	public String getStrStatus() {
		return strStatus;
	}

	public void setStrStatus(String strStatus) {
		this.strStatus = strStatus;
	}

	public String getEduNo() {
		return eduNo;
	}

	public void setEduNo(String eduNo) {
		this.eduNo = eduNo;
	}

	public String getIndId() {
		return indId;
	}

	public void setIndId(String indId) {
		this.indId = indId;
	}

	public String getEduName() {
		return eduName;
	}

	public void setEduName(String eduName) {
		this.eduName = eduName;
	}

	public String getEduDep() {
		return eduDep;
	}

	public void setEduDep(String eduDep) {
		this.eduDep = eduDep;
	}

	public String getEduMajor() {
		return eduMajor;
	}

	public void setEduMajor(String eduMajor) {
		this.eduMajor = eduMajor;
	}

	public Date getEduSdate() {
		return eduSdate;
	}

	public void setEduSdate(Date eduSdate) {
		this.eduSdate = eduSdate;
	}

	public Date getEduEdate() {
		return eduEdate;
	}

	public void setEduEdate(Date eduEdate) {
		this.eduEdate = eduEdate;
	}

	public int getEduStatus() {
		return eduStatus;
	}

	public void setEduStatus(int eduStatus) {
		this.eduStatus = eduStatus;
	}

	public String getEduScore() {
		return eduScore;
	}

	public void setEduScore(String eduScore) {
		this.eduScore = eduScore;
	}

}
