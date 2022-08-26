<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	color: #666;
	font: 14px/24px "Open Sans", "HelveticaNeue-Light",
		"Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial,
		"Lucida Grande", Sans-Serif;
}

table {
	border-collapse: separate;
	border-spacing: 0;
	width: 100%;
}

th, td {
	padding: 6px 15px;
}

th {
	background: #42444e;
	color: #fff;
	text-align: left;
}

tr:first-child th:first-child {
	border-top-left-radius: 6px;
}

tr:first-child th:last-child {
	border-top-right-radius: 6px;
}

td {
	border-right: 1px solid #c6c9cc;
	border-bottom: 1px solid #c6c9cc;
}

td:first-child {
	border-left: 1px solid #c6c9cc;
}

tr:nth-child(even) td {
	background: #eaeaed;
}

tr:last-child td:first-child {
	border-bottom-left-radius: 6px;
}

tr:last-child td:last-child {
	border-bottom-right-radius: 6px;
}
</style>
<script src="resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div align="center">
		<div>
			<h1>공지사항 목록</h1>
		</div>
		<div>
			<table>
				<tr>
					<td width="70"><select id="key" name="key">
							<option value="1">제목</option>
							<option value="2">내용</option>
							<option value="3">작성자</option>
					</select></td>

					<td width="100"><input type="text" id="val" name="val">
					</td>
					<td width="100" align="center">
						<button type="button" onclick="searchCall()">검색</button>
					</td>
				</tr>
			</table>

			<table id="list">
				<thead>
					<tr>
						<th width="100">순번</th>
						<th width="150">작성자</th>
						<th width="250">제목</th>
						<th width="150">작성일자</th>
						<th width="100">조회수</th>
						<th width="100">첨부파일</th>

					</tr>
				</thead>
				
				 <tbody id="tb">
					<c:if test="${empty notices }">
						<tr>
							<td colspan="6" align="center">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					<c:forEach items="${notices }" var="N">
						<tr class="colored" onclick="noticeCall(${N.NOTICE_ID})">
							<td align="center">${N.NOTICE_ID}</td>
							<td align="center">${N.NOTICE_WRITER }</td>
							<td>&nbsp;${N.NOTICE_TITLE }</td>
							<td align="center">${N.NOTICE_DATE }</td>
							<td align="center">${N.NOTICE_HIT }</td>
							<c:choose>
								<c:when test="${not empty N.NOTICEATTECH }">
									<td align="center">@</td>
								</c:when>
								<c:otherwise>
									<td align="center"></td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<form id="frm" method="post">
				<input type="hidden" id="noticeId" name="noticeId">
			</form>
		</div>
	</div>

	<script type="text/javascript">
		function noticeCall(id){
		frm.noticeId.value=id;
		frm.action = "noticeSelect.do";
		frm.submit();
	}
	
		
		//post방식
		/*
	 	function searchCall() { // ajax로 검색처리
		     let key = document.getElementById('key').value;
		      let val = document.getElementById('val').value;
		      
		      fetch("ajaxSearch.do", { // restController로 생성
		         method: 'post',
		         mode : 'cors',
		         cache : 'no-cache',
		         credentials :'same-origin',
		         headers : {
		            'Content-Type' : 'application/x-www-form-urlencoded',
		        },
		         redirect : 'follow',
		         referrer : 'no-referrer',
		         body : "key=" + key + "&val=" + val
		      })
		      .then(response => response.json())
		      .then((data) => jsonHtmlConvert(data));  //html convert method  //html convert method가 필효하다.
		   }
		
		*/
		/*
	 	function jsonHtmlConvert(data) {
	         $("#tb").remove();
	         var tbody = $("<tbody id />");
	         $.each(data, function(index, item){
	            var row = $("<tr />").append(
	                     $("<td />").text(item.noticeNo),
	                     $("<td><a href=${n.noticeTitle}</a></td>").text(item.noticeTitle),
	                     $("<td />").text(item.noticeWriter),
	                     $("<td />").text(item.noticeDate),
	                     $("<td />").text(item.noticeHit),
	                     $("<td />").text(item.noticeattech),
	                         
	                  );
	            tbody.append(row);
	         });
	         $("#list").append(tbody);
	      }
		*/

	
		function searchCall() {
			  let key = document.getElementById('key').value;
		     let val = document.getElementById('val').value;
		     
		     $.ajax({
		    	url : "ajaxSearch.do",
		    	method : 'post',
		    	data : {'key' : key, 'val' : val},
		    	dataType : 'json',
		    	success : function(response) {
					console.log(response);
					htmlView(response);
				},
				error : function () {
					
				}
		     });
			function htmlView(data) {
				//html로 변환해서 원하는 위치에 출력하도록 구현
				
				 $("#tb").remove();
		         var tbody = $("<tbody id='tb' />");
		         //tbody.attr("id","tb");
		         $.each(data, function(index, item){
		            var row =  $('<tr>').attr("onclick", "noticeCall("+ item.noticeId +")")
                    .append(
		                     $("<td />").text(item.noticeId),
		                     $("<td />").text(item.noticeWriter),
		                     $("<td />").text(item.noticeTitle),
		                     $("<td />").text(item.noticeDate),
		                     $("<td />").text(item.noticeHit),
		                     $("<td />").text(item.noticeattech),
		                         
		                  );
		            tbody.append(row);
		         });
		         $("#list").append(tbody);
			}
			
		}
	
</script>
</body>
</html>