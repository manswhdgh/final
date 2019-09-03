<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#notiBoard {
	position: relative;
	top: 100px;
	left: 200px;
}

body {
	margin-top: 100px;
	line-height: 1.6
}

.container {
	width: 500px;
	margin: 0 auto;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="resources/js/jquery.serializeObject.js"></script>
</head>
<body>
	<div id="notiBoard">
		<h1>공지사항</h1>
		<div class="container">

			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">결재관련</li>
				<li class="tab-link" data-tab="tab-2">거래관련</li>
			</ul>

			<div id="tab-1" class="tab-content current">
				<table>
					<tr bgcolor="pink" height="30">
						<th width="100">관리자</th>
						<th width="300">KB카드 무이자 관련 공지</th>
						<th width="200">2019-07-14</th>
					</tr>
					<tr bgcolor="skyblue" height="30">
						<th width="100">관리자</th>
						<th width="300">포인트 혜택</th>
						<th width="200">2019-07-10</th>
					</tr>
					<tr bgcolor="pink" height="30">
						<th width="100">관리자</th>
						<th width="300">김진섭에게 주는 특별한 이벤트(저주)</th>
						<th width="200">2019-04-44</th>
					</tr>
				</table>
			</div>
			<div id="tab-2" class="tab-content">
				<table>
					<tr bgcolor="pink" height="30">
						<th width="100">관리자</th>
						<th width="300">사기치다걸리면 손모가지날라간다</th>
						<th width="200">2019-07-14</th>
					</tr>
					<tr bgcolor="skyblue" height="30">
						<th width="100">관리자</th>
						<th width="300">농담아니다</th>
						<th width="200">2019-07-10</th>
					</tr>
					<tr bgcolor="pink" height="30">
						<th width="100">관리자</th>
						<th width="300">김진섭같은 새끼들아</th>
						<th width="200">2019-04-44</th>
					</tr>
				</table>
			</div>
		</div>
		<div align="center">${paging}</div>

		<div id="articleView_layer">
			<div id="bg_layer"></div>
			<div id="contents_layer"></div>
		</div>

		<div id="footer">
			<h5>페이징자리입니다</h5><button type="button">글쓰기</button>
			
		</div>
	</div>


</body>
<script>
	$(document).ready(function() {

		$('ul.tabs li').click(function() {
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#" + tab_id).addClass('current');
		})

	})
</script>
</html>