package co.micol.prj.member.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.member.service.MemberService;
import co.micol.prj.member.vo.MemberVO;


@Controller
public class MemberController {
	//밑에 의존주입
	@Autowired
	private MemberService dao;
	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		model.addAttribute("members",dao.memberSelectList());//멤버목록 결과를 members에 담는다.
		return "member/memberList";
	}
	
	@PostMapping("/memberLogin.do")
	public String memberLogin(MemberVO vo , HttpSession session, Model model) {
		
		vo= dao.memberSelect(vo);
		if(vo == null) {
			model.addAttribute("message","아이디 또는 패스워드가 일치하지 않습니다.");
		}else {
			session.setAttribute("id", vo.getMember_id());
			session.setAttribute("id", vo.getMember_name());
			session.setAttribute("author",vo.getMember_author());
			model.addAttribute("message",vo.getMember_name()+"님 환영합니다.");
			
		}
		
		return "member/memberMessage";
		
	}
	
	@GetMapping("/memberLoginForm.do")
	public String memberLoginForm() {
		return "member/memberLoginForm";
		
	}
}
