<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고하기 등록</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<style>
.ReportBox {
	
}

table {
	border-collapse: collapse;
	font-size: 15px;
	height: 50px;
}

table td, th {
	border: black solid 1px;
	padding: 5px;
}

th {
	background: skyblue;
}

.b {
	margin-top: 10px;
}

.list {
	list-style-type: none;
	text-align: bottom;
}

h1 {
	color: skyblue;
}

.top {
	text-align: center;
	margin-bottom: 50px;
}

.menu {
	float: left;
	position: absolute;
	margin-top: 210px;
}

li {
	list-style: none;
}
.frm{
	width:200px;
	align:center;
	text-align:center;
}
.form-group{
 width:500px;
margin : 0 auto;

}
</style>


</head>

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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<div class="top">
		<h1>고객센터 신고하기</h1>
	</div>
	<div class="form-group row justify-content-center">
		<div class="w100" style="padding-right: 10px">
			<select class="form-control form-control-sm" name="searchType"
				id="searchType">
				<option value="title">제목</option>
				<option value="Content">내용</option>
				<option value="reg_id">날짜</option>
			</select>
		</div>

		<div class="w300" style="padding-right: 10px">
			<input type="text" class="form-control form-control-sm"
				name="keyword" id="keyword">
		</div>
		<div>
			<button class="btn btn-sm btn-primary" name="btnSearch"
			id="btnSearch">거래 리스트 검색</button>
		</div>
	</div>


	<table class="b" align="center">
		<tr>
			<th>상담분류선택</th>
			<td><input type="checkbox">일반거래사기</td>
			<td><input type="checkbox">경매거래사기</td>
			<td><input type="checkbox">기타</td>
		</tr>
	</table>
	<br>
	<div class="ReportBox" align="center">

		<table>

			<tr>
				<th>제목</th>
				<td><input type="text" size="120" style="border: none"></td>
			</tr>
			<tr>
				<th>문의내용</th>
				<td><textarea cols="120" rows="10" style="border: none"></textarea></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file"></td>
			</tr>
		</table>

		<br> <input type="submit" value="신고하기"> <input
			type="button" value="취소하기">


	</div>
	
	

</body>
</html>