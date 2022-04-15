package kr.smhrd.anisize;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.AnimalMapper;
import kr.smhrd.model.AnimalVO;

@Controller
public class AniController {
	@Inject
	AnimalMapper aniMapper;
	
	@RequestMapping("/aniJoin.do")
	public void aniJoin() {
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
