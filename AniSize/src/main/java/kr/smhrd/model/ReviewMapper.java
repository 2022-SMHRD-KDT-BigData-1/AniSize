package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReviewMapper {
	public ReviewVO selectProductReview(int pd_num);
	public List<ReviewVO> selectMemReview(int mem_num);
	public void insertProductReview(ReviewVO vo);
	public double getReviewAvgScore(int pd_num);
	public int countReview(int pd_num);
	public void deleteReview(int pd_num, int mem_num);
	public List<PurchaseHistoryVO> getWriteReviewList(int mem_num);
	public void reviewDone(int ph_num);
}
