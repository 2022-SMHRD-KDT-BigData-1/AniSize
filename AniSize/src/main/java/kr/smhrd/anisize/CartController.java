package kr.smhrd.anisize;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	@RequestMapping("/cart.do")
	public void cart() {
	}
	@RequestMapping("/order.do")
	public void order() {
	}
}
