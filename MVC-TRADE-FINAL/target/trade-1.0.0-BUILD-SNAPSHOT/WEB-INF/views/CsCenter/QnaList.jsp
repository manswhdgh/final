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
	margin-top:180px;
}

td {
	height: 50px;
}

.line {
	
}
.menu{
    float: left;
	position: absolute;
	margin-top:50px;
}
li{
	list-style: none;
}


</style>
<body>
	<ul class="menu">
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="1대1문의하기" class="la"></li>
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="나의질문과답변" class="lb"></li>
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="FAQ" class="lc"></li>
		<li><input type="button" style="width: 110pt; height: 110pt;"
			value="신고하기" class="ld"></li>
	</ul>
 
	<div class="QnaList" align="center">
	   <hr>
	
		<h1>1대1문의 게시판 리스트</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right"><input type="button" 
				value="1대1문의하기"></td>
			</tr>

			<tr>
				<th width=40px>번호</th>
				<th>제목</th>
				<th width=100px>글쓴이</th>
				<th width=15px>날짜</th>
			<tr>
				<td>1</td>
				<td>안녕하세요 제목입니다.......</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>2</td>
				<td>안녕하세요 반가워요.......</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>3</td>
				<td>잣같아요</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>4</td>
				<td>잣같아요</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>5</td>
				<td>잣같아요</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>6</td>
				<td>볼링ㄱ?</td>
				<td>유지권</td>
				<td>2019.08.19</td>
			</tr>
	        
	        <tr>
				<td>7</td>
				<td>잣같아요</td>
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