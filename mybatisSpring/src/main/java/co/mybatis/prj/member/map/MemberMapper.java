package co.mybatis.prj.member.map;

import java.util.List;

import co.mybatis.prj.member.vo.MemberVO;

public interface MemberMapper {
	
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);

}
