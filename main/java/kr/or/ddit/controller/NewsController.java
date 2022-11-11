//package kr.or.ddit.controller;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import kr.or.ddit.dto.FaqVO;
//import kr.or.ddit.dto.MemberVO;
//import kr.or.ddit.dto.NewsVO;
//import kr.or.ddit.dto.PublicWorkVO;
//import kr.or.ddit.service.FaqService;
//import kr.or.ddit.service.NewsService;
//import kr.or.ddit.service.PublicWorkService;
//
//@Controller
//@RequestMapping("/admember")
//public class NewsController {
//	
//	@Autowired
//	private NewsService newsService;
//
//
//	@GetMapping("/mypage/news")
//	public String myPageNews() throws Exception {
//		String url="admember/mypage/news";
//		return url;
//	}
//	
//	
//	@RequestMapping(value = "/mypage/NewsDetail", method = RequestMethod.POST)
//	public @ResponseBody NewsVO detailNews(@RequestParam("newsNo") int newsNo, Model model) throws Exception {
//		NewsVO newsVO = newsService.getNews(newsNo);
//		
//		model.addAttribute("openNewsDetail", newsVO);
//		
//		return newsVO;
//	}	
//	
//	
//	@PostMapping("/mypage/newsregist")
//	@ResponseBody
//	public String registNews(NewsVO news, RedirectAttributes rttr) throws Exception {	
//		String url = "redirect:/mypage/news";
//		
//		newsService.regist(news);
//		
//		rttr.addFlashAttribute("from","regist");
//		
//		return url;
//		
//	}	
//
//	@RequestMapping(value="/mypage/newsmodify", method = RequestMethod.POST)
//	public String modifyNews(NewsVO news, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
//		String url = "redirect:/admember/mypage/news";
//		
//		newsService.modify(news);
//		
//		rttr.addAttribute("from","news");
//		
//		return url;
//		
//	}
//
//	@PostMapping("/mypage/newsRemove")
//	@ResponseBody
//	public String removeNews(int newsNo, RedirectAttributes rttr) throws Exception {
//		String url = "redirect:/mypage/news";
//		
//		newsService.remove(newsNo);
//		
//		rttr.addAttribute("from","community");
//		
//		return url;
//	}	
//	
//}
