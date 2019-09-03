<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#inquiry {
	position: relative;
	top: 100px;
	left: 200px;
}
</style>
</head>
<body>
	<div id="inquiry">
		<h1>1:1 문의</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">글번호</th>
				<th width="200">신청인 아이디</th>
				<th width="200">문의내용</th>
				<th width="100">날짜</th>
				<th width="100">답변여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개1</th>
				<th width="200">아 김진섭좆같다 진짜</th>
				<th width="100">2019-08-19</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답변달기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">2</th>
				<th width="200">아무개1</th>
				<th width="200">김진섭뒤졌으면좋겠다</th>
				<th width="100">2019-08-19</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답변달기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개1</th>
				<th width="200">너도 김진섭좆같냐 ?</th>
				<th width="100">2019-08-19</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답변달기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개1</th>
				<th width="200">야나두 ㅎㅎ</th>
				<th width="100">2019-08-19</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답변달기"></td>
			</tr>

		</table>
		<br>
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
					<th width="100">아이디/내용</th>
					<th width="400">검색창</th>
					<td align="center"><input type="button" id="admPromo_search"
						width="100" value="검색"></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>