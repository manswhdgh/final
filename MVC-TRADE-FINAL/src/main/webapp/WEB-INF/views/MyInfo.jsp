<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<style type="text/css">
#title {
	position: relative;
	top: 50px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
	width: 12%;
}

#btn1 {
	position: relative;
	top: 210px;
	left: 15px;
	width: 12%;
}

#btn2 {
	position: relative;
	top: 100px;
	left: 550px;
	width: 15%;
}

#btn3 {
	position: relative;
	top: 40px;
	left: 740px;
	width: 15%;
}

#tb1 {
	position: relative;
	top: -388px;
	left: 250px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 30%;
	border: 2px solid #5CD1E5;
}

#tb2 {
	position: relative;
	top: -691px;
	left: 730px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 30%;
	border: 2px solid #5CD1E5;
}
</style>
</head>

<body>
	<div id="title">내 정보</div>

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
		<button class="btn btn-danger" style="width: 180px; height: 60px;">회원
			탈퇴</button>
	</div>
	<div id="btn3">
		<button class="btn btn-info"
			onclick="window.location ='ProfileModify'"
			style="width: 180px; height: 60px;">내 정보 수정하기</button>
	</div>

	<!-- 가져온 회원정보를 출력한다. -->
	<div id="tb1">
		<table>
			<tr>
				<td>이름[닉네임] :</td>
				<td>${Member.m_Id}</td>
			</tr>
		</table>
		<br> <br>
		<table>
			<tr>
				<td>등급 :</td>
				<td>${Grade.g_Name}</td>
			</tr>
		</table>
		<br> <br>
		<table>
			<tr>
				<td>진행중인 거래 :</td>
				<td>${Member.m_tCount}</td>
			</tr>
		</table>
		<br> <br>
		<table>
			<tr>
				<td>진행중인 경매 :</td>
				<td>${Member.m_tCount}</td>
			</tr>
		</table>
		<br> <br>
		<table>
			<tr>
				<td>마일리지 :</td>
				<td>${Member.m_Mile}</td>
			</tr>
		</table>
	</div>
	<div id="tb2">
		<table>
			<tr>
				<td>내 은행 :</td>
				<td>${Member.m_Bank}</td>
			</tr>
		</table>
		<table>
			<br>
			<br>
			<tr>
				<td>계좌 번호 :</td>
				<td>${Member.m_m_bAddr}</td>
			</tr>
		</table>
	</div>
</body>
</html>