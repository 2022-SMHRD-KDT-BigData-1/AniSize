package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.FilterMapper;
import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.ProductVO;

@Controller
public class BestController {
	@Inject
	ProductMapper productMapper;
	@Inject
	FilterMapper filterMapper;
	

	
	@RequestMapping("/best.do")
	public void best(Model model, String filter) {
		if(filter.equals("recent")) {
			List<ProductVO> productList = productMapper.getProductList();
			model.addAttribute("productList", productList);
		}else if(filter.equals("highSales")) {
			List<ProductVO> productList = filterMapper.getHighSalesProductList();
			model.addAttribute("productList", productList);
		}else if(filter.equals("highScore")) {
			List<ProductVO> productList = filterMapper.getHighScoreProductList();
			model.addAttribute("productList", productList);
		}else if(filter == null){
			System.out.println("필터값은 :");
			System.out.println(filter);
		}
	}
}
