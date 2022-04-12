package kr.smhrd.anisize;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.PurchaseHistoryMapper;
import kr.smhrd.model.ReviewMapper;
import kr.smhrd.model.ReviewVO;

@Controller
public class ReviewController {
	@Inject
	private ReviewMapper reviewMapper;
	private PurchaseHistoryMapper phMapper;
	private ProductMapper productMapper;
	
	@RequestMapping("/review.do")
	public void review() {
	}
	@RequestMapping("/insertProductReview.do")
	public void insertProductReview(ReviewVO vo) {
		reviewMapper.insertProductReview(vo);
//		vo.pd_num 왜 안되는지 vo를 넘겨서 맵퍼에서 vo.pd_num을 해야하는지 
		double score = reviewMapper.getReviewAvgScore(vo.getPd_num());
		productMapper.updateProductAvgScore(score);
		
	}
	@RequestMapping("/deleteReview.do")
	public void deleteReview(int pd_num, int mem_num) {
		reviewMapper.deleteReview(pd_num, mem_num);
	}

}
