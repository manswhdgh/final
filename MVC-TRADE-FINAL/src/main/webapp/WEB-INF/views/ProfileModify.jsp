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
	width: 24%;
}

#btn1 {
	position: relative;
	top: 200px;
	left: 10px;
	width: 12%;
}

#btn2 {
	position: relative;
	top: 141px;
	left: 880px;
	width: 13%;
}

#btn3 {
	position: relative;
	top: 101px;
	left: 1090px;
	width: 13%;
}

#login {
	position: relative;
	top: -410px;
	left: 300px;
	width: 30%;
	height: 150px;
}

#myinfo {
	position: relative;
	top: -415px;
	left: 300px;
	width: 30%;
}

#baddr {
	position: relative;
	top: -440px;
	left: 300px;
	width: 30%;
}

table, tr {
	border: 1px solid #5ad2ff;
	width: 120%;
	text-align: center;
}

th {
	border: 1px solid #5ad2ff;
	width: 25%;
	text-align: center;
}

input {
	position: relative;
	left:0px;
	width: 100%;
	border: none;
}

#a {
	position: relative;
	top: -360px;
	left: 300px;
	width: 60%;
}

#b {
	position: relative;
	top: -390px;
	left: 300px;
	width: 60%;
}

#c {
	position: relative;
	top: -395px;
	left: 300px;
	width: 60%;
}
</style>
</head>
<body>
	<!-- 상단 제목 -->
	<div id="title">개인정보 수정</div>

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
		<button class="btn btn-info" style="width: 180px; height: 40px;">정보
			수정하기</button>
	</div>
	<div id="btn3">
		<button class="btn btn-danger" style="width: 180px; height: 40px;">취소하기</button>
	</div>

	<div id="a">
		<b>로그인 정보
			<hr>
		</b>
	</div>
	<div id="login">
		<table>
			<tr>
				<th>이름 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_name}"></td>
			</tr>
			<br>
			<tr>
				<th>아이디 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_id}"></td>
			</tr>
			<br>
			<tr>
				<th>비밀번호 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_pw}"></td>
			</tr>
		</table>
	</div>
	<div id="b">
		<b>개인 정보
			<hr>
		</b>
	</div>

	<div id="myinfo">
		<table>
			<tr>
				<th>휴대폰 번호 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_phone}"></td>
			</tr>
			<br>
			<tr>
				<th>주소 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_addr}"></td>
			</tr>
		</table>

	</div>
	<div id="c">
		<b>계좌 정보
			<hr>
		</b>
	</div>
	<div id="baddr">
		<table>
			<tr>
				<th>은행명 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_bank}"></td>
			</tr>
			<br>
			<tr>
				<th>계좌번호 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_baddr}"></td>
			</tr>
			<br>
			<tr>
				<th>예금주 :</th>
				<td><input type="text" name="formname"
					placeholder="${member.m_name}"></td>
			</tr>
		</table>

	</div>

</body>
</html>