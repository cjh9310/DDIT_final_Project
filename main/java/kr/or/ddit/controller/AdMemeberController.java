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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.dto.FaqVO;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.dto.NewsVO;
import kr.or.ddit.dto.PublicWorkVO;
import kr.or.ddit.service.FaqService;
import kr.or.ddit.service.NewsService;
import kr.or.ddit.service.PublicWorkService;

@Controller
@RequestMapping("/admember")

public class AdMemeberController {

	@Autowired
	private PublicWorkService publicWorkService;

	@Autowired
	private FaqService faqService;

	@Autowired
	private NewsService newsService;

	@GetMapping("/mypage/support")
	public String myPageSupport() throws Exception {
		String url = "admember/mypage/support";
		return url;
	}

	@GetMapping("/mypage/info")
	public String myPageInfo() throws Exception {
		String url = "admember/mypage/lockedinfo";
		return url;
	}

	@GetMapping("/mypage/report")
	public String myPageReport() throws Exception {
		String url = "admember/mypage/report";
		return url;
	}

	@GetMapping("/mypage/community")
	public String myPageCommunity(String adId, HttpServletRequest request) throws Exception {
		String url = "admember/mypage/community";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		adId = loginUser.getId();
		System.out.println(adId);

		List<PublicWorkVO> publicWorkVO = publicWorkService.getAllPublicWokrList(adId);
		List<FaqVO> faqVO = faqService.getAllFaqList(adId);

		request.setAttribute("PublicWorkList", publicWorkVO);
		request.setAttribute("FaqList", faqVO);

		return url;

	}

	@RequestMapping(value = "/mypage/communityPubDetail", method = RequestMethod.POST)
	public @ResponseBody PublicWorkVO detailPubwork(@RequestParam("pubNo") int pubNo, Model model) throws Exception {
		PublicWorkVO publicWokrVO = publicWorkService.getPublicWork(pubNo);

		model.addAttribute("openPubDetail", publicWokrVO);

		return publicWokrVO;

	}

	@RequestMapping(value = "/mypage/communityFaqDetail", method = RequestMethod.POST)
	public @ResponseBody FaqVO detailFaq(@RequestParam("faqNo") int faqNo, Model model) throws Exception {
		FaqVO faqVO = faqService.getFaq(faqNo);

		model.addAttribute("openFaqDetail", faqVO);

		return faqVO;

	}

	@PostMapping("/mypage/pubRegist")
	@ResponseBody
	public String registPublicWork(PublicWorkVO publicWork, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/mypage/community";

		publicWorkService.regist(publicWork);

		rttr.addFlashAttribute("from", "regist");

		return url;

	}

	@PostMapping("/mypage/faqRegist")
	@ResponseBody
	public String registFaq(FaqVO faq, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/mypage/community";

		faqService.regist(faq);

		rttr.addFlashAttribute("from", "regist");

		return url;

	}

	@RequestMapping(value = "/mypage/pubModify", method = RequestMethod.POST)
	public String modifyPublicWork(PublicWorkVO publicwork, HttpServletRequest request, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/admember/mypage/community";

		publicWorkService.modify(publicwork);

		rttr.addAttribute("from", "community");

		return url;

	}

	@RequestMapping(value = "/mypage/faqModify", method = RequestMethod.POST)
	public String modifyFaq(FaqVO faq, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/admember/mypage/community";

		faqService.modify(faq);

		rttr.addAttribute("from", "community");

		return url;

	}

	@PostMapping("/mypage/remove")
	@ResponseBody
	public String removePublicWork(int pubNo, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/mypage/community";

		publicWorkService.remove(pubNo);

		rttr.addAttribute("from", "community");

		return url;
	}

	@PostMapping("/mypage/faqRemove")
	@ResponseBody
	public String removeFaq(int faqNo, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/mypage/community";

		faqService.remove(faqNo);

		rttr.addAttribute("from", "community");

		return url;
	}

	@GetMapping("/mypage/news")
	public String news(Criteria cri, HttpServletRequest request) throws Exception {
		String url = "admember/mypage/news";

		Map<String, Object> dataMap = null;
		dataMap = newsService.getNewsList(cri);

		request.setAttribute("dataMap", dataMap);

		return url;
	}

	@RequestMapping(value = "/mypage/newsDetail", method = RequestMethod.POST)
	public @ResponseBody NewsVO detailNews(@RequestParam("newsNo") int newsNo, Model model) throws Exception {

		NewsVO newsVO = newsService.getNews(newsNo);

		System.out.println(newsVO);

		model.addAttribute("newsDetail", newsVO);

		return newsVO;
	}

	@PostMapping("/mypage/newsRegist")
	@ResponseBody
	public String registNews(NewsVO news, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		String url = "redirect:/mypage/newsRegist";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		String adId = loginUser.getId();
		System.out.println(adId);

		news.setAdId(adId);

		System.out.println("news :" + news);
		newsService.regist(news);

		rttr.addFlashAttribute("from", "regist");

		return url;

	}

	
	  @RequestMapping(value="/mypage/newsModify", method = RequestMethod.POST)
	  public String modifyNews(NewsVO news, HttpServletRequest request,
	  RedirectAttributes rttr) throws Exception { 
	
	  String url ="redirect:/admember/mypage/newsModify";
	  
	  newsService.modify(news);
	  
	  rttr.addAttribute("from","modify");
	  
	  return url;
	  
	  }
	 
	@PostMapping("/mypage/newsRemove")

	@ResponseBody
	public String removeNews(int newsNo, RedirectAttributes rttr) throws Exception {

		String url = "redirect:/mypage/newsRemove";

		newsService.remove(newsNo);

		rttr.addAttribute("from", "remove");

		return url;
	}

}
