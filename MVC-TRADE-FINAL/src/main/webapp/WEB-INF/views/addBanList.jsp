<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#addBanList {
	position: relative;
	top: 100px;
	left: 200px;
}

#footer {
	margin: 0 auto;
}
</style>
</head>
<body>
	<div id="addBanList">
		<h1>블랙리스트</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">글번호</th>
				<th width="200">블랙 아이디</th>
				<th width="200">신고내용</th>
				<th width="100">차단횟수</th>
				<th width="100">차단해제</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">1</th>
				<th width="200">아무개1</th>
				<th width="200">이새끼꾼임</th>
				<th width="100">2회</th>
				<td align="center"><input type="button" id="ban_ckeck"
					width="100" value="차단"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">2</th>
				<th width="200">아무개2</th>
				<th width="200">이새끼병신임</th>
				<th width="100">2회</th>
				<td align="center"><input type="button" id="ban_ckeck"
					width="100" value="차단"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">3</th>
				<th width="200">아무개3</th>
				<th width="200">김진섭같은새끼임</th>
				<th width="100">100회</th>
				<td align="center"><input type="button" id="ban_ckeck"
					width="100" value="차단"></td>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">4</th>
				<th width="200">김진섭</th>
				<th width="200">혼모노새끼의등장</th>
				<th width="100">500</th>
				<td align="center"><input type="button" id="ban_ckeck"
					width="100" value="차단"></td>
			</tr>

		</table>
		<br>
		<hr>
		<br>
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
					<td align="center"><input type="button" id="ban_search"
						width="100" value="검색"></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>