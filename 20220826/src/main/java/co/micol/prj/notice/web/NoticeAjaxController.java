package co.micol.prj.notice.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;

@RestController // @controller + @responseBody 합쳐진것 호출한페이지로 결과를돌려준다.

public class NoticeAjaxController {
	@Autowired
	private NoticeService ajaxdao;

	@RequestMapping("/ajaxSearch.do")
	@ResponseBody
	public List<NoticeVO> ajaxSerarch(String key, @RequestParam String val) {
		return ajaxdao.noticeSearch(key, val);

	}
}
