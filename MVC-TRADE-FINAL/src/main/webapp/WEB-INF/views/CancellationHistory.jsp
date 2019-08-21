<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
#title {
	position: relative;
	top: 50px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
	width: 17%;
}

#btn1 {
	position: relative;
	top: 200px;
	left: 10px;
	width: 12%;
}

#tb1 {
	cellspacing: 0;
	cellpadding: 0;
	width: 60%;
	height: 40%;
	margin: 20px 0px;
	position: relative;
	top: -290px;
	left: 300px;
	text-align: center;
}

td, tr {
	border: 1px solid #bcbcbc;
}

#category {
	position: relative;
	top: -290px;
	left: 300px;
	width: 60%;
}
</style>
</head>
<body>

	<!-- 상단 제목 -->
	<div id="title">취소 내역</div>

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



	<!-- 메시지함 카테고리 -->
	<div id="category">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#aaa">구매 내역</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#bbb">판매 내역</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#ccc">경매 내역</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#ddd">역경매 내역</a></li>
		</ul>
	</div>

	<!-- 테이블 상세정보 -->
	<div class="tab-content">
		<div class="tab-pane fade show active" id="aaa">

			<table id="tb1">
				<thead>
					<tr>
						<th>유형</th>
						<th>제목</th>
						<th>거래 금액</th>
						<th>거래완료일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_pvalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_pvalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_pvalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_pvalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_pvalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>


				</tbody>

			</table>

		</div>
		<div class="tab-pane fade" id="bbb">

			<table id="tb1">
				<thead>
					<tr>
						<th>유형</th>
						<th>제목</th>
						<th>거래 금액</th>
						<th>거래완료일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_svalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_svalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_svalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_svalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>
					<tr>
						<td>${addtrade.at_pgroup}</td>
						<td>${addtrade.at_title}</td>
						<td>${addtrade.at_svalue}</td>
						<td>${tradeinfo.ti_date}</td>
					</tr>


				</tbody>

			</table>

		</div>
		<div class="tab-pane fade" id="ccc">

			<table id="tb1">
				<thead>
					<tr>
						<th>유형</th>
						<th>제목</th>
						<th>거래 금액</th>
						<th>마감일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_high}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_high}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_high}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_high}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_high}</td>
						<td>${auction.a_enddate}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="ddd">

			<table id="tb1">
				<thead>
					<tr>
						<th>유형</th>
						<th>제목</th>
						<th>거래 금액</th>
						<th>마감일자</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_low}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_low}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_low}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_low}</td>
						<td>${auction.a_enddate}</td>
					</tr>
					<tr>
						<td>${auction.a_group}</td>
						<td>${auction.a_title}</td>
						<td>${auction.a_low}</td>
						<td>${auction.a_enddate}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>