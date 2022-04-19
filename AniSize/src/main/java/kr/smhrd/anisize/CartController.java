package kr.smhrd.anisize;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
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
//		System.out.println(vo.toString());
		cartMapper.addCart(vo);
		System.out.println("장바구니 담기 성공");
		return "성공";
	}
	@RequestMapping("/deleteCart.do")
	public void deleteCart(CartVO vo) {
		cartMapper.deleteCart(vo);
	}
	@RequestMapping("/updateCartQuantity.do")
	public void updateCartQuantity(int mem_num, int quantity) {
		cartMapper.updateCartQuantity(mem_num, quantity);
	}
	@RequestMapping("/order.do")
	public void order() {
		
		
	}
	@RequestMapping("/orderOK.do")
	public void orderOK() {
		
	}
	@RequestMapping("/buy.do")
	public @ResponseBody String buy(@RequestBody List<CartVO> buyList, Model model, HttpSession session) {
//		System.out.println(buyList.toString());
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
	
}
