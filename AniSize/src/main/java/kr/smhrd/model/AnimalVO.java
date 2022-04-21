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
	private double ani_weight;
	private double ani_back_length;
	private double ani_neck_length;
	private double ani_chest_length;
}
