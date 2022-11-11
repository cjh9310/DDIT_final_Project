package kr.or.ddit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/senior")
public class SeniorController {

	@GetMapping("list")
	public String seniorRecruitList() throws Exception {
		String url = "senior/list";
		return url;
	}

}
