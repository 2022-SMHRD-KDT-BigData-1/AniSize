package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductStockVO {
	private int stk_num;
	private int pd_num;
	private int stk_quantity;
	private int stk_price;
	private String stk_option;
	private String stk_size;
	private double stk_back_length;
	private double stk_neck_length;
	private double stk_chest_length;
}
