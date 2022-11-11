package kr.or.ddit.dto;

import java.util.Date;

public class CareerVO {

	private String crrNo;
	private String indId;
	private String crrSector;
	private String crrCorname;
	private String crrJob;
	private String crrPosition;
	private Date crrSdate;
	private Date crrEdate;
	private int crrSal;
	private int crrAnnual;
	private int crrStatus;
	private String strStatus;

	public int getCrrStatus() {
		return crrStatus;
	}

	public void setCrrStatus(int crrStatus) {
		this.crrStatus = crrStatus;
	}

	public String getStrStatus() {
		return strStatus;
	}

	public void setStrStatus(String strStatus) {
		this.strStatus = strStatus;
	}

	public String getCrrNo() {
		return crrNo;
	}

	public void setCrrNo(String crrNo) {
		this.crrNo = crrNo;
	}

	public String getIndId() {
		return indId;
	}

	public void setIndId(String indId) {
		this.indId = indId;
	}

	public String getCrrSector() {
		return crrSector;
	}

	public void setCrrSector(String crrSector) {
		this.crrSector = crrSector;
	}

	public String getCrrCorname() {
		return crrCorname;
	}

	public void setCrrCorname(String crrCorname) {
		this.crrCorname = crrCorname;
	}

	public String getCrrJob() {
		return crrJob;
	}

	public void setCrrJob(String crrJob) {
		this.crrJob = crrJob;
	}

	public String getCrrPosition() {
		return crrPosition;
	}

	public void setCrrPosition(String crrPosition) {
		this.crrPosition = crrPosition;
	}

	public Date getCrrSdate() {
		return crrSdate;
	}

	public void setCrrSdate(Date crrSdate) {
		this.crrSdate = crrSdate;
	}

	public Date getCrrEdate() {
		return crrEdate;
	}

	public void setCrrEdate(Date crrEdate) {
		this.crrEdate = crrEdate;
	}

	public int getCrrSal() {
		return crrSal;
	}

	public void setCrrSal(int crrSal) {
		this.crrSal = crrSal;
	}

	public int getCrrAnnual() {
		return crrAnnual;
	}

	public void setCrrAnnual(int crrAnnual) {
		this.crrAnnual = crrAnnual;
	}

}
