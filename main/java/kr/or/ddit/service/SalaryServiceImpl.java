package kr.or.ddit.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.PageMaker;
import kr.or.ddit.dao.SalaryDAO;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.SalaryVO;

public class SalaryServiceImpl implements SalaryService{
	
	private SalaryDAO salaryDAO;

	public void setSalaryDAO(SalaryDAO salaryDAO) {
		this.salaryDAO = salaryDAO;
	}

	@Override
	public Map<String, Object> getSalaryList(Criteria cri) throws SQLException {
		
		Map<String, Object> dataMap = null;

		// 처리.......
		List<SalaryVO> salaryList = salaryDAO.selectSalaryList(cri);

		List<SalaryVO> coSalList = salaryDAO.selectSalaryByCoSal();

		List<SalaryVO> typeSalList = salaryDAO.selectSalaryBytypeSal();

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(salaryDAO.selectSalaryListCount(cri));

		dataMap = new HashMap<String, Object>();
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("salaryList", salaryList);
		dataMap.put("coSalList", coSalList);
		dataMap.put("typeSalList", typeSalList);
		
		System.out.println("test2"+dataMap);
		return dataMap;
		
	}

	@Override
	public Map<String, Object> getSalaryByRegionList() throws SQLException {
	   Map<String, Object> regionBySalaryMap = null;
	   
	   regionBySalaryMap = new HashMap<String, Object>();
	   
	   String[] regionList = {"대전 동구", "대전 중구", "대전 서구", "대전 유성구", "대전 대덕구"};
	   
	   for(int i=0; i < regionList.length; i++) {
	      String index = (i+1)+"";
	      String key = "regionList"+index;
	      List<SalaryVO> regionSalList = salaryDAO.selectSalaryByRegion(regionList[i]);
	      regionBySalaryMap.put(key, regionSalList);
	   }
	   return regionBySalaryMap;
	}
	
}
