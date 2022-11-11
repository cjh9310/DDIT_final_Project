package kr.or.ddit.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.parser.Entity;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ApplicantsVO;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.OpenRecVO;
import kr.or.ddit.dto.RecruitVO;
import kr.or.ddit.dto.SupplyRecVO;
import kr.or.ddit.service.ApplicantsService;
import kr.or.ddit.service.OpenRecService;
import kr.or.ddit.service.RecruitService;
import kr.or.ddit.service.SupplyRecService;

@Controller
@RequestMapping("/comember")
public class CoMemeberController {
	
	@Autowired
	private OpenRecService openRecService;
	
	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private SupplyRecService supplyRecService;
	
	@Autowired
	private ApplicantsService applicantsService;

	@GetMapping("/mypage/support")
	public String  myPageSupport() throws Exception {
		String url="comember/mypage/support/contest";
		return url;
	}
	
	@GetMapping("/mypage/supportContestRegistForm")
	public String supportContestRegistForm() throws Exception {
		String url="comember/mypage/support/contestRegist";
		return url;
	}
		
	@GetMapping("/mypage/info")
	public String  myPageInfo() throws Exception {
		String url="comember/mypage/info";
		return url;
	}
	
	@RequestMapping(value="/mypage/recruit", produces="application/text; charset=UTF-8", method= {RequestMethod.POST, RequestMethod.GET})
	public String  myPageRecruit(String open_conm, Criteria cri, HttpServletRequest request) throws Exception {
		String url="comember/mypage/recruit/recruit";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = null;
		try {			
			loginUser = (MemberVO) session.getAttribute("loginUser");
		} catch (Exception e) {
			url = "redirect:/index.do";// TODO: handle exception
		}
		
		Map<String, Object> dataMap = null;
		Map<String, Object> dataMap2 = null;
		
		open_conm = loginUser.getCoNm();
		
		dataMap = openRecService.getOpenRecListByConm(open_conm);
		dataMap2 = recruitService.getRecruitListByConm(open_conm);
		
		request.setAttribute("dataMap", dataMap);
		request.setAttribute("dataMap2", dataMap2);

		return url;
	}
	
	@GetMapping("/mypage/talent")
	public String  myPageTalent() throws Exception {
		String url="comember/mypage/talent";
		return url;
	}
	
	@RequestMapping(value="/mypage/regist", produces="application/text; charset=UTF-8", method= {RequestMethod.POST})
	@ResponseBody
    public void insertPatient(RecruitVO re) throws Exception {
		recruitService.regist(re);
	}
	
	@RequestMapping(value = "/mypage/opendetail", method = RequestMethod.POST)
	public @ResponseBody OpenRecVO openDetail(@RequestParam("openSeqno") String param) throws SQLException {
		OpenRecVO detail = null;
		
		int openSeqno = Integer.parseInt(param);
		detail = openRecService.getOpenRecListByNo(openSeqno);
		
		return detail;
	}
	
	@RequestMapping(value="/mypage/recdetail", method=RequestMethod.POST)
	public @ResponseBody RecruitVO recDetail(@RequestParam("recNo") String param) throws SQLException {
		RecruitVO detail = null;
		
		detail = recruitService.getRecruit(param);
		
		return detail;
	}
	
	@RequestMapping(value="/mypage/openApplicant", method=RequestMethod.POST)
	public @ResponseBody ApplicantsVO openApplicant(@RequestParam("openSeqno") String param) throws SQLException {
		return null;
	}
	
	@RequestMapping(value="/mypage/supplyRec",method=RequestMethod.POST)
	public @ResponseBody List<SupplyRecVO> supplyRec(@RequestParam("openSeqno") int openSeqno) throws Exception {
		List<SupplyRecVO> supplyRecList = null;
		
		System.out.println(openSeqno);
		supplyRecList = supplyRecService.getSupplyRecList(openSeqno);
		System.out.println(supplyRecList.size());
		
		return supplyRecList;
	}
	
	@RequestMapping("/mypage/resume")
	public String appliedPerson(String option, HttpServletRequest request) throws Exception {
		String url = "comember/mypage/recruit/resume";
		
		ApplicantsVO resume = applicantsService.getResume(option);
		
		request.setAttribute("resume", resume);
		
		return url;
	}
}
