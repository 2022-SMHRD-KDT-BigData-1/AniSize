package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {
	public void addCart(CartVO vo);
	public List<CartVO> getCart(int mem_num);
	public void updateCartQuantity(int mem_num, int quantity);
	//쿼리스트링으로 vo가 전달됨? addCart는 어떻게함 아 폼으로 하는건가? 버튼으로 하는건데 해보고 통일한다
	//vo로 보낼지 인자만 쿼리스트링으로 각각 보낼지
	public void deleteCart(CartVO vo);
}
