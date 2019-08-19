<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#title {
	position: relative;
	top: -550px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
}

#btn {
	position: relative;
	top: 65px;
	left: 950px;
}

#a {
	position: relative;
	top: 230px;
	left: 10px;
}

#b {
	position: relative;
	top: 138px;
	left: -400px;
	font: bold 0.5em/1.0em 맑은고딕체;
}

#c {
	position: relative;
	top: -325px;
	left: 600px;
	font: bold 1.0em/1.0em 맑은고딕체;
}
</style>
</head>

<body>
	<div id="a">
		<button onclick="window.location ='MyInfo'"
			style="width: 180px; height: 40px;">내 정보</button>
		<br> <br>

		<button onclick="window.location ='MsgMain'"
			style="width: 180px; height: 40px;">메시지함</button>
		<br> <br>

		<button onclick="window.location ='BuyManagement'"
			style="width: 180px; height: 40px;">구매 관리</button>
		<br> <br>

		<button style="width: 180px; height: 40px;">판매 관리</button>
		<br> <br>

		<button style="width: 180px; height: 40px;">경매 관리</button>
		<br> <br>

		<button style="width: 180px; height: 40px;">개인정보수정</button>
		<br> <br>

		<button style="width: 180px; height: 40px;">결제 내역</button>
		<br> <br>

		<button style="width: 180px; height: 40px;">취소 내역</button>
	</div>

	<div id="btn">
		<button style="width: 180px; height: 60px;">회원 탈퇴</button>
		<br> <br>
		<button style="width: 180px; height: 60px;">내 정보 수정하기</button>
	</div>

	<div id="title">내 정보</div>


	<!-- 가져온 회원정보를 출력한다. -->
	<div id="b">
		<table>
			<tr>
				<td id="title">이름[닉네임] :</td>
				<td>${member.m_id}</td>
			</tr>
		</table>
		<br> <br> <br> <br>

		<table>
			<tr>
				<td id="title">등급 :</td>
				<td>${grade.g_name}</td>
			</tr>
		</table>
		<br> <br> <br> <br>

		<table>
			<tr>
				<td id="title">진행중인 거래 :</td>
				<td>${member.m_tcount}</td>
			</tr>
		</table>
		<br> <br> <br> <br>

		<table>
			<tr>
				<td id="title">진행중인 경매 :</td>
				<td>${member.aa}</td>
			</tr>
		</table>
		<br> <br> <br> <br>

		<table>
			<tr>
				<td id="title">마일리지 :</td>
				<td>${member.m_mile}</td>
			</tr>
		</table>
		<br> <br> <br> <br>

		<div id="c">
			<table>
				<tr>
					<td id="title">내 은행 :</td>
					<td>${member.m_bank}</td>
				</tr>
			</table>
			<br> <br> <br> <br>

			<table>
				<tr>
					<td id="title">계좌 번호 :</td>
					<td>${member.m_baddr}</td>
				</tr>
			</table>
		</div>


	</div>
</body>
</html>