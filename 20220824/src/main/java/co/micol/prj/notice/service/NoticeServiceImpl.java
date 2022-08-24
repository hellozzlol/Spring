package co.micol.prj.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.micol.notice.vo.NoticeVO;
import co.micol.prj.notice.map.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService{
 @Autowired
 private NoticeMapper map;

@Override
public List<NoticeVO> noticeSelectList() {
	// TODO Auto-generated method stub
	return map.noticeSelectList();
}

@Override
public NoticeVO noticeSelect(NoticeVO vo) {
	// TODO Auto-generated method stub
	return map.noticeSelect(vo);
}

@Override
public int noticeInsert(NoticeVO vo) {
	// TODO Auto-generated method stub
	return map.noticeInsert(vo);
}

@Override
public int noticeUpdate(NoticeVO vo) {
	// TODO Auto-generated method stub
	return map.noticeUpdate(vo);
}

@Override
public int noticeDelete(NoticeVO vo) {
	// TODO Auto-generated method stub
	return map.noticeDelete(vo);
}
}
