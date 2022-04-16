package kr.smhrd.anisize;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.CartMapper;
import kr.smhrd.model.CartVO;
import kr.smhrd.model.MemberVO;

@Controller
public class CartController {
	@Inject
	CartMapper cartMapper;
	@RequestMapping("/cart.do")
	public void cart(Model model,HttpSession session) {
		int mem_num = ((MemberVO)session.getAttribute("member")).getMem_num();
		List<CartVO> cartList = cartMapper.getCart(mem_num);
		model.addAttribute("cartList", cartList);
	}
	@RequestMapping("/addCart.do")
	public void addCart(CartVO vo) {
		cartMapper.addCart(vo);
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
	public void buy() {
	}
	
}
