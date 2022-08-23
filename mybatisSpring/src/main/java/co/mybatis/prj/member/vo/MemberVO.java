package co.mybatis.prj.member.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	
	private String member_id; //현업가서는 memberId 이렇게 써야함...안쓰면 혼나나?궁금
	private String member_password;
	private String member_name;
	private String member_author;

}
