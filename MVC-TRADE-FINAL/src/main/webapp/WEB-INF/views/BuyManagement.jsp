<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#title {
	position: relative;
	top: -420px;
	left: 640px;
	font: bold 3.5em/1.0em 맑은고딕체;
}

#tb1 {
	position: relative;
	width: 60%;
	height: 90%;
	top: -296px;
	left: 240px;
	text-align: center;
}

table, td, tr {
	border: 1px solid #bcbcbc;
}

#a {
	position: relative;
	top: 230px;
}
</style>
</head>
<body>
	<div id="a">
		<button onclick="window.location ='MyInfo'"
			style="width: 180px; height: 40px;">내 정보</button>
		<br>
		<br>

		<button onclick="window.location ='MsgMain'"
			style="width: 180px; height: 40px;">메시지함</button>
		<br>
		<br>

		<button onclick="window.location ='BuyManagement'"
			style="width: 180px; height: 40px;">구매 관리</button>
		<br>
		<br>

		<button style="width: 180px; height: 40px;">판매 관리</button>
		<br>
		<br>

		<button style="width: 180px; height: 40px;">경매 관리</button>
		<br>
		<br>

		<button style="width: 180px; height: 40px;">개인정보수정</button>
		<br>
		<br>

		<button style="width: 180px; height: 40px;">결제 내역</button>
		<br>
		<br>

		<button style="width: 180px; height: 40px;">취소 내역</button>
	</div>

	<!-- 상단 -->
	<div id="title">구매 관리</div>

	<table id="tb1">
		<thead>
			<tr>
				<th>글 번호</th>
				<th>물품 제목</th>
				<th>가격</th>
				<th>이름</th>
				<th>거래 종료일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${tradeinfo.ti_tllistnum}</td>
				<td>${message.ms_content}</td>
				<td>${tradeinfo.ti_buyval}</td>
				<td>${member.m_id}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td>${tradeinfo.ti_tllistnum}</td>
				<td>${message.ms_content}</td>
				<td>${tradeinfo.ti_buyval}</td>
				<td>${member.m_id}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td>${tradeinfo.ti_tllistnum}</td>
				<td>${message.ms_content}</td>
				<td>${tradeinfo.ti_buyval}</td>
				<td>${member.m_id}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td>${tradeinfo.ti_tllistnum}</td>
				<td>${message.ms_content}</td>
				<td>${tradeinfo.ti_buyval}</td>
				<td>${member.m_id}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td>${tradeinfo.ti_tllistnum}</td>
				<td>${message.ms_content}</td>
				<td>${tradeinfo.ti_buyval}</td>
				<td>${member.m_id}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>