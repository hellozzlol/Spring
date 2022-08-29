package co.micol.prj.member.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
//	@PostMapping("/memberLogin.do")
//	public String memberLogin(MemberVO vo , HttpSession session, Model model) {
//		
//		vo= dao.memberSelect(vo);
//		
//		String viewPage = "member/memberMessage"; //실패했을때
//		if(vo == null) {
//			model.addAttribute("message","아이디 또는 패스워드가 일치하지 않습니다.");
//		}else {
//			session.setAttribute("id", vo.getMemberId());
//			session.setAttribute("id", vo.getMemberName());
//			session.setAttribute("author",vo.getMemberAuthor());
//			model.addAttribute("message",vo.getMemberName()+"님 환영합니다.");
//			
//		 viewPage="home/home"; ////아니면 redirect:home.do
//			
//		}
//		
//		return "viewPage"; //아니면 redirect:home.do
//		
//	}
//	
	
	@PostMapping("/memberLogin.do") //MedelAndView객체 사용시 권장하지 않음.
	public ModelAndView memberLogin(MemberVO vo ,HttpSession session ,ModelAndView mv) {
		vo = dao.memberSelect(vo); //로그인처리
		if(vo == null ) {
			mv.setViewName("member/memberMessage"); //보여줄 페이지 정의
			mv.addObject("message","아이디 또는 패스워드가 일치하지 않습니다."); //넘겨줄데이터
		}else {
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("id", vo.getMemberName());
			session.setAttribute("author",vo.getMemberAuthor());
			mv.setViewName("home/home");
			
		}
		return mv;
		
	}
	
	
	
	@GetMapping("/memberLoginForm.do")
	public String memberLoginForm() {
		return "memberLoginForm";
		
	}
}
