package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AnimalVO {
	private int ani_num;
	private String ani_name;
	private String mem_num;
	private String ani_sex;
	private String ani_kind;
	private String ani_weight;
	private String ani_back_len;
	private String ani_neck_len;
	private String ani_chest_len;
}
