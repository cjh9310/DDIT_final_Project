package kr.or.ddit.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.CareerVO;
import kr.or.ddit.dto.CertificateVO;
import kr.or.ddit.dto.EducationVO;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.SupportVO;
import kr.or.ddit.service.BookmarkService;
import kr.or.ddit.service.CareerService;
import kr.or.ddit.service.CertificateService;
import kr.or.ddit.service.EducationService;
import kr.or.ddit.service.RecruitService;
import kr.or.ddit.service.SupportService;
import kr.or.ddit.util.ConvertUtils;

@Controller
@RequestMapping("/indmember")
public class IndMemberController {
	
	@Autowired
	private BookmarkService bookmarkService;
	@Autowired
	private EducationService educationService;
	@Autowired
	private CareerService careerService;
	@Autowired
	private CertificateService certificateService;
	@Autowired
	private SupportService supportService;
	@Autowired
	private RecruitService recruitService;
	
	@GetMapping("mypage/info")
	public String myPageInfo(HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/info";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		Map<String, Object> eduMap = educationService.getEducationListById(id);
		Map<String, Object> crrMap = careerService.getCareerListById(id);
		Map<String, Object> cerMap = certificateService.getCertificateListById(id);
		request.setAttribute("eduMap", eduMap);
		request.setAttribute("crrMap", crrMap);
		request.setAttribute("cerMap", cerMap);
		
		return url;
	}
	
	@GetMapping("mypage/lockedinfo")
	public String myPageLockedInfo(HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/lockedinfo";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		Map<String, Object> bookmarkMap = bookmarkService.getBookmarkListById(id);
		request.setAttribute("bookmarkMap", bookmarkMap);
		
		return url;
	}
	
	@GetMapping("mypage/manage")
	public String myPageManage(String parameter, HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/manage/" + parameter;
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		if(parameter.substring(0,3).equals("edu")) {
			Map<String, Object> eduMap = educationService.getEducationListById(id);
			request.setAttribute("eduMap", eduMap);
		} else if(parameter.substring(0,3).equals("crr")) {
			Map<String, Object> crrMap = careerService.getCareerListById(id);
			request.setAttribute("crrMap", crrMap);
		} else if(parameter.substring(0,3).equals("cer")) {
			Map<String, Object> cerMap = certificateService.getCertificateListById(id);
			request.setAttribute("cerMap", cerMap);
		}
		return url;
	}
	
	@GetMapping("mypage/registForm")
	public String myPageRegistForm(String parameter) throws Exception {
		String url = "indmember/mypage/form/" + parameter;
		return url;
	}
	
	@PostMapping("mypage/regist")
	public ResponseEntity<String> myPageRegist(@RequestParam Map<String, Object> voMap, HttpServletRequest request) throws Exception {
		ResponseEntity<String> entity = null;
		
		ConvertUtils convertor = new ConvertUtils();
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		if(voMap.containsKey("eduName")) {
			EducationVO education = convertor.convertToValueObject(voMap, EducationVO.class);
			education.setIndId(id);
			educationService.regist(education);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} else if(voMap.containsKey("crrCorname")) {
			CareerVO career = convertor.convertToValueObject(voMap, CareerVO.class);
			career.setIndId(id);
			careerService.regist(career);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} else if(voMap.containsKey("cerName")) {
			CertificateVO certificate = convertor.convertToValueObject(voMap, CertificateVO.class);
			certificate.setIndId(id);
			certificateService.regist(certificate);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		return entity;
	}
	
	@GetMapping("mypage/modifyForm")
	public String myPageModifyForm(String parameter, String pkey, HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/form/" + parameter;
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		if(parameter.substring(0,3).equals("edu")) {
			EducationVO education = educationService.getEducationByEduNo(pkey);
			request.setAttribute("education", education);
		} else if(parameter.substring(0,3).equals("crr")) {
			CareerVO career = careerService.getCareerByCrrNo(pkey);
			request.setAttribute("career", career);
		} else if(parameter.substring(0,3).equals("cer")) {
			CertificateVO certificate = certificateService.getCertificateByCerNo(pkey);
			request.setAttribute("certificate", certificate);
		}
		return url;
	}
	
	@PostMapping("mypage/modify")
	@ResponseBody
	public void myPageModify(@RequestParam Map<String, Object> voMap, HttpServletRequest request) throws Exception {
		ConvertUtils convertor = new ConvertUtils();
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		if(voMap.containsKey("eduName")) {
			EducationVO education = convertor.convertToValueObject(voMap, EducationVO.class);
			education.setIndId(id);
			educationService.modify(education);
		} else if(voMap.containsKey("crrCorname")) {
			CareerVO career = convertor.convertToValueObject(voMap, CareerVO.class);
			career.setIndId(id);
			careerService.modify(career);
		} else if(voMap.containsKey("cerName")) {
			CertificateVO certificate = convertor.convertToValueObject(voMap, CertificateVO.class);
			certificate.setIndId(id);
			certificateService.modify(certificate);
		}
	}
	
	@GetMapping("mypage/remove")
	public ResponseEntity<String> myPageEduRemove(@RequestParam String pkey, String parameter) throws Exception {
		ResponseEntity<String> entity = null;
		
		if(parameter.substring(0,3).equals("edu")) {
			educationService.remove(pkey);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} else if(parameter.substring(0,3).equals("crr")) {
			careerService.remove(pkey);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} else if(parameter.substring(0,3).equals("cer")) {
			certificateService.remove(pkey);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}
		return entity;
	}

	@GetMapping("mypage/recruit")
	public String myPageRecruit(HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/recruit";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		Map<String, Object> supRecMap = recruitService.getSupplyRecruitList(id);
		Map<String, Object> bookmarkMap = bookmarkService.getBookmarkListById(id);
		request.setAttribute("supRecMap", supRecMap);
		request.setAttribute("bookmarkMap", bookmarkMap);
		
		return url;
	}
	
	@GetMapping("mypage/resume")
	public String myPageResume(HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/resume";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getId();
		
		Map<String, Object> eduMap = educationService.getEducationListById(id);
		Map<String, Object> crrMap = careerService.getCareerListById(id);
		Map<String, Object> cerMap = certificateService.getCertificateListById(id);
		request.setAttribute("eduMap", eduMap);
		request.setAttribute("crrMap", crrMap);
		request.setAttribute("cerMap", cerMap);
		
		return url;
	}
	//-----------------------------------------------------------------------------------------------
	@GetMapping("mypage/support")
	public String myPageSupport(Criteria cri, HttpServletRequest request) throws Exception {
		String url = "indmember/mypage/support";
		
		Map<String, Object> dataMap = null;
		
		dataMap = supportService.getSupportList(cri);
		
		request.setAttribute("dataMap", dataMap);
		
		return url;
	}
	
	@RequestMapping("mypage/supportDetail")
	public ModelAndView myPageSupportDetail(int supNo, ModelAndView mnv) throws Exception{
		
		String url="indmember/mypage/supportDetail";
		
		SupportVO support = null;
		
		support = supportService.getSupport(supNo);
		
		mnv.addObject("support", support);
		mnv.setViewName(url);
		
		
		return mnv;
	}
	
	@RequestMapping("mypage/supportModifyForm")
	public ModelAndView myPageSupportModifyForm(int supNo, ModelAndView mnv) throws Exception{
		
		String url = "indmember/mypage/supportModify";
		
		SupportVO support = supportService.getSupport(supNo);
		
		mnv.addObject("support", support);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping(value="mypage/supportModify")
	@ResponseBody
	public String myPageSupportModify(int supNo, SupportVO support, @RequestParam Map<String, Object> param,
										HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		String url = "redirect:/indmember/mypage/supportDetail";
		System.out.println("support NO" + support.getSupNo());
		System.out.println("support" + support.getSupContent());
		System.out.println("support" + support.getSupPdate());
		
		supportService.modify(support);
		
		support.setSupNo(supNo);
		
		rttr.addAttribute("supNo", support.getSupNo());
//		rttr.addFlashAttribute("from", "supportModify");
		System.out.println("modify 성공");
		
		
		return url;
		
	}
	
	@RequestMapping(value="/mypage/supportRemove")
	public String myPageSupportRemove(int supNo, RedirectAttributes rttr) throws Exception{
		String url = "redirect:/indmember/mypage/supportDetail";
		supportService.remove(supNo);
		
		rttr.addAttribute("supNo", supNo);
		rttr.addFlashAttribute("from","remove");
		return url;
	}
	
	//--------------------------------------------------------------------------------------------------
	@GetMapping("mypage/usage")
	public String myPageUsage() throws Exception {
		String url = "indmember/mypage/usage";
		return url;
	}

	@GetMapping("mypage/report")
	public String myPageReport() throws Exception {
		String url = "indmember/mypage/report";
		return url;
	}

}
