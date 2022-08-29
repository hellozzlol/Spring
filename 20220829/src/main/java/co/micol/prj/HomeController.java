package co.micol.prj;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {
	
	
	
	
	@RequestMapping("/")
	public String home2() {

		return "home/home";
	}
	
	
	@RequestMapping("/home.do")
	public String home() {

		return "home/home";
	}
	
	
	@GetMapping("/charts.do")
	public String charts() {
		return "home/chart";
	}
	
	@GetMapping("/tables.do")
	public String tables() {
		return "home/tables";
	}
}
