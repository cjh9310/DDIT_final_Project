package kr.or.ddit.controller;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.OpenRecVO;
import kr.or.ddit.service.OpenRecService;

@Controller
@RequestMapping("/openrec")
public class OpenrecController {
	
	private static final Logger log = LoggerFactory.getLogger(OpenrecController.class);
	
	@Autowired
	private OpenRecService openRecService;

	@GetMapping("list")
	public String openrecList(Criteria cri, HttpServletRequest request) throws Exception {
		String url = "openrec/list";
		
		Map<String, Object> dataMap = null;
		
		dataMap = openRecService.getOpenRecList(cri);
		
		request.setAttribute("dataMap", dataMap);
		
		return url;
	}

	@GetMapping("calendar")
	public String openrecCalendar(HttpServletRequest request) throws Exception {
		String url = "openrec/calendar";
		
		Map<String, Object> dataMap = null;
		
		dataMap = openRecService.getOpenRecList();
		
		System.out.println("dataMap : " + dataMap);
		
		request.setAttribute("dataMap", dataMap);
		
		return url;
	}
	
	@PostMapping("regist")
	public String regist(OpenRecVO openRec, HttpServletRequest req, RedirectAttributes rttr) throws SQLException {
		String url = "redirect:/openrec/list.do";
		
		int check = openRecService.regist(openRec);
		
		if(check != 1) {
			String insertErrorContext = "insert 안됨";
			
			System.out.println(insertErrorContext);
		}
		
		rttr.addFlashAttribute("from","regist");
		
		return url;
	}
}
