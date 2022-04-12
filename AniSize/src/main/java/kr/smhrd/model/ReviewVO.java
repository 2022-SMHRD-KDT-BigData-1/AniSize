package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	private int review_num;
	private int mem_num;
	private int pd_num;
	private String review_content;
	private String review_img;
	private String stk_option;
	private String stk_size;
	private int review_score;
}
