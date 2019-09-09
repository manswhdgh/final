<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	width: 30%;
	height: 330px;
	border: 2px solid #5CD1E5;
}

#tb2 {
	position: relative;
	top: -719px;
	left: 730px;
	width: 30%;
	height: 330px;
	border: 2px solid #5CD1E5;
}

#name {
	position: relative;
	top: 0px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
}

#grade {
	position: relative;
	top: 50px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
}

#trade {
	position: relative;
	top: 100px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
}

#auction {
	position: relative;
	top: 150px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
}

#mile {
	position: relative;
	top: 200px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
}

#bank {
	position: relative;
	top: 0px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
}

#addr {
	position: relative;
	top: 50px;
	left: 0px;
	font: bold 1.5em/1.0em 맑은고딕체;
	width: 100%;
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
		<div id="name">
			<table>
				<tr>
					<td>이름[닉네임] :</td>
					<td>${userinfo.m_Id}씨발</td>
				</tr>
			</table>
		</div>

		<div id="grade">
			<table>
				<tr>
					<td>등급 :</td>
					<td>${userinfo.g_Name}</td>
				</tr>
			</table>
		</div>

		<div id="trade">
			<table>
				<tr>
					<td>진행중인 거래 :</td>
					<td>${userinfo.m_tCount}</td>
				</tr>
			</table>
		</div>
		<div id="auction">
			<table>
				<tr>
					<th>진행중인 경매 :</th>
					<td>${userinfo.m_tCount}</td>
				</tr>
			</table>
		</div>
		<div id="mile">
			<table>
				<tr>
					<th>마일리지 :</th>
				</tr>
				<tr>
					<td>${userinfo.m_Mile}</td>
				</tr>
			</table>
		</div>
	</div>

	<div id="tb2">
		<div id="bank">
			<table>
				<tr>
					<th>내 은행 :</th>
					<td>${userinfo.m_Bank}</td>
				</tr>
			</table>
		</div>
		<div id="addr">
			<table>
				<tr>
					<th>계좌 번호 :</th>
					<td>${userinfo.m_bAddr}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>