<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>

<style type="text/css">
#btn1 {
	position: relative;
	top: 230px;
	left: 350px;
}

#btn2 {
	position: relative;
	top: 130px;
	left: 591px;
}

#btn3 {
	position: relative;
	top: 140px;
	left: 350px;
}

#btn4 {
	position: relative;
	top: 40px;
	left: 470px;
}

#btn5 {
	position: relative;
	top: -60px;
	left: 591px;
}

#btn6 {
	position: relative;
	top: -370px;
	left: 750px;
}

table {
	width: 45%;
	height: 31%;
	position: relative;
	top: -355px;
	left: 780px;
}

table, th, td {
	border: 1px solid #bcbcbc;
}

td {
	height: 30%;
}
</style>
</head>
<body>
	<div id="btn1">
		<button style="width: 230px; height: 100px;">1.구매하기/판매하기</button>
	</div>
	<div id="btn2">
		<button style="width: 150px; height: 100px;">2.경매/역경매</button>
	</div>
	<div id="btn3">
		<button onclick="window.location ='MyInfo'"
			style="width: 110px; height: 100px;">3.내 정보</button>
	</div>
	<div id="btn4">
		<button style="width: 110px; height: 100px;">4.충전</button>
	</div>
	<div id="btn5">
		<button style="width: 150px; height: 100px;">5.고객센터</button>
	</div>
	<table cellspacing="0" cellpadding="0">
		<caption>
			<b><h1>공지사항</h1></b>
		</caption>
		<thead>
			<tr>
				<th>글쓴이</th>
				<th>제목</th>
				<th>작성일자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>
			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>
			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>
			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>
			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>
			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>

			<tr>
				<td>관리자</td>
				<td>이벤트 당첨자 발표</td>
				<td>2019.08.16</td>
			</tr>


		</tbody>

	</table>
</body>
</html>
