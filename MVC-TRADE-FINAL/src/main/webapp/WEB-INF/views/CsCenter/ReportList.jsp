<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<style>
h1 {
	color: skyblue;
}

table {
	border-collapse: collapse;
	font-size: 12px;
	line-height: 24px;
	width: 50%;
}

table td, th {
	border: black solid 1px;
	padding: 5px;
}

th {
	background: skyblue;
}

a {
	text-decoration: none;
	color: black;
}

.QnaList {
	margin-top: 15%;
}

td {
	height: 50px;
}
</style>
<body>

	<div class="QnaList" align="center">
		<h1>신고게시판</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><a
					href="">신고하자</a></td>
			</tr>

			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
			<tr>
				<td>1</td>
				<td>안녕하세요 제목입니다.......</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>2</td>
				<td>거래하다가..그새끼가...</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>3</td>
				<td>득템운영자님 도와주세요...</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>3</td>
				<td>아니 이건 아닌거 같아요...</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>4</td>
				<td>아니이건 아닌거 같아요...</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>5</td>
				<td>아니이건 아닌거 같아요...</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>



		</table>
	</div>
	<br>
	<br>
	<div class="form-group row justify-content-center">

		<div class="w100" style="padding-right: 10px">

			<select class="form-control form-control-sm" name="searchType"
				id="searchType">

				<option value="title">내용</option>

				<option value="Content">글쓴이</option>

				<option value="reg_id">작성자</option>

			</select>

		</div>

		<div class="w300" style="padding-right: 10px">

			<input type="text" class="form-control form-control-sm"
				name="keyword" id="keyword">

		</div>

		<div>

			<button class="btn btn-sm btn-primary" name="btnSearch"
				id="btnSearch">검색</button>

		</div>

</body>
</html>