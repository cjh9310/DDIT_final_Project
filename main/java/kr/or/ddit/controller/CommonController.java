package kr.or.ddit.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.dto.MenuVO;
import kr.or.ddit.service.ContestService;
import kr.or.ddit.service.MenuService;
import kr.or.ddit.service.OpenRecService;
import kr.or.ddit.service.RecruitService;

@Controller
public class CommonController {
		
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private OpenRecService openRecService;
	
	@Autowired
	private RecruitService recruitService;
	
	@Autowired
	private ContestService contestService;

	@GetMapping("main")
	public String main(Model model) throws Exception {
		String url = "common/main";
		
		Map<String, Object> openRecMap = openRecService.getOpenRecListForMain();
		Map<String, Object> recruitMap = recruitService.getRecruitListForMain();
		Map<String, Object> contestMap = contestService.getContestList();
		model.addAttribute("openRecMap", openRecMap);
		model.addAttribute("recruitMap", recruitMap);
		model.addAttribute("contestMap", contestMap);
		
		return url;
	}
	
	@RequestMapping("/index")
	public String index(@RequestParam(defaultValue = "M000000") String mCode, Model model) 
																		throws SQLException {
		String url = "common/indexPage";

		List<MenuVO> menuList = menuService.getMainMenuList();
		MenuVO menu = menuService.getMenuByMcode(mCode);

		model.addAttribute("menuList", menuList);
		model.addAttribute("menu", menu);

		return url;
	}
	
	@RequestMapping("/subMenu")
	@ResponseBody
	public ResponseEntity<List<MenuVO>> subMenuToJSON(String mCode) {
		ResponseEntity<List<MenuVO>> entity = null;
		
		List<MenuVO> subMenu = null;
		try {
			subMenu = menuService.getSubMenuList(mCode);

			entity = new ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
			e.printStackTrace();
		}

		return entity;
	}
	
	@RequestMapping("/security/accessDenied")
	public void accessDenide() {}
	
	@RequestMapping("/common/loginTimeOut")
	public String loginTimeOut(Model model) throws Exception {
		
		String url = "security/sessionOut";
		
		model.addAttribute("message", "세션이 만료되었습니다.\\n다시 로그인하세요!");
		return url;
	}
	
	@RequestMapping("/common/loginExpired")
	public String loginExpired(Model model) throws Exception {
		
		String url = "security/sessionOut";
		
		model.addAttribute("message", "다른 장치에서 로그인이 되었습니다.\\n현재 장치에서는 로그아웃 합니다!");
		return url;
	}
	
	@GetMapping("/common/loginForm")
	public String loginForm(@RequestParam(defaultValue = "") String error,
			                @ModelAttribute("retUrl") String retUrl,
			                HttpServletResponse response) {
		String url = "common/loginForm";
		
		if(error != null && error.contentEquals("-1")) {
			response.setStatus(302);
		}
		return url;
	}
	
	@RequestMapping(value="/common/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		String url = "redirect:/";
		session.invalidate();
		return url;
	}
	
}











