<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#liveChatList {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%;
}
</style>
</head>
<body>
	<div id="liveChatList">
		<h1>실시간 문의</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">채팅번호</th>
				<th width="200">문의 아이디</th>
				<th width="200">실시간 메세지</th>
				<th width="100">시간</th>
				<th width="100">답변여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">232</th>
				<th width="200">아무개1</th>
				<th width="200">아 김진섭좆같다 진짜</th>
				<th width="100">1분전</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답장하기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
					<th width="100">233</th>
				<th width="200">아무개1</th>
				<th width="200">김진섭죽여주라</th>
				<th width="100">2분전</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답장하기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
					<th width="100">234</th>
				<th width="200">아무개1</th>
				<th width="200">김진섭개씨발새끼</th>
				<th width="100">3분전</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답장하기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
					<th width="100">235</th>
				<th width="200">아무개1</th>
				<th width="200">김진섭개패고싶다</th>
				<th width="100">4분전</th>
				<td align="center"><input type="button" id="add_answ"
					width="100" value="답장하기"></td>
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
			
		</div>
	</div>

</body>
</html>