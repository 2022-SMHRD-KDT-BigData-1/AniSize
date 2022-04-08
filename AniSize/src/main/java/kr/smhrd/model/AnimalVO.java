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
	private int mem_num;
	private String ani_sex;
	private String ani_kind;
	private double ani_weight;
	private double ani_back_len;
	private double ani_neck_len;
	private double ani_chest_len;
}
