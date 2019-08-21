<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#reportAjax {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%
}
</style>
</head>
<body>

	<div id="reportAjax">

		<p>문의 아이디 :
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">아무개</th>
			</tr>
		</table>
		</p>
		<p>신고 유형 :
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">욕설</th>
			</tr>
		</table>
		</p>
		<p>조취될 계정
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">가와정</th>
			</tr>
		</table>
		</p>
		<p>
			조취내용 : <select>
				<option>블랙처리</option>
				<option>7일이용정지</option>
				<option>3일이용정지</option> 
			</select> </p>
			<br><input type="button" id="report_acc"
				style="width: 50pt; height: 50pt" value="처리"> <input
				type="button" id="report_ce" style="width: 50pt; height: 50pt"
				value="취소">
	</div>

</body>
</html>