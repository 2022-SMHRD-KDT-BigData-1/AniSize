package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.CartMapper;
import kr.smhrd.model.CartVO;

@Controller
public class CartController {
	@Inject
	CartMapper cartMapper;
	@RequestMapping("/cart.do")
	public void cart(Model model, int mem_num) {
		List<CartVO> cartList = cartMapper.getCart(mem_num); 
		model.addAttribute("cartList", cartList);
	}
	@RequestMapping("/addCart.do")
	public void addCart(CartVO vo) {
		cartMapper.addCart(vo);
	}
	@RequestMapping("/deleteCart.do")
	public void deleteCart(CartVO vo) {
		cartMapper.deleteCart(vo.mem_num, vo.pd_num, vo.stk_option);
	}
	@RequestMapping("/updateCartQuantity.do")
	public void updateCartQuantity(int mem_num, int quantity) {
		cartMapper.updateCartQuantity(mem_num, quantity);
	}
	@RequestMapping("/order.do")
	public void order() {
	}
	@RequestMapping("/buy.do")
	public void buy() {
	}
	
}
