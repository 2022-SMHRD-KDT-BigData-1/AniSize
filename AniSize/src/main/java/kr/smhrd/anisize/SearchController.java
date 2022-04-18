package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.FilterMapper;
import kr.smhrd.model.MinMaxVO;
import kr.smhrd.model.ProductVO;
import kr.smhrd.model.SearchMapper;

@Controller
public class SearchController {
	@Inject
	private SearchMapper mapper;
	@Inject
	FilterMapper filterMapper;

	@RequestMapping("/search.do")
	public void search(Model model, HttpServletRequest request) {
		List<String> popularSearchWordList = mapper.getPopularSearchWord();
		model.addAttribute("popularSearchWordList",popularSearchWordList);
		
		
		int page = 1;
		if (request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		List<ProductVO> pdList = filterMapper.getHighSalesProductList();
		int lastPage = (pdList.size()-1)/10+1;
		if (lastPage == 0) {
			lastPage =1;
		}
		if (page > lastPage) {
			page = lastPage;
		} else if (page < 1) {
			page = 1;
		}
		int max = page*10;
		int min = max-9;
		
		List<ProductVO> productList = filterMapper.getHighSalesProductListByPage(new MinMaxVO(min,max));
		
		model.addAttribute("productList", productList);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage",lastPage);
	}
//	@RequestMapping("/searched.do")
//	public void searched(Model model) {
//		List<String> popularSearchWordList = mapper.getPopularSearchWord();
//		model.addAttribute("popularSearchWordList",popularSearchWordList);
//		
//	}
	
	
	@RequestMapping("/doSearch.do")
	public String doSearch(Model model, HttpServletRequest request) {
//		System.out.println(ssw);
		String searchWord = request.getParameter("searchWord");
		if(mapper.selectSearchWord(searchWord) == null) {
			mapper.insertSearchWord(searchWord);
		}else {
			mapper.countSearchWord(searchWord);
		}
//		+검색하는해서 결과값 출력하는 기능
		
		List<String> popularSearchWordList = mapper.getPopularSearchWord();
		model.addAttribute("popularSearchWordList",popularSearchWordList);
		
		int page = 1;
		if (request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		List<ProductVO> pdList = mapper.searchedProductList("%" + searchWord + "%");
		int lastPage = (pdList.size()-1)/10+1;
		if (lastPage == 0) {
			lastPage =1;
		}
		if (page > lastPage) {
			page = lastPage;
		} else if (page < 1) {
			page = 1;
		}
		int max = page*10;
		int min = max-9;
		List<ProductVO> searchedProductList = mapper.searchedProductListByPage(new MinMaxVO(min,max,"%" + searchWord + "%"));
		model.addAttribute("searchedProductList", searchedProductList);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("searchWord",searchWord);
		
		return "searched";
		
	}
	
}
