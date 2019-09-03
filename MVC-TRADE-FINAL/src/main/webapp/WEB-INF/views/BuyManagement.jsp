<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<style type="text/css">
#title {
	position: relative;
	top: 50px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
	width: 17%;
}

#btn1 {
	position: relative;
	top: 210px;
	left: 15px;
	width: 12%;
}

#btn2 {
	position: relative;
	top: -55px;
	left: 1030px;
	width: 10%;
}

#tb1 {
	position: relative;
	top: -317px;
	left: 250px;
	width: 60%;
	text-align: center;
}

th, td, tr {
	border: 1px solid #bcbcbc;
}
</style>
</head>
<body>
	<div id="title">구매 관리</div>

	<div id="btn1">
		<button class="btn btn-primary" onclick="window.location ='MyInfo'"
			style="width: 180px; height: 40px;">내 정보</button>
		<br> <br>

		<button class="btn btn-secondary" onclick="window.location ='MsgMain'"
			style="width: 180px; height: 40px;">메시지함</button>
		<br> <br>

		<button class="btn btn-success"
			onclick="window.location ='BuyManagement'"
			style="width: 180px; height: 40px;">구매 관리</button>
		<br> <br>

		<button class="btn btn-danger"
			onclick="window.location ='SalesManagement'"
			style="width: 180px; height: 40px;">판매 관리</button>
		<br> <br>

		<button class="btn btn-warning"
			onclick="window.location ='AuctionManagement'"
			style="width: 180px; height: 40px;">경매 관리</button>
		<br> <br>

		<button class="btn btn-info"
			onclick="window.location ='ProfileModify'"
			style="width: 180px; height: 40px;">개인정보수정</button>
		<br> <br>

		<button class="btn btn-light"
			onclick="window.location ='TransactionHistory'"
			style="width: 180px; height: 40px;">결제 내역</button>
		<br> <br>

		<button class="btn btn-dark"
			onclick="window.location ='CancellationHistory'"
			style="width: 180px; height: 40px;">취소 내역</button>
	</div>

	<div id="btn2">
		<button class="btn btn-danger" style="width: 140px; height: 50px;">삭제</button>
	</div>

	<table id="tb1">
		<thead>
			<tr>
				<th>선택</th>
				<th>글 번호</th>
				<th>물품 제목</th>
				<th>가격</th>
				<th>이름</th>
				<th>거래 종료일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox" /></td>
				<td>${TradeInfo.ti_tllistnum}</td>
				<td>${AddTrade.at_Title}</td>
				<td>${TradeList.tl_Buyval}</td>
				<td>${TradeList.tl_mId}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>${TradeInfo.ti_tllistnum}</td>
				<td>${AddTrade.at_Title}</td>
				<td>${TradeList.tl_Buyval}</td>
				<td>${TradeList.tl_mId}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>${TradeInfo.ti_tllistnum}</td>
				<td>${AddTrade.at_Title}</td>
				<td>${TradeList.tl_Buyval}</td>
				<td>${TradeList.tl_mId}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>${TradeInfo.ti_tllistnum}</td>
				<td>${AddTrade.at_Title}</td>
				<td>${TradeList.tl_Buyval}</td>
				<td>${TradeList.tl_mId}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
				<td>${TradeInfo.ti_tllistnum}</td>
				<td>${AddTrade.at_Title}</td>
				<td>${TradeList.tl_Buyval}</td>
				<td>${TradeList.tl_mId}</td>
				<td>${tradeinfo.ti_date}</td>
			</tr>
		</tbody>
	</table>
</body>
</html>