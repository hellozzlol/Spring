package co.micol.prj.notice.map;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


import co.micol.prj.notice.service.NoticeVO;

public interface NoticeMapper {
	//이렇게 쓰면 mapper안만들어줘도 되는데 마이바티스 속성이라 안쓰는걸 권장함.
	// 조인 또는 vo 객체를 만들지 않고 사용할 때
	
	@Select("select * from notice")
	
		List<Map<String, Object>> noticeSelectList();

		NoticeVO noticeSelect(NoticeVO vo);

		int noticeInsert(NoticeVO vo);

		int noticeUpdate(NoticeVO vo);

		int noticeDelete(NoticeVO vo);
		
		//조회수 증가
		int noticeHitUpdate(NoticeVO vo);
		
		//제목에 어떤내용이 들어있으면 다 불러오라(내용도 마찬가지)
		//메퍼에선 둘이상이 전달될때는 앞쪽에다가 (@Param("속성명"),(@Param("값의 타입을 써주면된당") 적어줘야함 중요도******
		List<NoticeVO> noticeSearch(@Param("key")String key, @Param("val") String val);
		

}
