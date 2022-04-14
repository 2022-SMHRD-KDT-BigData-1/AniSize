package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.FilterMapper;
import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.ProductVO;

@Controller
public class HomeController {
	@Inject
	ProductMapper productMapper;
	@Inject
	FilterMapper filterMapper;
	
	@RequestMapping("/home.do")
	public void home(Model model) {
		List<ProductVO> productList = productMapper.getProductList();
		model.addAttribute("productList", productList);
	}

	
	@RequestMapping("/categorySearch.do")
	public void home(Model model, int pd_cate_num) {
		List<ProductVO> productList = filterMapper.selectCategoryProductList();
		model.addAttribute("productList", productList);
	}


	
}
