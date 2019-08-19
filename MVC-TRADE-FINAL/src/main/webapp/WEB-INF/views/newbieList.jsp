<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#newbieList {
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
}
</style>
</head>
<body>
	<div id="newbieList">
		<h1>신규 회원수</h1>
		<div id="selectbox">
		<h2>총 회원수 :<span
				style="disply: block; width: 100px; background: pink">370,000명</span> </h2>
			<select>
				<option>8</option>
				<option>9</option>
			</select> 월 가입자 수 : <span
				style="disply: block; width: 100px; background: pink">999명</span>
				</div>
			<hr> 
			<select>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
			</select> 일 가입자 수: <span
				style="disply: block; width: 100px; background: pink">99명</span>
		<br>
		
		<h2>가입자명단</h2>
		<hr>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">가입시간</th>
				<th width="200">가입아이디</th>
				<th width="200">지역</th>
				<th width="100">가입유형</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">09:01</th>
				<th width="200">fuckjinsub</th>
				<th width="200">충북시골</th>
				<th width="100">신입</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">12:11</th>
				<th width="200">KINJS</th>
				<th width="200">동작구</th>
				<th width="100">탈퇴</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">16:44</th>
				<th width="200">jinsubkim</th>
				<th width="200">쓰레기통</th>
				<th width="100">재가입</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">18:06</th>
				<th width="200">kinjinsub</th>
				<th width="200">핵폐기물처리장</th>
				<th width="100">신규</th>
			</tr>

		</table>
		<br>
		<hr>
		
		<div id="footer">
			<select>
				<option>이름</option>
				<option>가입아이디</option>
				<option>주소</option>
				<option>가입유형</option>
			</select>
			<table>
				<tr bgcolor="gray" height="10">
					<th width="400">검색창</th>
					<td align="center"><input type="button" id="admPromo_search"
						width="100" value="검색"></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>