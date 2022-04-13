package kr.smhrd.anisize;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberMapper mapper;

	@RequestMapping("/login.do")
	public void login() {
	}
	@RequestMapping("/join.do")
	public void join() {
	}
	@RequestMapping("/myPage.do")
	public void myPage() {
	}
	@RequestMapping("/memUpdate.do")
	public void memUpdate() {
	}
		
	
	
	@RequestMapping("/loginSelect.do")
	public String loginSelect(MemberVO vo, HttpSession session) {
		System.out.println("로그인 기능 동작");
		MemberVO member = mapper.selectLogin(vo);
		if (member != null) {
			session.setAttribute("member", member);
		}
		return "redirect:/home.do";
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃 동작");
		session.removeAttribute("member");
		return "redirect:/home.do";
	}
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println("회원가입 기능 동작");
		mapper.insertMemJoin(vo);
		return "redirect:/aniJoinCheck.do";
	}
	@RequestMapping("/emailCheck.do")
	public @ResponseBody String emailCheck(String email) {
		System.out.println("아이디중복체크 기능 수행");
		String e = mapper.emailCheck(email);
		return e;
	}
	@RequestMapping("/nickCheck.do")
	public @ResponseBody String nickCheck(String nick) {
		System.out.println("닉네임 중복체크 기능 수행");
		String e = mapper.emailCheck(nick);
		return e;
	}
}
