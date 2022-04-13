package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TestMapper {
	public List<ProductStockVO> getProductStock();
	public void insertProductStock(ProductStockVO vo);
	public int selectProductPrice(int pd_num);
}
