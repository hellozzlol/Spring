package co.micol.prj.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //member 관리 controller 
public class MemberController {
	
    //전달인자만 보낼땐 get 근데 파라미터를가지고 보낼땐 post 로 보내야한다 
	@GetMapping("memberList.do")
	public String memberList() {
		return "member/memberList";
	}

	@RequestMapping("memberSearch.do")
	public String memberSearch() {
		return "member/memberSearch";
	}

	@RequestMapping("memberInsert.do")
	public String memberInsert() {
		return "member/memberInsert";
	}
}
