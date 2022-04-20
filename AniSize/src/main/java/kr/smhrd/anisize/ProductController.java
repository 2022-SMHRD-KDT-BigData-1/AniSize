package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		model.addAttribute("product", product);
		
		List<ReviewVO> reviewList = reviewMapper.selectProductReview(pd_num);
		model.addAttribute("reviewList", reviewList);
		
		int countReview = reviewMapper.countReview(pd_num);
		List<String> stkOptionList = productMapper.selectStkOptionList(pd_num);
//		System.out.println("옵션은 : " + stkOptionList.toString());
//		System.out.println("옵션은 : " + stkOptionList.get(0));
		if(stkOptionList.get(0) == null) {
			ProductStockVO vo = new ProductStockVO();
			vo.setPd_num(pd_num);
			vo.setStk_option(null);
			List<ProductStockVO> stockList = productMapper.selectNullOptionStock(pd_num);
//			System.out.println(stockList.toString());
			model.addAttribute("stockList", stockList);
		}
		model.addAttribute("stkOptionList", stkOptionList);
		model.addAttribute("countReview", countReview);
		 
//		List<ProductStockVO> productStockList = productMapper.getProductStock(pd_num);
//		model.addAttribute("productStockList", productStockList);
	}                 
	@RequestMapping("/selectOptionStock.do")
	public @ResponseBody List<ProductStockVO> selectOptionStock(ProductStockVO vo){
		List<ProductStockVO> stockList = productMapper.selectOptionStock(vo);
		//나오는게 사이즈 , 가격, 재고
		System.out.println(stockList.toString());
		return stockList;
	}
	@RequestMapping("/selectNullOptionStock.do")
	public @ResponseBody List<ProductStockVO> selectNullOptionStock(int pd_num){
		List<ProductStockVO> stockList = productMapper.selectNullOptionStock(pd_num);
		//나오는게 사이즈 , 가격, 재고
//		System.out.println(stockList.toString());
		return stockList;
	}

	//@RequestParam("pd_num") int pd_num, @RequestParam("stk_option") String stk_option
	@RequestMapping("/highScoreProduct.do")
	public String highScoreProduct(Model model) {
		List<ProductVO> product = productMapper.highScoreProduct();
		model.addAttribute("product", product);
		//뒤로가기 하고 새로고침해야하나? 어떤상황에서든 같은함수쓰고싶은데 
		return "";
	}
	
}
