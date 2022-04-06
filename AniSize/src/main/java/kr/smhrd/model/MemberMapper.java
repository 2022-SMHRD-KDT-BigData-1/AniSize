package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	public void joinInsert(MemberVO vo);
	public MemberVO loginSelect(MemberVO vo);
	public List<MemberVO> memberList();
	public MemberVO idCheck(String id);
}
