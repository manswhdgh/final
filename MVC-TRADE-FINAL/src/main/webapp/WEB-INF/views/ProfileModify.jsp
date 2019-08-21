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
	top: -300px;
	left: 650px;
	width: 28%;
}

#login {
	position: relative;
	top: -340px;
	left: 300px;
	width: 30%;
	height: 150px;
}

#myinfo {
	position: relative;
	top: -345px;
	left: 300px;
	width: 30%;
}

#baddr {
	position: relative;
	top: -370px;
	left: 300px;
	width: 30%;
}

table, tr {
	border: 1px solid #5ad2ff;
	width: 95%;
	background-color: pink;
}

#a {
	position: relative;
	top: -290px;
	left: 300px;
	width: 60%;
}

#b {
	position: relative;
	top: -320px;
	left: 300px;
	width: 60%;
}

#c {
	position: relative;
	top: -325px;
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
	<div id="a">
		<b>로그인 정보
			<hr>
		</b>
	</div>
	<div id="login">
		<table>
			<tr>
				<td>이름 :</td>
				<td><input type="text" name="formname"
					placeholder="${member.m_name}"></td>
			</tr>
			<br>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="formname"
					placeholder="${member.m_id}"></td>
			</tr>
			<br>
			<tr>
				<td>비밀번호 :</td>
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
				<td>휴대폰 번호 :</td>
				<td><input type="text" name="formname"
					placeholder="${member.m_phone}"></td>
			</tr>
			<br>
			<tr>
				<td>주소 :</td>
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
				<td>은행명 :</td>
				<td><input type="text" name="formname"
					placeholder="${member.m_bank}"></td>
			</tr>
			<br>
			<tr>
				<td>계좌번호 :</td>
				<td><input type="text" name="formname"
					placeholder="${member.m_baddr}"></td>
			</tr>
			<br>
			<tr>
				<td>예금주 :</td>
				<td><input type="text" name="formname"
					placeholder="${member.m_name}"></td>
			</tr>
		</table>

	</div>
	<div id="btn2">
		<button style="width: 180px; height: 40px;">정보 수정하기</button>
		&nbsp&nbsp&nbsp&nbsp
		<button style="width: 180px; height: 40px;">취소하기</button>
	</div>
</body>
</html>