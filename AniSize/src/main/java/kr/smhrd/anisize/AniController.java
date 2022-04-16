package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.AnimalMapper;
import kr.smhrd.model.*;

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
	public void aniUpdate () {
	}
	@RequestMapping("/aniJoinCheck.do")
	public void aniJoinCheck () {
	}

	@RequestMapping("/insertAniInfo.do")
	public String insertAniInfo(AnimalVO vo) {
		System.out.println("인서트애니인포함수까진옴");
		System.out.println(vo.getAni_kind());
		aniMapper.insertAniInfo(vo);
		return "redirect:/home.do";
	}
	
	
	
}
