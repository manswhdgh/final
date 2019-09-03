<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
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
	top: 210px;
	left: 15px;
	width: 12%;
}

#btn2 {
	position: relative;
	top: 0px;
	left: 1020px;
	width: 10%;
}

#tb1 {
	position: relative;
	top: -288px;
	left: 250px;
	width: 60%;
	text-align: center;
}

td, tr {
	border: 1px solid #bcbcbc;
}

#category {
	position: relative;
	top: -316px;
	left: 250px;
	width: 80%;
	font: bold 1.0em/1.0em 맑은고딕체;
}
</style>
</head>
<body>
	<!-- 상단 제목 -->
	<div id="title">경매 관리</div>

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


	<!-- 메시지함 카테고리 -->

	<div id="category">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#a">경매</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#b">역경매</a></li>
		</ul>
	</div>

	<!-- 테이블 상세정보 -->
	<div class="tab-content">
		<div class="tab-pane fade show active" id="a">

			<table id="tb1">
				<thead>
					<tr>
						<th>선택</th>
						<th>글 번호</th>
						<th>물품 제목</th>
						<th>상한가</th>
						<th>이름</th>
						<th>거래 종료일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="tab-pane fade" id="b">

			<table id="tb1">
				<thead>
					<tr>
						<th>선택</th>
						<th>글 번호</th>
						<th>물품 제목</th>
						<th>즉시구매가</th>
						<th>이름</th>
						<th>거래 종료일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
					</tr>
					<tr>
						<td><input type="checkbox" /></td>
						<td>${Auction.a_tllistnum}</td>
						<td>${Auction.a_Title}</td>
						<td>${Auction.a_High}</td>
						<td>${Auction.a_mId}</td>
						<td>${Auction.a_EndDate}</td>
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