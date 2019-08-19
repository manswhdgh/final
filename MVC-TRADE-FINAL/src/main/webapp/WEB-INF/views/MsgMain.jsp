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
	top: 90px;
	left: 938px;
}

p {
	margin: 20px 0px;
	position: relative;
	top: -300px;
	left: 200px;
}

#title {
	position: relative;
	top: -370px;
	left: 650px;
	font: bold 3.5em/1.0em 맑은고딕체;
}

#a {
	position: relative;
	top: -250px;
	left: 150px;
}

#aaa, #bbb, #ccc {
	position: relative;
	top: -250px;
	left: 150px;
	text-align: center;
}

#tb1 {
	cellspacing: 0;
	cellpadding: 0;
	width: 60%;
	height: 40%;
}

td, tr {
	border: 1px solid #bcbcbc;
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
		<button style="width: 90px; height: 50px;">삭제</button>
	</div>

	<!-- 상단 제목 -->
	<div id="title">메시지함</div>
	
	<!-- 메시지함 카테고리 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<div id="a">
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
						<p>
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
						</p>
					</div>
					<div class="tab-pane fade" id="bbb">
						<p>
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
						</p>
					</div>
					<div class="tab-pane fade" id="ccc">
						<p>
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
						</p>
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