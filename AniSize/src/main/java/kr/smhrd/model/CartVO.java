package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartVO {
	private int cart_num;
	private int mem_num;
//	private int pd_num;
	private int stk_num;
	private int cart_quantity;
	private String pd_num;
	private String pd_name;
	private int stk_price;
	private String stk_option;
	private String stk_size;
}
