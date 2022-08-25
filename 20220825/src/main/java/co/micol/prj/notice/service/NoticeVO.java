package co.micol.prj.notice.service;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	//변수는 첫글자는 반드시 소문자 그리고 암튼 밑에 처럼 쓰면된다 아참...언더바 노노 쓰면안댐
	
	private int noticeId;
	private String noticeWriter;
	private String noticeTitle;
	private String noticeSubject;
	private Date noticeDate;
	private int noticeHit;
	private String noticeAttech;
	private String noticeAttechDir;

	

}
