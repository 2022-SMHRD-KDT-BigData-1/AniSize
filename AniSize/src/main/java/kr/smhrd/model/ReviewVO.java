package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	private int review_num;
	private int ph_num;
	private String review_content;
	private String review_img;
	private String satis_size;
	private String satis_color;
	private String satis_thinkness;
	private double ani_neck_length;
	private double ani_chest_length;
	private double ani_back_length;
	private double ani_weight;
	private int review_score;
	private String ph_date;
	private int pd_num;
}
