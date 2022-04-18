package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchMapper {
	public String selectSearchWord(String searchWord);
	public void insertSearchWord(String searchWord);
	public void countSearchWord(String searchWord);
	public List<String> getPopularSearchWord();
	public List<ProductVO> searchedProductList(String searchWord);
	public List<ProductVO> searchedProductListByPage(MinMaxVO minMaxVO);
}
