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
	ReviewMapper reviewMapper;
	
//	@RequestMapping("/product.do")
//	public void product(Model model, String pd_num) {
//		int pdNum = Integer.parseInt(pd_num);
//		ProductVO product = productMapper.selectProduct(pdNum);
//		ReviewVO review = reviewMapper.selectProductReview(pdNum);
//		int countReview = reviewMapper.countReview(pdNum);
//		List<ProductStockVO> productStockList = productMapper.getProductStock(pdNum);
//		model.addAttribute("product", product);
//		model.addAttribute("review", review);
//		model.addAttribute("countReview", countReview);
//		model.addAttribute("productStockList", productStockList);
//	}
	@RequestMapping("/product.do")
	public void product() {
	}
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
