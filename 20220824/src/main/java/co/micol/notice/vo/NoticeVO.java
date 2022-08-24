package co.micol.notice.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
		private int notice_id;
		private String notice_writer;
		private String notice_title;
		private String notice_subject;
		private String notice_date;
		private int notice_hit;
		private String noticeattech;
		private String noticeattechdir;
}
