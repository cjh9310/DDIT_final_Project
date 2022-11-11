package kr.or.ddit.dto;

import java.util.Date;

public class CertificateVO {

	private String cerNo;
	private String indId;
	private String cerName;
	private Date cerSdate;
	private Date cerEdate;
	private String cerHost;

	public String getCerNo() {
		return cerNo;
	}

	public void setCerNo(String cerNo) {
		this.cerNo = cerNo;
	}

	public String getIndId() {
		return indId;
	}

	public void setIndId(String indId) {
		this.indId = indId;
	}

	public String getCerName() {
		return cerName;
	}

	public void setCerName(String cerName) {
		this.cerName = cerName;
	}

	public Date getCerSdate() {
		return cerSdate;
	}

	public void setCerSdate(Date cerSdate) {
		this.cerSdate = cerSdate;
	}

	public Date getCerEdate() {
		return cerEdate;
	}

	public void setCerEdate(Date cerEdate) {
		this.cerEdate = cerEdate;
	}

	public String getCerHost() {
		return cerHost;
	}

	public void setCerHost(String cerHost) {
		this.cerHost = cerHost;
	}

}
