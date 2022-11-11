package kr.or.ddit.dto;

import java.util.Date;

public class MemberVO {

	// 공통 및 관리자 필드
	private String id;
	private String pwd;
	private String name = "---";
	private String tel;
	private String email;
	private String picture;
	private Date regDate;
	private int enabled;
	private int memType;
	private String authName;
	private String typeName;

	// 일반회원 필드
	private String indBir;
	private String indGender;
	private int indScore;
	private String indOpen;
	private String indAddr;
	private String indFedu;
	private String indWishsec;
	private String indWishsal;

	// 기업회원 필드
	private String coRegNo;
	private String coLink;
	private int coStatus;
	private String coConfirm;
	private String coReginvo;
	private String coAddr;
	private String coDeaddr;
	private String coAddrno;
	private String coNm;

	public MemberVO() {
	}

	public MemberVO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	public String getCoNm() {
		return coNm;
	}
	
	public void setCoNm(String coNm) {
		this.coNm = coNm;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getAuthName() {
		return authName;
	}

	public void setAuthName(String authName) {
		this.authName = authName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public int getMemType() {
		return memType;
	}

	public void setMemType(int memType) {
		this.memType = memType;
	}

	public String getIndBir() {
		return indBir;
	}

	public void setIndBir(String indBir) {
		this.indBir = indBir;
	}

	public String getIndGender() {
		return indGender;
	}

	public void setIndGender(String indGender) {
		this.indGender = indGender;
	}

	public int getIndScore() {
		return indScore;
	}

	public void setIndScore(int indScore) {
		this.indScore = indScore;
	}

	public String getIndOpen() {
		return indOpen;
	}

	public void setIndOpen(String indOpen) {
		this.indOpen = indOpen;
	}

	public String getIndAddr() {
		return indAddr;
	}

	public void setIndAddr(String indAddr) {
		this.indAddr = indAddr;
	}

	public String getIndFedu() {
		return indFedu;
	}

	public void setIndFedu(String indFedu) {
		this.indFedu = indFedu;
	}

	public String getIndWishsec() {
		return indWishsec;
	}

	public void setIndWishsec(String indWishsec) {
		this.indWishsec = indWishsec;
	}

	public String getIndWishsal() {
		return indWishsal;
	}

	public void setIndWishsal(String indWishsal) {
		this.indWishsal = indWishsal;
	}

	public String getCoRegNo() {
		return coRegNo;
	}

	public void setCoRegNo(String coRegNo) {
		this.coRegNo = coRegNo;
	}

	public String getCoLink() {
		return coLink;
	}

	public void setCoLink(String coLink) {
		this.coLink = coLink;
	}

	public int getCoStatus() {
		return coStatus;
	}

	public void setCoStatus(int coStatus) {
		this.coStatus = coStatus;
	}

	public String getCoConfirm() {
		return coConfirm;
	}

	public void setCoConfirm(String coConfirm) {
		this.coConfirm = coConfirm;
	}

	public String getCoReginvo() {
		return coReginvo;
	}

	public void setCoReginvo(String coReginvo) {
		this.coReginvo = coReginvo;
	}

	public String getCoAddr() {
		return coAddr;
	}

	public void setCoAddr(String coAddr) {
		this.coAddr = coAddr;
	}

	public String getCoDeaddr() {
		return coDeaddr;
	}

	public void setCoDeaddr(String coDeaddr) {
		this.coDeaddr = coDeaddr;
	}

	public String getCoAddrno() {
		return coAddrno;
	}

	public void setCoAddrno(String coAddrno) {
		this.coAddrno = coAddrno;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", tel=" + tel + ", email=" + email
				+ ", picture=" + picture + ", regDate=" + regDate + ", enabled=" + enabled + ", memType=" + memType
				+ ", authName=" + authName + ", typeName=" + typeName + ", indBir=" + indBir + ", indGender="
				+ indGender + ", indScore=" + indScore + ", indOpen=" + indOpen + ", indAddr=" + indAddr + ", indFedu="
				+ indFedu + ", indWishsec=" + indWishsec + ", indWishsal=" + indWishsal + ", coRegNo=" + coRegNo
				+ ", coLink=" + coLink + ", coStatus=" + coStatus + ", coConfirm=" + coConfirm + ", coReginvo="
				+ coReginvo + ", coAddr=" + coAddr + ", coDeaddr=" + coDeaddr + ", coAddrno=" + coAddrno + ", coNm="
				+ coNm + "]";
	}

}
