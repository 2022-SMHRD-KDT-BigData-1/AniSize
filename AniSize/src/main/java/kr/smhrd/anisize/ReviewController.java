package kr.smhrd.anisize;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
	public void review(Model model, HttpSession session) {
		MemberVO mem = (MemberVO) session.getAttribute("member");
		List<PurchaseHistoryVO> writeReviewList = reviewMapper.getWriteReviewList(mem.getMem_num());
		List<ReviewVO> reviewList = reviewMapper.selectMemReview(mem.getMem_num());
		model.addAttribute("writeReviewList", writeReviewList);
		model.addAttribute("reviewList", reviewList);
	}

	@RequestMapping("/review1_2.do") // 리뷰내역
	public void review1_2() {
	}

	@RequestMapping("/review2.do")
	public void review2(Model model, int ph_num, HttpSession session) {
		System.out.println("리뷰2로옴");
		System.out.println(ph_num);
		MemberVO mem = (MemberVO) session.getAttribute("member");
		AnimalVO animal = animalMapper.getAniInfo(mem.getMem_num());
		model.addAttribute("animal", animal);
		PurchaseHistoryVO ph = phMapper.selectPhDetail(ph_num);
		model.addAttribute("ph", ph);
		// 동물 정보 가져오고
		// 재고 정보 가져와서 보여주고
	}

	@RequestMapping("/insertProductReview.do")
	public String insertProductReview(ReviewVO vo, HttpSession session) {
		System.out.println("리뷰작성버튼은 성공함");
		MultipartFile review_image = vo.getReview_image();
		System.out.println(vo.toString());
		System.out.println(review_image.getOriginalFilename());
//		System.out.println(review_img.getSize());
//		System.out.println(vo.getReview_image().getOriginalFilename());
		String dir = "/home/ubuntu/dev/shm/";
		String path = session.getServletContext().getRealPath(dir);
//		String path2 = "C:\\Users\\smhrd\\git\\AniSize\\AniSize\\src\\main\\webapp\\resources\\images\\review";
//		System.out.println(path);

//		String folder = "C:/";
		String fileName = review_image.getOriginalFilename();

		UUID uuid = UUID.randomUUID();
		String ranFileName = uuid.toString() + "_" + fileName;

		File saveFile = new File(path, ranFileName);
		try {
			review_image.transferTo(saveFile);
		} catch (Exception e) {
			System.out.println(e);
		}
		String a = "/home/ubuntu/dev/shm/";
		vo.setReview_img(a + ranFileName);
		reviewMapper.insertProductReview(vo);
		double score = reviewMapper.getReviewAvgScore(vo.getPd_num());
		productMapper.updateProductAvgScore(score);
		reviewMapper.reviewDone(vo.getPh_num());

		return "redirect:/review.do";

	}

	@RequestMapping("/deleteReview.do")
	public void deleteReview(int pd_num, int mem_num) {
		reviewMapper.deleteReview(pd_num, mem_num);
	}

}
