package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.SearchMapper;

@Controller
public class SearchController {
	@Inject
	private SearchMapper mapper;

	@RequestMapping("/search.do")
	public void search(Model model) {
		List<String> popularSearchWordList = mapper.getPopularSearchWord();
		model.addAttribute("popularSearchWordList",popularSearchWordList);
		
	}
	
	
	@RequestMapping("/doSearch.do")
	public String doSearch(String searchWord) {
		String ssw = mapper.selectSearchWord(searchWord);
		System.out.println(ssw);
		if(mapper.selectSearchWord(searchWord) == null) {
			mapper.insertSearchWord(searchWord);
		}else {
			mapper.countSearchWord(searchWord);
		}
//		+검색하는해서 결과값 출력하는 기능
		
		return "redirect:/search.do";
		
	}
	
}
