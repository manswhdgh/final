<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admRecord {
	position: relative;
	top: 100px;
	left: 200px;
}
</style>
</head>
<body>
	<div id="admRecord">
		<h1>매출현황</h1>
		<div id="selectbox">
			<select>
				<option>2019</option>
				<option>2018</option>
			</select> 년도 총 매출액 : <span
				style="disply: block; width: 100px; background: pink">999,999,999원</span>
			<br> <select>
				<option>8월</option>
				<option>7월</option>
			</select> 월 총 매출액 : <span
				style="disply: block; width: 100px; background: pink">9,999,999원</span>
		</div>
		<hr>
		<div id="day">
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
			</select> 일 총 매출액 : <span
				style="disply: block; width: 100px; background: pink">1,999,999원</span>
		</div>
		<hr>
		<h2>매출내역</h2>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">시간</th>
				<th width="200">구매자아이디</th>
				<th width="100">임금주</th>
				<th width="200">계좌번호</th>
				<th width="200">충전금액(매출)</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">05:11</th>
				<th width="200">jinsubkin</th>
				<th width="100">아무개</th>
				<th width="200">국민:xxxxxx-xxxx-xxxxx</th>
				<th width="200">5,000,000</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">13:11</th>
				<th width="200">fuckjinsub</th>
				<th width="100">아무개</th>
				<th width="200">신한:xxxxxx-xxxx-xxxxx</th>
				<th width="200">50,000</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">13:44</th>
				<th width="200">jinsubfuck</th>
				<th width="100">아무개</th>
				<th width="200">농협:xxxxxx-xxxx-xxxxx</th>
				<th width="200">230,000</th>
			</tr>
			<tr bgcolor="skyblue" height="30">
				<th width="100">20:22</th>
				<th width="200">deathjs</th>
				<th width="100">아무개</th>
				<th width="200">카카오뱅크:xxxxxx-xxxx-xxxxx</th>
				<th width="200">1,250,000</th>
			</tr>

		</table>
		<br>
		<hr>
		
		<div id="footer">
			<select>
				<option>이름</option>
				<option>구매자아이디</option>
				<option>입금주</option>
				<option>계좌번호</option>
				<option>충전금액</option>
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