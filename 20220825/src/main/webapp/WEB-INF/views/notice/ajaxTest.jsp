<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button type="button" onclick="loadDoc()">ajaxCall</button>
<div id="demo"></div>
	<script type="text/javascript">
		function loadDoc() {
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				document.getElementById("demo").innerHTML = xhttp.responseText;
				console.log(this.responseText);
			}
			xhttp.open("GET", "ajaxNoticeSelect.do", true);
			xhttp.send();
		}
	</script>
</body>
</html>