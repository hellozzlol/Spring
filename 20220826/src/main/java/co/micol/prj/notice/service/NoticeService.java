package co.micol.prj.notice.service;

import java.util.List;
import java.util.Map;


public interface NoticeService {

	// 조인 또는 vo 객체를 만들지 않고 사용할 때
	List<Map<String, Object>> noticeSelectList();

	NoticeVO noticeSelect(NoticeVO vo);

	int noticeInsert(NoticeVO vo);

	int noticeUpdate(NoticeVO vo);

	int noticeDelete(NoticeVO vo);
	
	int noticeHitUpdate(NoticeVO vo);//조회수 증가
	
	//제목에 어떤내용이 들어있으면 다 불러오라(내용도 마찬가지)
	List<NoticeVO> noticeSearch(String key, String val);
	
	//페이징
	public List<NoticeVO> getList(Criteria cri);
	
 
  
}
