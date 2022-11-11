package kr.or.ddit.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.FaqVO;
import kr.or.ddit.dto.PublicWorkVO;
import kr.or.ddit.service.FaqService;
import kr.or.ddit.service.PublicWorkService;


@Controller
@RequestMapping("/community")
public class CommunityController {
	
	@Autowired
	private PublicWorkService publicWorkService;
	
	@Autowired
	private FaqService faqService;

	@GetMapping("archive/list")
	public String archiveList() throws Exception {
		String url = "community/archive/list";
		return url;
	}
	
	@GetMapping("faq/list")
	public String faqList(HttpServletRequest request) throws Exception {
		String url = "community/faq/list";
		
		List<FaqVO> indMemberList = faqService.getAllFaqIndmemberList();
		List<FaqVO> coMemberList = faqService.getAllFaqComemberList();
		List<FaqVO> etcList = faqService.getAllFaqEtcList();
		
		request.setAttribute("indMemberList", indMemberList);
		request.setAttribute("coMemberList", coMemberList);
		request.setAttribute("etcList", etcList);
		
		System.out.println(indMemberList.size());
		System.out.println(coMemberList.size());
		System.out.println(etcList.size());
		
		return url;
	}
	
	@GetMapping("publicwork/list")
	public String publicworkList(Criteria cri, HttpServletRequest req) throws Exception {
		String url = "community/publicwork/list";
		
		Map<String,Object> dataMap = publicWorkService.getPublicWorkList(cri);
		
		req.setAttribute("dataMap", dataMap);
		
		return url;
	}
	
	@RequestMapping("publicwork/detail")
	public String publicworkDetail(int pubNo, HttpServletRequest request) throws Exception {
		String url = "community/publicwork/detail";
		
		PublicWorkVO publicWork = publicWorkService.getPublicWork(pubNo);
//		if(from!=null && from.equals("list")) {			
//			publicWork = publicWorkService.getPublicWork(pubNo);
//			url="redirect:/publicwork/detail.do?punNo="+pubNo;
//		}
//		
//		mnv.addObject("publicWork",publicWork);
//		mnv.setViewName(url);
		
		request.setAttribute("publickWork", publicWork);
	
		return url;
	}
	
	@GetMapping("report/list")
	public String reportList() throws Exception {
		String url = "community/report/list";
		
		return url;
	}

	@GetMapping("report/regist")
	public String reportrRegist() throws Exception {
		String url = "community/report/regist";
		
		return url;
	}	
	
}
