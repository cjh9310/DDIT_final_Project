package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.dao.CertificateDAO;
import kr.or.ddit.dto.CertificateVO;

public class CertificateServiceImpl implements CertificateService {
	
	private CertificateDAO certificateDAO;
	public void setCertificateDAO(CertificateDAO certificateDAO) {
		this.certificateDAO = certificateDAO;
	}
	
	@Override
	public Map<String, Object> getCertificateListById(String id) throws SQLException {
		Map<String, Object> cerMap = new HashMap<String, Object>();
		List<CertificateVO> cerList = certificateDAO.selectCertificateListById(id);
		cerMap.put("cerList", cerList);
		return cerMap;
	}

	@Override
	public CertificateVO getCertificateByCerNo(String cerNo) throws SQLException {
		CertificateVO certificate = certificateDAO.selectCertificateByCerNo(cerNo);
		return certificate;
	}
	
	@Override
	public void regist(CertificateVO certificate) throws SQLException {
		certificateDAO.insertCertificate(certificate);
	}
	
	@Override
	public void modify(CertificateVO certificate) throws SQLException {
		certificateDAO.updateCertificate(certificate);
	}
	
	@Override
	public void remove(String cerNo) throws SQLException {
		certificateDAO.deleteCertificate(cerNo);
	}
	
}
