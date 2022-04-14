package kr.smhrd.anisize;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.ProductMapper;
import kr.smhrd.model.ProductVO;
import kr.smhrd.model.PurchaseHistoryMapper;
import kr.smhrd.model.PurchaseHistoryVO;

@Controller
public class PurchaseHistoryController {
	@Inject
	PurchaseHistoryMapper phMapper;
	@Inject
	ProductMapper productMapper;
	
	
	@RequestMapping("/purchaseHistory.do")
	public void purchaseHistory(Model model, HttpSession session) {
		List<PurchaseHistoryVO> phList = phMapper.getPhList(8);
		model.addAttribute("phList", phList);
	}
	@RequestMapping("/purchaseHistoryDetail.do")
	public void purchaseHistoryDetail(Model model, int num) {
		PurchaseHistoryVO phDetail = phMapper.selectPhDetail(num);
		model.addAttribute("phDetail", phDetail);
	}
	
//	@RequestMapping("/purchaseHistory.do")
//	public void purchaseHistory(Model model, HttpSession session) {
////		MemberVO mem = (MemberVO)session.getAttribute("member");
////		int mem_num = mem.getMem_num();
//		List<PurchaseHistoryVO> phList = phMapper.getPhList(8);
//		model.addAttribute("phList", phList);
////		List<Integer> pd_numList = new ArrayList<>();
//		List<ProductVO> phProductList = new ArrayList<ProductVO>();
//		for(int i = 0; i<phList.size(); i++) {
////			pd_numList.add(phList.get(i).getPd_num());
//			ProductVO pd = phMapper.selectPhProduct(phList.get(i).getPd_num());
//			phProductList.add(pd); 
//		}
//		model.addAttribute("phProductList", phProductList);
//	}
	
}
