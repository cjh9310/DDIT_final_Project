package kr.or.ddit.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.RecruitVO;
import kr.or.ddit.service.EmpstatsService;
import kr.or.ddit.service.RecruitService;

@Controller
@RequestMapping("/recruit")
//@Slf4j
public class RecruitController {

	@Autowired
	private RecruitService recruitService;

	@Autowired
	private EmpstatsService empstatsService;

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> recruitlist(@PathVariable("page") int page)throws Exception {
		ResponseEntity<Map<String, Object>> entity = null;
		System.out.println("page1: " + page);
		Criteria cri = new Criteria();
		System.out.println("page: " + page);
		cri.setPage(page);
		Map<String, Object> dataMap = recruitService.getRecruitList(cri);	
		entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);		
		return entity;
	}
	
	@GetMapping("list")
	public String recruitList(Criteria cri, HttpServletRequest request) throws Exception {
		String url = "recruit/list";
		Map<String, Object> dataMap = null;
		dataMap = recruitService.getRecruitListByScroll(1, 10);
		request.setAttribute("dataMap", dataMap);
		return url;
	}
	
	@RequestMapping(value = "/scrollList", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> recruitScrollList(int startNum, int endNum, HttpServletRequest request) throws Exception {
		Map<String, Object> dataMap = recruitService.getRecruitListByScroll(startNum, endNum);
		return dataMap;
	}

	@GetMapping("empstats")
	public String empstats(Model model) throws Exception {
		String url = "recruit/empstats";

		Map<String, Object> empstatsMap = empstatsService.getEmpStatsList();
		model.addAttribute("empstatsMap", empstatsMap);
		
		return url;
	}

	@PostMapping("regist")
	public String regist(RecruitVO recruit, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/recruit/list.do"; 
		recruitService.regist(recruit);
		rttr.addFlashAttribute("from", "regist");
		return url;
	}

}
