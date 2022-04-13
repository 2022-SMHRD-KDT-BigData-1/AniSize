package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	private int pd_num;
	private int pd_cate_num;
	private String pd_name;
	private int pd_price;
	private String pd_img_count;
	private double pd_avg_score;
	private int seller_num;
	private String pd_date;
	private String brand;
	
}
