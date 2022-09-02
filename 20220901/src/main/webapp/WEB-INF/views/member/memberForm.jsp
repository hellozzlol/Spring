<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
			<div>
				<div>
					<h1>회원가입</h1>
				</div>
				<div>
					<form id="frm" action="memberInsert.do" method="post">
						<div>
							<table>
								<tr>
									<th width="100">아이디</th>
									<td width="200"><input type="text" id="member_id"
										name="member_id"></td>
								</tr>
								<tr>
									<th width="100">비밀번호</th>
									<td width="200"><input type="password" id="member_password"
										name="member_password"></td>
								</tr>
								<tr>
									<th width="100">이름</th>
									<td width="200"><input type="text" id="member_name"
										name="member_name"></td>
								</tr>
								
							
								
							</table>
						</div>

						<br> <input type="submit" value="등록">&nbsp;&nbsp; 
						<input type="reset" value="취소">&nbsp;&nbsp;
						<a href="memberList.do">회원목록보기</a>

					</form>
				</div>
			</div>
		</div>
</body>
</html>