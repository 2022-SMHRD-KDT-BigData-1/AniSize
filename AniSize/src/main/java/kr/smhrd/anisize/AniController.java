package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.AniKindVO;
import kr.smhrd.model.AnimalMapper;
import kr.smhrd.model.AnimalVO;
import kr.smhrd.model.MemberVO;

@Controller
public class AniController {
	@Inject
	AnimalMapper aniMapper;
	
	@RequestMapping("/aniJoin.do")
	public void aniJoin(Model model) {
		List<AniKindVO> aniKindList = aniMapper.aniKindList();
		model.addAttribute("aniKindList", aniKindList);
	}
	@RequestMapping("/aniUpdate.do")
	public void aniUpdate (Model model) {
		List<AniKindVO> aniKindList = aniMapper.aniKindList();
		model.addAttribute("aniKindList", aniKindList);
	}
	@RequestMapping("/aniJoinCheck.do")
	public void aniJoinCheck () {
	}

	@RequestMapping("/insertAniInfo.do")
	public String insertAniInfo(AnimalVO vo) {
		System.out.println("인서트애니인포함수까진옴");
		System.out.println(vo.getAni_kind());
		aniMapper.insertAniInfo(vo);
		System.out.println(vo.toString());
		aniMapper.aniJoinDone(vo.getMem_num());
		return "redirect:/home.do";
	}
	@RequestMapping("/insertAniInfoLater.do")
	public String insertAniInfoLater (HttpSession session) {
		MemberVO mem = (MemberVO)session.getAttribute("member");
		aniMapper.insertAniInfoLater(mem.getMem_num());
		return "redirect:/home.do";
	}
	@RequestMapping("/updateAniInfo.do")
	public String updateAniInfo(AnimalVO vo) {
		System.out.println("인서트애니인포함수까진옴");
		System.out.println(vo.getAni_kind());
		aniMapper.updateAniInfo(vo);
		return "redirect:/home.do";
	}
	
	
	
}
