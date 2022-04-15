package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.AnimalMapper;
import kr.smhrd.model.AnimalVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.PurchaseHistoryMapper;
import kr.smhrd.model.PurchaseHistoryVO;
import kr.smhrd.model.ReviewMapper;
import kr.smhrd.model.ReviewVO;

@Controller
public class ReviewController {
	@Inject
	private ReviewMapper reviewMapper;
	@Inject
	private PurchaseHistoryMapper phMapper;
	@Inject
	private ProductMapper productMapper;
	@Inject
	private AnimalMapper animalMapper;
	
	@RequestMapping("/review.do")
	public void review(Model model, int mem_num) {
		List<PurchaseHistoryVO> writeReviewList = reviewMapper.getWriteReviewList(mem_num);
		model.addAttribute("writeReviewList", writeReviewList);
	}
	@RequestMapping("/review1_2.do") //리뷰내역
	public void review1_2() {
	}
	@RequestMapping("/review2.do")
	public void review2(Model model,int ph_num, HttpSession session) {
		System.out.println("리뷰2로옴");
		System.out.println(ph_num);
		MemberVO mem = (MemberVO) session.getAttribute("member");
		AnimalVO animal = animalMapper.getAniInfo(mem.getMem_num());
		model.addAttribute("animal", animal);
		PurchaseHistoryVO ph = phMapper.selectPhDetail(ph_num);
		model.addAttribute("ph", ph);
		//동물 정보 가져오고
		//재고 정보 가져와서 보여주고 
	}

	
	@RequestMapping("/insertProductReview.do")
	public void insertProductReview(ReviewVO vo) {
		
		reviewMapper.insertProductReview(vo);
		double score = reviewMapper.getReviewAvgScore(vo.getPd_num());
		productMapper.updateProductAvgScore(score);
		
	}
	@RequestMapping("/deleteReview.do")
	public void deleteReview(int pd_num, int mem_num) {
		reviewMapper.deleteReview(pd_num, mem_num);
	}

}
