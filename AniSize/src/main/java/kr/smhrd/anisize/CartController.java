package kr.smhrd.anisize;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.model.CartMapper;
import kr.smhrd.model.CartVO;
import kr.smhrd.model.MemberVO;
import kr.smhrd.model.PurchaseHistoryVO;
import kr.smhrd.model.PurchaseVO;

@Controller
public class CartController {
	@Inject
	CartMapper cartMapper;
	
	
	@RequestMapping("/cart.do")
	public void cart(Model model, HttpSession session) {
		int mem_num = ((MemberVO)session.getAttribute("member")).getMem_num();
		List<CartVO> cartList = cartMapper.getCart(mem_num);
//		System.out.println(cartList.toString());
		model.addAttribute("cartList", cartList);
	}
	@RequestMapping("/addCart.do")
	public @ResponseBody String addCart(CartVO vo) {
		System.out.println("장바구니 담기 성공");
		System.out.println(vo.toString());
//		System.out.println("장바구니 담기 성공");
//		int stk_num = cartMapper.selectStkNum(vo);
//		vo.setStk_num(stk_num);
		System.out.println("장바구니 담기 성공");
		cartMapper.addCart(vo);
		System.out.println("장바구니 담기 성공");
		return "SuccessAddCart";
	}

	@RequestMapping("/deleteCart.do")
	public @ResponseBody String deleteCart(int cart_num) {
		System.out.println("카트삭제로 넘어옴");
		System.out.println("카트번호 : "+cart_num);
		cartMapper.deleteCart(cart_num);
		System.out.println("카트삭제 성공");
		
		return "SuccessCartDelete";
	}
	@RequestMapping("/updateCartQuantity.do")
	public void updateCartQuantity(int mem_num, int quantity) {
		cartMapper.updateCartQuantity(mem_num, quantity);
	}
	@RequestMapping("/order.do")
	public void order() {
		
		
	}
	@RequestMapping("/orderOK.do")
	public void orderOK(PurchaseVO vo) {
		System.out.println(vo.toString());
		for(int i = 0; i<vo.getStk_num().length; i++) {
			PurchaseHistoryVO ph = new PurchaseHistoryVO();
			ph.setMem_num(vo.getMem_num());
			ph.setPd_num(vo.getPd_num()[i]);
			ph.setStk_num(vo.getStk_num()[i]);
			ph.setPh_quantity(vo.getPh_quantity()[i]);
			ph.setRecipient(vo.getRecipient());
			ph.setRecipient_address(vo.getRecipient_address());
			ph.setRecipient_tel(vo.getRecipient_tel());
			ph.setDelivery_requests(vo.getDelivery_requests());
			ph.setPayment(vo.getPayment());
			cartMapper.buyCartList(ph);
			System.out.println((i+1)+"번 상품 구매 성공");
			cartMapper.doneCartList(ph);
			cartMapper.salesCount(ph.getPd_num());
		}
		System.out.println("상품구매 완료");
		
	}
	@RequestMapping("/buy.do")
	public @ResponseBody String buy(@RequestBody List<CartVO> buyList, Model model, HttpSession session) {
		System.out.println("바이함수실행");
		System.out.println(buyList.toString());
		//String[] stk_num = request.getParameterValues("stk_num");
		List<PurchaseHistoryVO> orderList = new ArrayList<PurchaseHistoryVO>();
		for(int i = 0; i<buyList.size(); i++) {
			int stk_num = buyList.get(i).getStk_num();
			PurchaseHistoryVO vo = cartMapper.selectStkDetail(stk_num);
			vo.setPh_quantity(buyList.get(i).getCart_quantity());
			orderList.add(vo);
		}
//		model.addAttribute("orderList", orderList);
		session.removeAttribute("orderList");
		session.setAttribute("orderList", orderList);
		
		return "구매이동";
	}
	
	@RequestMapping("/nowBuy.do")
	public  String nowBuy(CartVO vo, Model model, HttpSession session) {
		System.out.println("상품페이지 > 바로구매 이동 컨트롤러");
		System.out.println("vo : " + vo.toString());
//		List<CartVO> cartList = cartMapper.getCart(vo.getMem_num());
//		int stk_num = cartList.get(0).getStk_num();
		
		PurchaseHistoryVO orderList = cartMapper.selectStkDetail(vo.getStk_num());
		orderList.setPh_quantity(vo.getCart_quantity());
		orderList.setMem_num(vo.getMem_num());
		
		List<PurchaseHistoryVO> orderList1 = new ArrayList<PurchaseHistoryVO>();
		orderList1.add(orderList);		
		
		session.removeAttribute("orderList");
		session.setAttribute("orderList", orderList1);
		System.out.println(orderList1);
		
		return "order";
	}
	
}
