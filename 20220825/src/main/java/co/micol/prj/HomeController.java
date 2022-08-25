package co.micol.prj;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	
	
	
	@RequestMapping("/")
	public String home() {
	
		return "home";
	}
	//메소드 오버로딩 동일한 역할을 하는 놈을 다른이름으로 만드는걸 다형성이라고함..
	@GetMapping("/home.do")
	public String home(Model model) {
		return "home";
	}
}
