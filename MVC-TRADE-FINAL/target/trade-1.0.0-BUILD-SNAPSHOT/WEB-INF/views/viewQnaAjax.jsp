<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#viewQnaAjax {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%;
}

#buttons {
	position: relative;
	top: 300px;
	left: 260px;
}
</style>
</head>
<body>

	<div id="viewQnaAjax">

		<table>
			<tr bgcolor="pink" height="300">
				<th width="500">아이디랑 패스워드를 똑바로입력해라 닝겐</th>

				<div id="buttons">
				<input type="button" id="report_acc"
					style="width: 30pt; height: 20pt" value="수정">
				<input type="button" id="report_ce"
					style="width: 30pt; height: 20pt" value="삭제">
				</div>
			</tr>
		</table>
	</div>
</body>
</html>