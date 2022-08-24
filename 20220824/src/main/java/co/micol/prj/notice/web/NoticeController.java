package co.micol.prj.notice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import co.micol.notice.vo.NoticeVO;
import co.micol.prj.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService service;//// dao를 통해 Repository에서 결과를 가져온다.

	@RequestMapping("/noticeList.do")
	public String noticeList(Model model) {
		model.addAttribute("notices", service.noticeSelectList());
		return "notice/noticeList";
	}

	@RequestMapping("/noticeSelectList.do")
	public String noticeSelect(NoticeVO vo, Model model) {
		model.addAttribute("notices", service.noticeSelect(vo)); //결과를 담고
		return "notice/noticeSelectList"; //view 선택 
	}

	@RequestMapping("/noticeForm.do")//글입력폼호출
	public String noticeForm() {
		
		return "notice/noticeForm";
	}

	@RequestMapping("/noticeDelete.do")
	public String noticeDelete(NoticeVO vo, Model model) {
		model.addAttribute("notice", service.noticeSelect(vo));
		return "notice/noticeDelete";

	}
	
	@PostMapping("/noticeInsert.do") //글 등록
	
	public String noticeInsert(NoticeVO vo, MultipartFile mFile) {
		//요부분에 첨부파일 처리
		System.out.println(vo.getNotice_writer());
		System.out.println(vo.getNotice_title());
		service.noticeInsert(vo);//글 내용등록
		return"redirect:noticeList.do";  //글 목록으로 돌아가랏!
	}

}
