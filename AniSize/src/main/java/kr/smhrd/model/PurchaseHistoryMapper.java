package kr.smhrd.model;

import java.util.List;

public interface PurchaseHistoryMapper {
	public List<PurchaseHistoryVO> getPhList(int mem_num);
	public PurchaseHistoryVO selectPhDetail(int ph_num);
//	public ProductVO selectPhProduct(int pd_num);
}
