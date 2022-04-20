package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.FilterMapper;
import kr.smhrd.model.MinMaxVO;
import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.ProductVO;

@Controller
public class HomeController {
	@Inject
	ProductMapper productMapper;
	@Inject
	FilterMapper filterMapper;
	
	@RequestMapping("/home.do")
	public void home(Model model, HttpServletRequest request) {
		int page = 1;
		if (request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int lastPage = (productMapper.getProductList().size()-1)/10+1;
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
		List<ProductVO> productList = productMapper.getProductListByPage(new MinMaxVO(min,max));
		model.addAttribute("productList", productList);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage",lastPage);
	}

	
	@RequestMapping("/categorySearch.do")
	public String categorySearch(Model model, int categoryNum) {
		List<ProductVO> productList = filterMapper.selectCategoryProductList(categoryNum);
		model.addAttribute("productList", productList);
		return "home";
		
	}
	
	@RequestMapping("/category.do")
	public void category() {
	}
	


	
}
