package co.micol.prj.notice.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.multipart.MultipartFile;

import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;

@Controller
public class NoticeContoller {
	@Autowired
	private NoticeService ns;
	@Autowired
	private ServletContext servletContext; //컨텍스패스를 찾는 것 
	

	@RequestMapping("/noticeSelect.do")
	public String noticeSelect(NoticeVO vo,Model model) {
		vo.setNoticeId(14);//강제로 하나의 레코드를 선택하기위해 만든것 
		model.addAttribute("notice",ns.noticeSelect(vo));
		return "notice/noticeSelect";

	}
	
	@GetMapping("/noticeSelectList.do")
	public String noticeSelectList(Model model) {
		model.addAttribute("notices",ns.noticeSelectList());
		return"notice/noticeSelectList";
	}
	
	@PostMapping("/noticeInsert.do")
	public String noticeInsert(NoticeVO vo , 
			@RequestParam("file") MultipartFile file) throws IllegalStateException, IOException {
		//file UpLoad 처리해야함.
		String saveFolder = servletContext.getRealPath("/fileUpload"); //저장할 공간 변수 명 
		File sfile = new File(saveFolder);//물리적 저장할 위치
		String oFileName = file.getOriginalFilename();//넘어온 파일의 이름
		if(!oFileName.isEmpty()) {
			
			//파일명 충돌방지를 위한 별명 만듦
			String sFileName = UUID.randomUUID().toString() 
					+ oFileName.substring(oFileName.lastIndexOf(".")); //파일확장자찾는것
			file.transferTo(new File(sfile,sFileName)); //파일을 물리적 위치에 저장한다.
			vo.setNoticeAttech(oFileName);
			vo.setNoticeAttechDir(saveFolder +"//"+sFileName); //저장될때 fileUpload/273747.txt 이렇게 저장된다.
			
		}
	    
		ns.noticeInsert(vo);
		return "redirect:noticeSelectList.do";
	}
	
	
	@RequestMapping("/noticeUpdate.do")
	
	public String noticeUpdate(NoticeVO vo) {
		vo.setNoticeWriter("마이콜");
		vo.setNoticeId(2);
		ns.noticeUpdate(vo);
		return "redirect:noticeSelectList.do";
	}
	
	@RequestMapping("/noticeSearch.do")
	
	public String noticeSearch(NoticeVO vo,String key,   //@RequestParm("key") String Key
			String val, Model model) {
		key="3";
		val = "우영우";
		model.addAttribute("notices",ns.noticeSearch(key, val));
		return"notice/noticeSearch";
	}
	
	@GetMapping("/noticeForm.do")
	public String noticeInsertForm() {
		return "notice/noticeForm";
	}
	
	 //호출한 페이지로 결과를 돌려보내준다.
	@RequestMapping(value="/ajaxNoticeSelect.do",produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String ajaxNoticeSelect(HttpServletResponse response) {
		String message = "ajax TEST 해보자";
		return message;
	}
	
	@GetMapping("/ajaxTest.do")
	public String ajaxTest() {
		return"notice/ajaxTest";
	}

}
