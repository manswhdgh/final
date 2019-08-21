<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#viewQna {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%;
}


</style>
</head>
<body>
	<div id="viewQna">
		<h1>자주하는 질문</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">1</th>
				<th width="200">관리자</th>
				<th width="200">결제가 안될 때</th>
				<th width="100">07-12</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">2</th>
				<th width="200">관리자</th>
				<th width="200">로그인이 안될 때</th>
				<th width="100">07-12</th>
			</tr>
			<tr bgcolor="pink" height="30">
				<th width="100">1</th>
				<th width="200">관리자</th>
				<th width="200">결제가 안될 때</th>
				<th width="100">07-12</th>
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
		<p align="right">
		<input type="button" id="write" width="100" value="글쓰기" >
	</p>
	</div>
	

</body>
</html>