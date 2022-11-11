package kr.or.ddit.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.command.Criteria;
import kr.or.ddit.command.MakeFileName;
import kr.or.ddit.dto.MemberVO;
import kr.or.ddit.service.MemberService;


@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("list")
	public String list(Criteria cri, HttpServletRequest request) throws Exception {
		String url = "member/list";

		Map<String, Object> dataMap = memberService.getMemberList(cri);

		request.setAttribute("dataMap", dataMap);

		return url;
	}

	@GetMapping("/registForm")
	public String registForm() {
		String url = "member/regist";
		return url;
	}

	@GetMapping("/detail")
	public String detail(String id, Model model) throws Exception {

		String url = "member/detail";

		MemberVO member = memberService.getMember(id);
		model.addAttribute("member", member);

		return url;
	}
	
	@GetMapping("/modifyForm")
	public String modifyForm(String id, Model model) throws Exception {

		String url = "member/modify";

		MemberVO member = memberService.getMember(id);

		String picture = MakeFileName.parseFileNameFromUUID(member.getPicture(), "\\$\\$");
		member.setPicture(picture);

		model.addAttribute("member", member);

		return url;
	}
	
	@Resource(name = "picturePath")
	private String picturePath;

	@PostMapping(value = "/picture", produces = "text/plain;charset=utf-8")
	@ResponseBody
	public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi, String oldPicture)
			throws Exception {
		ResponseEntity<String> entity = null;

		/* 파일저장폴더설정 */
		String uploadPath = picturePath;

		/* 파일명 */
		String fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
		File storeFile = new File(uploadPath, fileName);

		/* 파일경로 생성 */
		storeFile.mkdirs();

		// local HDD 에 저장.
		multi.transferTo(storeFile);

		// 기존파일 삭제
		if (oldPicture != null && !oldPicture.isEmpty()) {
			File oldFile = new File(uploadPath, oldPicture);
			if (oldFile.exists()) {
				oldFile.delete();
			}
		}

		entity = new ResponseEntity<String>(fileName, HttpStatus.OK);

		return entity;
	}

	@GetMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String id) throws Exception {
		ResponseEntity<byte[]> entity = null;

		String picture = memberService.getMember(id).getPicture();

		InputStream in = null;
		String imgPath = this.picturePath;
		try {
			in = new FileInputStream(new File(imgPath, picture));

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
		} finally {
			if (in != null)
				in.close();
		}

		return entity;
	}
	
	@GetMapping("/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String id) throws Exception {
		ResponseEntity<String> entity = null;

		MemberVO member = memberService.getMember(id);

		if (member != null) {
			entity = new ResponseEntity<String>("duplicated", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("", HttpStatus.OK);
		}

		return entity;
	}
	
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(String id, HttpSession session, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/member/detail.do";
		
		MemberVO member=null;
		
		// 이미지 파일을 삭제
		member = memberService.getMember(id);
		String savePath = this.picturePath;
		File imageFile = new File(savePath, member.getPicture());
		if (imageFile.exists()) {
			imageFile.delete();
		}
		
		//DB삭제
		memberService.remove(id);
		
		// 삭제되는 회원이 로그인 회원인경우 로그아웃 해야함.
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser!=null && loginUser.getId().equals(member.getId())) {
			session.invalidate();
		}

		
		rttr.addFlashAttribute("removeMember",member);		
		rttr.addFlashAttribute("from","remove");
		
		rttr.addAttribute("id",id);
		
		return url;
	}
	
}
