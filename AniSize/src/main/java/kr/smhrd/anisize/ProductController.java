package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.ProductStockVO;
import kr.smhrd.model.ProductVO;
import kr.smhrd.model.ReviewMapper;
import kr.smhrd.model.ReviewVO;

@Controller
public class ProductController {
	@Inject
	ProductMapper productMapper;
	@Inject
	ReviewMapper reviewMapper;
	
	@RequestMapping("/product.do")
	public void product(Model model, int pd_num) {
		ProductVO product = productMapper.selectProduct(pd_num);
		ReviewVO review = reviewMapper.selectProductReview(pd_num);
		int countReview = reviewMapper.countReview(pd_num);
		List<ProductStockVO> productStockList = productMapper.getProductStock(pd_num);
		model.addAttribute("product", product);
		model.addAttribute("review", review);
		model.addAttribute("countReview", countReview);
		model.addAttribute("productStockList", productStockList);
	}
//	@RequestMapping("/product.do")
//	public void product() {
//	}
	@RequestMapping("/best.do")
	public void best() {
	}
	@RequestMapping("/highScoreProduct.do")
	public String highScoreProduct(Model model) {
		List<ProductVO> product = productMapper.highScoreProduct();
		model.addAttribute("product", product);
		//뒤로가기 하고 새로고침해야하나? 어떤상황에서든 같은함수쓰고싶은데 
		return "";
	}
	
}
