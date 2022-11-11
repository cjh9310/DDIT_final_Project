package kr.or.ddit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/talentres")
public class TalentresController {

	@GetMapping("main")
	public String futurelabMain() throws Exception {
		String url = "talentres/main";
		return url;
	}

}
