package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVO {
	private int review_num;
	private String review_content;
	private String review_img;
	private int ph_num;
	private int satis_size;
	private int satis_color;
	private int satis_thinkness;
	private double ani_neck_length;
	private double ani_chest_length;
	private double ani_back_length;
	private double ani_weight;
	private int review_score;
	private String ph_date;
}
