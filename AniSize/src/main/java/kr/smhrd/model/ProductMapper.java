package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductMapper {
	public List<ProductVO> getProductList();
	public ProductVO selectProduct(int pd_num);
	public void updateProductAvgScore(double score);
	public List<ProductStockVO> getProductStock(int pd_num);
	public List<ProductVO> mostSoldProduct();
	public List<ProductVO> highScoreProduct();
	
}