package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {
	public List<ProductVO> getProductList();
	public ProductVO selectProduct(int pd_num);
	public 
}
