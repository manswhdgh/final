<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Service</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<style>
html {
	margin-top: 30px;
}

table {
	margin-top: 30px;
	text-align: center;
}

input {
	font-size: 20px;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h1>득템 고객센터</h1>
	<hr>
	<form>
		<table align=center width=500px; height=500px; method=>
			<tr>
				<td><input type="button" style="width: 150pt; height: 150pt;"
					class="btn btn-primary" value="1대1문의"
					onclick="window.location ='CsCenter/QnAFrm'">
				</button></td>
				<td><input type="button" style="width: 150pt; height: 150pt;"
					class="btn btn-secondary" value="나의질문과답변"
					onclick="window.location ='CsCenter/QnaList'">
				</button></td>
				<td><input type="button" style="width: 150pt; height: 150pt;"
					class="btn btn-success" value="신고하기"
					onclick="window.location ='CsCenter/ReportFrm'">
				</button></td>
			</tr>

			<tr>
				<td><input type="button" style="width: 150pt; height: 150pt;"
					class="btn btn-info" value="FAQ"
					onclick="window.location ='CsCenter/FaqList'">
				</button></td>
				<td><input type="button" style="width: 150pt; height: 150pt;"
					class="btn btn-warning" value="실시간채팅상담">
				</button></td>
			</tr>
		</table>
	</form>