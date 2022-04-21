package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	public int insertMemJoin(MemberVO vo);
	public MemberVO selectLogin(MemberVO vo);
	public List<MemberVO> memberList();
	public String emailCheck(String email);
	public String nickCheck(String nick);
	public void memUpdate(MemberVO vo);
	
}
