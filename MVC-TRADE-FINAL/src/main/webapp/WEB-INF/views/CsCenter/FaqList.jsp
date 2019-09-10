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
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="resources/js/jquery.serializeObject.js"></script>	
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
       <br>
		<h1>FAQ(자주하는 질문)</h1>
		<br>
		<table class="list">

			<tr>
				<th width=30px>번호</th>
				<th>제목</th>
				<th width=100px>글쓴이</th>
				<th width=15px>날짜</th>
			<tr>
				<td>1</td>
				<td>경매는 어떻게 하나요?</td>
				
				<td>운영자</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>2</td>
				<td>역경매란 무엇인가요?</td>
				<td>운영자</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>3</td>
				<td>거래는 어떤 절차로 이루어지나요?</td>
				<td>운영자</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>4</td>
				<td>충전은 어떻게 하나요?</td>
				<td>운영자</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>5</td>
				<td>1대1로 문의하고 싶어요</td>
				<td>운영자</td>
				<td>2019.08.19</td>
			</tr>
			<tr>
				<td>6</td>
				<td>판매신청은 어떻게 하나요?</td>
				<td>운영자</td>
				<td>2019.08.19</td>
			</tr>
	        
	        <tr>
				<td>7</td>
				<td>사기를 당했을 때 어떻게 하나요?</td>
				<td>운영자</td>
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

	</div>
	


</body>
<script>
</script>



