package co.micol.prj.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.micol.prj.member.map.MemberMapper;
import co.micol.prj.member.vo.MemberVO;
@Service
public class MemeberServiceImpl implements MemberService {
	
	@Autowired 
	private MemberMapper map; //IoC에서 자동으로 mybatis mapper를 주입해주는 것 
	
	

	@Override
	public List<MemberVO> memberSelectList() {
		// 전체 멤버 목록가져오는 것 
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// 한명의 멤버정보를 가져오기
		// 내이름과 똑같은거 가져오면됩니다 map.찍고
		return map.memberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// 멤버추가
		return map.memberInsert(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// 멤버정보 변경
		
		return map.memberUpdate(vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// 멤버삭제
		return map.memberDelete(vo);
	}

}
