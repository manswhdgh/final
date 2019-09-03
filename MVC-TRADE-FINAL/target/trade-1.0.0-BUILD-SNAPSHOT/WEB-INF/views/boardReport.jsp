<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#boardReport {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%;
}
</style>
</head>
<body>
	<div id="boardReport">
		<h1>신고센터</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">접수번호</th>
				<th width="200">문의 아이디</th>
				<th width="200">신고내용</th>
				<th width="100">신고날짜</th>
				<th width="100">진행사항</th>
				<th width="100">처리여부</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개</th>
				<th width="200">아 김진섭좆같다 진짜</th>
				<th width="100">08-19</th>
				<th width="100">처리대기</th>
				<td align="center"><input type="button" id="adm_rep"
					width="100" value="처리하기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">2</th>
				<th width="200">아무개</th>
				<th width="200">김진섭좀 죽여주세요</th>
				<th width="100">08-19</th>
				<th width="100">처리대기</th>
				<td align="center"><input type="button" id="adm_rep"
					width="100" value="처리하기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">3</th>
				<th width="200">아무개</th>
				<th width="200">김진섭 진짜 </th>
				<th width="100">08-19</th>
				<th width="100">처리완료</th>
				<td align="center"><input type="button" id="adm_rep"
					width="100" value="처리하기"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">4</th>
				<th width="200">아무개</th>
				<th width="200">김진섭은사회악이다</th>
				<th width="100">08-19</th>
				<th width="100">처리대기</th>
				<td align="center"><input type="button" id="adm_rep"
					width="100" value="처리하기"></td>
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