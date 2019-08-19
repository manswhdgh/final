<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admPromo {
	position: relative;
	top: 100px;
	left: 200px;
}
</style>
</head>
<body>
	<div id="admPromo">
		<h1>판매자 신청 리스트</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">글번호</th>
				<th width="200">신청인 아이디</th>
				<th width="200">신청일자</th>
				<th width="100">승인여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개1</th>
				<th width="200">2019-08-19</th>
				<th width="100">승인여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개2</th>
				<th width="200">2019-08-19</th>
				<th width="100">승인여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개3</th>
				<th width="200">2019-08-19</th>
				<th width="100">승인여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개4</th>
				<th width="200">2019-08-19</th>
				<th width="100">승인여부</th>
			</tr>

		</table>
		<br>
		<hr>
		<hr>
		<div align="center">${paging}</div>

		<div id="articleView_layer">
			<div id="bg_layer"></div>
			<div id="contents_layer"></div>
		</div>

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