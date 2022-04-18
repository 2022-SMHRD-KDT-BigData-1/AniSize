package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MinMaxVO {
	int min;
	int max;
	String searchWord;

public MinMaxVO(int min, int max) {
	super();
	this.min = min;
	this.max = max;
}
	
}
