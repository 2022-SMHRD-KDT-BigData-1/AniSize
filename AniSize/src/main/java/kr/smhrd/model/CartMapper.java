package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {
	public void addCart(CartVO vo);
	public int selectStkNum(CartVO vo);
	public List<CartVO> getCart(int mem_num);
	public void updateCartQuantity(int mem_num, int quantity);
	public void deleteCart(int cart_num);
	public void doneCartList(PurchaseHistoryVO vo);
	public PurchaseHistoryVO selectStkDetail(int stk_num);
	public void buyCartList(PurchaseHistoryVO vo);
	public void salesCount(int pd_num);
}
