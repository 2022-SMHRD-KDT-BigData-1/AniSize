package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FilterMapper {
	public List<ProductVO> getHighSalesProductList();
	public List<ProductVO> getHighScoreProductList();
	public List<ProductVO> selectCategoryProductList(int categoryNum);
	public List<ProductVO> getRecentProductListByPage(MinMaxVO minMaxVO);
	public List<ProductVO> getHighSalesProductListByPage(MinMaxVO minMaxVO);
	public List<ProductVO> getHighScoreProductListByPage(MinMaxVO minMaxVO);
}
