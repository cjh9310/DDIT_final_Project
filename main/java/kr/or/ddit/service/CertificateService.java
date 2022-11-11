package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.Map;

import kr.or.ddit.dto.CertificateVO;

public interface CertificateService {
	
	Map<String, Object> getCertificateListById(String id)throws SQLException;
	
	CertificateVO getCertificateByCerNo(String cerNo) throws SQLException;
	
	void regist(CertificateVO certificate) throws SQLException;
	
	void modify(CertificateVO certificate) throws SQLException;
	
	void remove(String cerNo) throws SQLException;
	
}


