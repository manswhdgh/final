<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#btn1 {
	position: relative;
	top: 210px;
	left: 15px;
}

#btn2 {
	position: relative;
	top: 225px;
	left: 15px;
}

#btn3 {
	position: relative;
	top: 240px;
	left: 15px;
}

#btn4 {
	position: relative;
	top: 255px;
	left: 15px;
}

#btn5 {
	position: relative;
	top: 270px;
	left: 15px;
}

#btn6 {
	position: relative;
	top: 285px;
	left: 15px;
}

#btn7 {
	position: relative;
	top: 300px;
	left: 15px;
}

#btn8 {
	position: relative;
	top: 315px;
	left: 15px;
}

#btn9 {
	position: relative;
	top: 180px;
	left: 1310px;
}

#btn10 {
	position: relative;
	top: 200px;
	left: 1310px;
}

#tb1 {
	position: relative;
	top: -305px;
	left: 330px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb2 {
	position: relative;
	top: -245px;
	left: 330px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb3 {
	position: relative;
	top: -185px;
	left: 330px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb4 {
	position: relative;
	top: -125px;
	left: 330px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb5 {
	position: relative;
	top: -65px;
	left: 330px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb6 {
	position: relative;
	top: -450px;
	left: 900px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb7 {
	position: relative;
	top: -390px;
	left: 900px;
	font: bold 1.5em/1.0em 맑은고딕체;
}

#tb8 {
	position: relative;
	top: -700px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
}
</style>
</head>

<body>
	<div id="btn1">
		<button onclick="window.location ='MyInfo'"
			style="width: 180px; height: 50px;">내 정보</button>
	</div>
	<div id="btn2">
		<button onclick="window.location ='MsgMain'"
			style="width: 180px; height: 50px;">메시지함</button>
	</div>
	<div id="btn3">
		<button style="width: 180px; height: 50px;">구매 관리</button>
	</div>
	<div id="btn4">
		<button style="width: 180px; height: 50px;">판매 관리</button>
	</div>
	<div id="btn5">
		<button style="width: 180px; height: 50px;">경매 관리</button>
	</div>
	<div id="btn6">
		<button style="width: 180px; height: 50px;">개인정보수정</button>
	</div>
	<div id="btn7">
		<button style="width: 180px; height: 50px;">결제 내역</button>
	</div>
	<div id="btn8">
		<button style="width: 180px; height: 50px;">취소 내역</button>
	</div>
	<div id="btn9">
		<button style="width: 180px; height: 60px;">회원 탈퇴</button>
	</div>
	<div id="btn10">
		<button style="width: 180px; height: 60px;">내 정보 수정하기</button>
	</div>

	<!-- 가져온 회원정보를 출력한다. -->
	<table id="tb1">
		<tr>
			<td id="title">이름[닉네임] :</td>
			<td>${member.m_id}</td>
		</tr>
	</table>
	<table id="tb2">
		<tr>
			<td id="title">등급 :</td>
			<td>${grade.g_name}</td>
		</tr>
	</table>
	<table id="tb3">
		<tr>
			<td id="title">진행중인 거래 :</td>
			<td>${member.m_tcount}</td>
		</tr>
	</table>
	<table id="tb4">
		<tr>
			<td id="title">진행중인 경매 :</td>
			<td>${member.aa}</td>
		</tr>
	</table>
	<table id="tb5">
		<tr>
			<td id="title">마일리지 :</td>
			<td>${member.m_mile}</td>
		</tr>
	</table>
	<table id="tb6">
		<tr>
			<td id="title">내 은행 :</td>
			<td>${member.m_bank}</td>
		</tr>
	</table>
	<table id="tb7">
		<tr>
			<td id="title">계좌 번호 :</td>
			<td>${member.m_baddr}</td>
		</tr>
	</table>
	<table id="tb8">
		<tr>
			<td id="title">내 정보</td>
		</tr>
	</table>
</body>
</html>