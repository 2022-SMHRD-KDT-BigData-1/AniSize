package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PurchaseHistoryVO {
	private int ph_num;
	private int mem_num;
	private int pd_num;
	private int ph_quantity;
	private int stk_price;
	private String stk_option;
	private String stk_size;
	private String ph_date;
	private String recipient_address;
	private String recipient;
	private String recipient_tel;
	private String delivery_requests;
	private String payment;
	
	private String pd_name;
	
}
