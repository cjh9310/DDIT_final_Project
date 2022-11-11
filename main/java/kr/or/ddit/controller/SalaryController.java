package kr.or.ddit.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.NewsVO;
import kr.or.ddit.service.NewsService;
import kr.or.ddit.service.SalaryService;

@Controller
@RequestMapping("/salary")
public class SalaryController {
	
	@Autowired
	private SalaryService salaryService;
	
	@Autowired
	private NewsService newsService;
	
	
	
	
	
	@GetMapping("list")
	public String salaryList(Criteria cri, HttpServletRequest request) throws Exception {
		String url = "salary/list";
		
		Map<String, Object> dataMap = salaryService.getSalaryList(cri);
		Map<String, Object> regionBySalaryMap = salaryService.getSalaryByRegionList();
		request.setAttribute("dataMap", dataMap);
		request.setAttribute("regionBySalaryMap", regionBySalaryMap);
		
		return url;
	}
	
	@GetMapping(value="news",produces="application/json;charset=utf-8")
	@ResponseBody
	public ModelAndView newsMain(Criteria cri, ModelAndView mnv) throws Exception {
		String url = "salary/news";
			
			Map<String,Object> dataMap = newsService.getNewsList(cri);
			

			mnv.addObject("dataMap", dataMap);
			mnv.setViewName(url);
			
			return mnv;
		}

	
	@GetMapping("calculator")
	public String calculatorMain() throws Exception {
		String url = "salary/calculator";
		return url;
	}
	
	@GetMapping("detail")
	public ModelAndView newsDetail(int newsNo,ModelAndView mnv, HttpServletRequest request, @RequestParam(defaultValue="") String from) throws Exception {
		String url = "salary/detail";
		
		NewsVO news = null;
		
		if(!from.equals("list")) {
			news = newsService.getNewsModify(newsNo);
		}else {
			news = newsService.getNews(newsNo);
			url="redirect:/salary/detail.do?newsNo="+newsNo;
		}
		
		mnv.addObject("news",news);
		mnv.setViewName(url);
		
		return mnv;
	}

}
