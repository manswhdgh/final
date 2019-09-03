<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">


<style type="text/css">
#btn1 {
	position: relative;
	top: 130px;
	left: 130px;
	width: 329px;
}

#btn2 {
	position: relative;
	top: -20px;
	left: 471px;
	width: 200px;
}

#btn3 {
	position: relative;
	top: -10px;
	left: 130px;
	width: 160px;
}

#btn4 {
	position: relative;
	top: -160px;
	left: 300px;
	width: 160px;
}

#btn5 {
	position: relative;
	top: -310px;
	left: 471px;
	width: 200px;
}

#righttable {
	position: relative;
	top : -280px;
	left : -70px;
}

table {
	height: 25%;
	position: relative;
	top: -355px;
	left: 780px;
}

table, th, td {
	border: 1px solid #bcbcbc;
}


</style>
</head>
<body>
	<div id="btn1">
		<button style="width: 329px; height: 150px;" class="btn btn-primary">1.구매하기/판매하기</button>
	</div>
	<div id="btn2">
		<button style="width: 200px; height: 150px;" class="btn btn-success" onclick="window.location ='auction/auctionBoard'">2.경매/역경매</button>
	</div>
	<div id="btn3">
		<button onclick="window.location ='MyInfo'"
			style="width: 160px; height: 150px;" class="btn btn-info">3.내
			정보</button>
	</div>
	<div id="btn4">
		<button style="width: 160px; height: 150px;" class="btn btn-danger">4.충전</button>
	</div>
	<div id="btn5">
		<button style="width: 200px; height: 150px;" class="btn btn-warning" onclick="window.location ='CsCenter/CsMain'">5.고객센터</button>
	</div>
	 
	<div class="row" id = "righttable">
		<div class="col-sm-6">
			<table cellspacing="0" cellpadding="0" class="table table-hover">
				<caption>
					<h1 align = "center">공지사항</h1>
				</caption>
				<thead>
					<tr class="table-active">
						<th>글쓴이</th>
						<th>제목</th>
						<th>작성일자</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="nt" items="${nList}">
						<tr>
							<td>${nt.nt_mId}</td>
							<td>${nt.nt_Contents}</td>
							<td>${nt.nt_Regdate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
