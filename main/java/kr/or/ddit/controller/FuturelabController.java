package kr.or.ddit.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.service.CorporationService;

@Controller
@RequestMapping("/futurelab")
public class FuturelabController {
	
	@GetMapping("main")
	public String futurelabMain() throws Exception {
		String url = "futurelab/main";
		return url;
	}

	@GetMapping("ai1/main")
	public String ai1Main(Model model) throws Exception {
		String url = "futurelab/ai1/main";
		return url;
	}

	@GetMapping("ai2/main")
	public String ai2Main() throws Exception {
		String url = "futurelab/ai2/main";
		return url;
	}

	@GetMapping("ai3/main")
	public String ai3Main() throws Exception {
		String url = "futurelab/ai3/main";
		return url;
	}
	
	// �씤�옱異붿쿇
	@GetMapping("ai3/talent/recommand")
	public String talentRecommand() throws Exception {
		String url = "futurelab/ai3/talent_recommand";
		return url;
	}
	
	@GetMapping("ai3/talent/recommand1")
	public String talentRecommand1() throws Exception {
		String url = "futurelab/ai3/talent1_recommand";
		return url;
	}
	@GetMapping("ai3/trend/recommand")
	public String trendRecommand() throws Exception {
		String url = "futurelab/ai3/trend_recommand";
		return url;
	}

	@GetMapping("ai3/salary/recommand")
	public String salaryRecommand() throws Exception {
		String url = "futurelab/ai3/salary_recommand";
		return url;
	}
	
	@GetMapping("ai3/recruit/recommand")
	   public String recruitRecommand() throws Exception {
	      String url = "futurelab/ai3/recruit_recommand";
	      return url;
	}
	
	@GetMapping("ai3/contest/recommand")
	public String contestRecommand() throws Exception {
		String url = "futurelab/ai3/contest_recommand";
		return url;
	}

	@GetMapping("ai3/company/recommand")
	public String companyRecommand() throws Exception {
		String url = "futurelab/ai3/company_recommand";
		return url;
	}
	
	@GetMapping("ai1/namecard/recommand")
	public ResponseEntity<Resource> getNameCard(@Param("folder") String folder, @Param("filename") String filename) {
		
		String path = "D:\\team1\\src\\uploadImage\\namecardImage\\";
		
		folder = folder + "\\";

		Resource resource = new FileSystemResource(path + folder + filename);
		
		if(!resource.exists()) {
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
		
		HttpHeaders header = new HttpHeaders();
		Path filePath = null;
		
		try {
			filePath = Paths.get(path + folder + filename);
			header.add("Content-Type", Files.probeContentType(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
	}

}
