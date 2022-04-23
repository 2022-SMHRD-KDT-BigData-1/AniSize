package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AnimalMapper {
	public void insertAniInfo(AnimalVO vo);
	public void insertAniInfoLater(int mem_num);
	public void updateAniInfo(AnimalVO vo);
	public AnimalVO getAniInfo(int mem_num);
	public List<AniKindVO> aniKindList();
	public void updateAniJoinDone(int mem_num);
	
}
