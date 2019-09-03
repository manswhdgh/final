<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admTradeList {
	position: relative;
	top: 100px;
	left: 200px;
}

select {
	width: 100px;
	padding: .5em .3em;
	border: 1px solid #999;
	border-radius: 0px;
}

#selectbox {
	position: relative;
	top: 0px;
	left: 350px;
}
</style>
</head>
<body>
	<div id="admTradeList">
		<h1>거래관리</h1>
		<div id="selectbox">
			유형 : <select>
				<option>거래번호</option>
				<option>거래번호</option>
			</select> 정렬 : <select>
				<option>오름차순</option>
				<option>내림차순</option>
			</select>
		</div>
		<br>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">거래번호</th>
				<th width="100">거래유형</th>
				<th width="200">거래진행상황</th>
				<th width="200">거래종료일</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="100">일반구매</th>
				<th width="200">거래승인대기</th>
				<th width="200">-</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">2</th>
				<th width="100">경매</th>
				<th width="200">호가진행중</th>
				<th width="200">-</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">3</th>
				<th width="100">일반판매</th>
				<th width="200">구매대기중</th>
				<th width="200">-</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">4</th>
				<th width="100">역경매</th>
				<th width="200">구매확정</th>
				<th width="200">-</th>
			</tr>

		</table>
		<div align="center">${paging}</div>

		<div id="articleView_layer">
			<div id="bg_layer"></div>
			<div id="contents_layer"></div>
		</div>
		<br>
		<hr>
		<br>
		<div id="footer">
			<h5>페이징자리입니다</h5>
			<table>
				<tr bgcolor="gray" height="10">
					<th width="100">글번호</th>
					<th width="400">검색창</th>
					<td align="center"><input type="button" id="admPromo_search"
						width="100" value="검색"></td>
				</tr>
			</table>
		</div>
	</div>





</body>
</html>