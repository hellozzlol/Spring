package co.mybatis.prj.member.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.mybatis.prj.member.service.MemberService;
import co.mybatis.prj.member.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService service; //dao를 통해 Repository에서 결과를 가져온다.
	
	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		//service model은 스프링프레임워크에서 제공하는 것 그냥 쓰면된다 
		//service 객체를 호출해서 값을 가져오게 처리
		model.addAttribute("members",service.memberSelectList());
		// 변수명 members는 jsp에서 쓴다.
		return "member/memberList";
		
	}
	
	@RequestMapping("/memberSelect.do")
	public String memberSelect(MemberVO vo,Model model) {
		//데이터조회처리
		model.addAttribute("member",service.memberSelect(vo));
		return "member/memberSelect";
	}
	

	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo ,Model model) {
		//멤버 추가 처리
		//1이면성공 0이면실패
		int n = service.memberInsert(vo);
		if(n!=0) {
			model.addAttribute("message","정상적으로 추가되었습니다.");
			
		}else {
			model.addAttribute("message","멤버 추가가 실패하였습니다.");
		}
		return "member/memberInsert";
		
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo ,Model model) {
		
		int n = service.memberDelete(vo);
		if(n!=0) {
			model.addAttribute("message","정상적으로 삭제되었습니다.");
			
		}else {
			model.addAttribute("message","멤버 삭제가 실패하였습니다.");
		}
		return "member/memberDelete";
	
	}
	
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo ,Model model) {
		
		int n = service.memberUpdate(vo);
		if(n!=0) {
			model.addAttribute("message","정상적으로 추가되었습니다.");
			
		}else {
			model.addAttribute("message","멤버 정보변경 실패하였습니다.");
		}
		return "member/memberUpdate";
	
	}
	
	
	
}
