package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FilterMapper {
	public List<ProductVO> getHighSalesProductList();
	public List<ProductVO> getHighScoreProductList();
	public List<ProductVO> selectCategoryProductList();
}
