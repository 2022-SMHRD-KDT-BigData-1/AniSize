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
public class BestController {
	@Inject
	ProductMapper productMapper;
	@Inject
	FilterMapper filterMapper;
	

	
	@RequestMapping("/best.do")
	public void best(Model model, HttpServletRequest request) {
		
		int page = 1;
		if (request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		String filter = request.getParameter("filter");
		List<ProductVO> pdList = null;
		if(filter.equals("recent")) {
			pdList = productMapper.getProductList();
		}else if(filter.equals("highSales")) {
			pdList = filterMapper.getHighSalesProductList();
		}else if(filter.equals("highScore")) {
			pdList = filterMapper.getHighScoreProductList();
		}
		
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
		
		List<ProductVO> productList = null;
		if(filter.equals("recent")) {
			productList = filterMapper.getRecentProductListByPage(new MinMaxVO(min,max));
		}else if(filter.equals("highSales")) {
			productList = filterMapper.getHighSalesProductListByPage(new MinMaxVO(min,max));
		}else if(filter.equals("highScore")) {
			productList = filterMapper.getHighScoreProductListByPage(new MinMaxVO(min,max));
		}
		
		model.addAttribute("productList", productList);
		model.addAttribute("filter",filter);
		model.addAttribute("currentPage", page);
		model.addAttribute("lastPage",lastPage);
	}
}
