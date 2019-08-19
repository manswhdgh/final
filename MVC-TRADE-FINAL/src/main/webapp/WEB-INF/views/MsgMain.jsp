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
	top: -470px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
}

#a {
	position: relative;
	top: 230px;
	left: 10px;
}

#b {
	position: relative;
	top: -364px;
	left: 150px;
}

#tb1 {
	cellspacing: 0;
	cellpadding: 0;
	width: 60%;
	height: 40%;
	margin: 20px 0px;
	position: relative;
	top: -364px;
	left: 150px;
	text-align: center;
}

td, tr {
	border: 1px solid #bcbcbc;
}

#btn1 {
	position: relative;
	top: -20px;
	left: 930px;
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
	<div id="btn1">
		<button style="width: 90px; height: 40px;">삭제</button>
	</div>

	<!-- 상단 제목 -->
	<div id="title">메시지함</div>

	<!-- 메시지함 카테고리 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<div id="b">
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#aaa">신규메시지</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#bbb">거래메시지</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#ccc">관리자메시지</a></li>
					</ul>
				</div>

				<!-- 테이블 상세정보 -->
				<div class="tab-content">
					<div class="tab-pane fade show active" id="aaa">

						<table id="tb1">
							<thead>
								<tr>
									<th>선택</th>
									<th>상태</th>
									<th>종류</th>
									<th>내용</th>
									<th>도착일시</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>


							</tbody>

						</table>

					</div>
					<div class="tab-pane fade" id="bbb">

						<table id="tb1">
							<thead>
								<tr>
									<th>선택</th>
									<th>상태</th>
									<th>종류</th>
									<th>내용</th>
									<th>도착일시</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>


							</tbody>

						</table>

					</div>
					<div class="tab-pane fade" id="ccc">

						<table id="tb1">
							<thead>
								<tr>
									<th>선택</th>
									<th>상태</th>
									<th>종류</th>
									<th>내용</th>
									<th>도착일시</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td>${message.ms_status}</td>
									<td>${message.ms_group}</td>
									<td>${message.ms_content}</td>
									<td>${message.ms_senddate}</td>
								</tr>


							</tbody>

						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>