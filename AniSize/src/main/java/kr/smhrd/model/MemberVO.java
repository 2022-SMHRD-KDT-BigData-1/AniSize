package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String mem_num;
	private String mem_email;
	private String mem_pw;
	private String mem_nick;
	private String mem_tel;
	private String mem_address;
}
