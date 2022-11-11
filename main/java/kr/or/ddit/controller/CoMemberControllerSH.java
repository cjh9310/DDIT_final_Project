package kr.or.ddit.controller;

import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.ContestVO;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.MentoringVO;
import kr.or.ddit.service.ContestService;
import kr.or.ddit.service.MentoringService;
import kr.or.ddit.service.SupportService;

@Controller
@RequestMapping("/comember")
public class CoMemberControllerSH {
	
	@Autowired
	private ContestService contestService; //공모전
	
	@Autowired
	private MentoringService mentoringService; //멘토링
	
	@Autowired
	private SupportService supportService; //상담
	
	/*@GetMapping("/mypage/support")
	public String  myPageSupport() throws Exception {
		String url="comember/mypage/support/contest";
		return url;
	}
	
	@GetMapping("/mypage/supportContestRegistForm")
	public String supportContestRegistForm() throws Exception {
		String url="comember/mypage/support/contestRegist";
		return url;
	}*/
	
	@RequestMapping(value="/mypage/contestRegist", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String contestRegist(			
			//@RequestBody 
			ContestVO contest,
			HttpServletRequest request) throws Exception{
		
		//String url = "redirect:/comember/mypage/support/contest";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		String coId = loginUser.getId();
		contest.setCoId(coId);
		
		contestService.regist(contest);
		//rttr.addFlashAttribute("form", "regist");
		
		return "ok";
	}
	
	@GetMapping("/mypage/contestList")
	public String contestList(Criteria cri, Model model) throws Exception {
		String url = "comember/mypage/support/contest";
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		//cri.setPerPageNum(5);
		dataMap = contestService.getContestList();
		
		model.addAttribute("dataMap",dataMap);
		
		return url;
	}
	
	@GetMapping("mypage/contestDetail")
	public String contestDetail(Model model, int conNo) throws Exception{
		
		String url = "comember/mypage/support/contestDetail";
		
		ContestVO contest = contestService.getContest(conNo);
		
		model.addAttribute("contest", contest);
		
		System.out.println(conNo);
		return url;
	}
	
	@RequestMapping("mypage/contestModifyForm")
	public String contestModifyForm(Model model, int conNo) throws Exception{
		String url = "comember/mypage/support/contestModify";
		
		ContestVO contest = contestService.getContest(conNo);
		
		model.addAttribute("contest", contest);
		
		return url;
	}
	
	/*
	 * @RequestMapping(value="mypage/contestModify")
	 * 
	 * @ResponseBody public String contestModify(ContestVO contest, @RequestParam
	 * Map<String, Object> param, RedirectAttributes rttr, int conNo)throws
	 * Exception{ String url = "redirect:/comember/mypage/support/contestDetail";
	 * 
	 * contestService.modify(contest);
	 * 
	 * 
	 * contest.setConNo(conNo);
	 * 
	 * rttr.addAttribute("conNo", contest.getConNo());
	 * 
	 * return url; }
	 */
	@RequestMapping(value="mypage/contestModify" , method = RequestMethod.POST)
	@ResponseBody
	public void contestModify(ContestVO contest)throws Exception{
		
		contestService.modify(contest);
	}
	
	@RequestMapping(value="/mypage/contestRemove")
	public void contestRemove(int conNo, RedirectAttributes rttr) throws Exception{
		
		contestService.remove(conNo);
		
	}
	
}
