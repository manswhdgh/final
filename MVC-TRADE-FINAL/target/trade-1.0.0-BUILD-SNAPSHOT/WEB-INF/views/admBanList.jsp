<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function logout() {
		$('#logoutFrm').submit(); //서버로 전송
	}
</script>

<div align="right">
	<form id="logoutFrm" action="logout" method="post">
		<a href="javascript:logout()">로그아웃</a>
	</form>
</div>
<style>
menu {
	cursor: pointer;
	display: block;
}

.menu .hide {
	display: none;
}

ul {
	list-style: none;
}

#menubar {
	position: relative;
	top: 100px;
	height: 300px;
	float: left;
	left: 0px;
	width: 185px;
	background: pink;
}

#menubar ul {
	margin: 0 auto;
	background: pink;
}

html, body {
	height: 100%;
	margin: 0
}

#admBanList {
	position: relative; 
	top : 100px; 
	left : 50px; 
	width : 50%; 
	float : left;
	
}

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<body>
	<div id="menubar">
		<ul class="main">
			<li class="menu"><h1>MENU</h1></li>
			<li class="menu"><a><h2>회원관리</h2></a>
				<ul class="hide">
					<a href="./admPromo"><li id="sellerRegistation"><h3>판매자신청</h3></li></a>
					<a href="./admBanList"><li id="blackList"><h3>블랙리스트</h3></li></a>
				</ul></li>

			<li class="menu"><a><h2>거래관리</h2></a>
				<ul class="hide">
					<a href="./admTradeListStatus"><li id="tradeService"><h3>거래관리</h3></li></a>
				</ul></li>
			<li class="menu"><a><h2>운영관리</h2></a>
				<ul class="hide">
					<a href="./admRecord"><li id="salesStatus"><h3>매출현황</h3></li></a>
					<a href="./newbieList"><li id="newMember"><h3>신규 회원수</h3></li></a>
					<a href="./notiBoard"><li id="notice"><h3>공지사항</h3></li></a>
				</ul></li>
			<li class="menu"><a><h2>고객센터</h2></a>
				<ul class="hide">
					<a href="./inquiry"><li id="inquiry"><h3>1:1문의</h3></li></a>
					<a href="./livechatList"><li id="liveChat"><h3>실시간채팅</h3></li></a>
					<a href="./boardReport"><li id="report"><h3>신고</h3></li></a>
					<a href="./viewQna"><li id="faq"><h3>FAQ</h3></li></a>
				</ul></li>
		</ul>
	</div>
	<div id="admBanList">
		<div id="a">
			<h1>블랙리스트 접수 내역</h1>
			<table>
				<tr bgcolor="pink" height="30">
					<th width="100">글번호</th>
					<th width="200">블랙 아이디</th>
					<th width="200">신고내용</th>
					<th width="100">신고일</th>
					<th width="100">차단</th>
				</tr>
			<c:if test="${AdmBanList.isEmpty()}">
					<tr>
						<td colspan="4"><h3 style="text-align: center;">접수된 신청이
								없습니다.</h3></td>
					</tr>
					
				</c:if>
				<c:if test='${!AdmBanList.isEmpty()}'>
					<c:forEach var="board" items="${AdmBanList}">
						<tr height="25">
							<td align="center">${board.b_Num}</td>
							<td align="center">${board.b_Id}</td>
							<td align="center">${board.b_Contents}</td>
							<td align="center">${board.b_Date}</td>
							</c:forEach>
							<td>
							<p>
							<c:url var="member" value=".admBanList/${m_Group}" />
							<a href="${member}/ban" class="btn btn-default">블랙리스트</a>
							</p>
							</td>
				</c:if>
			
			</table>
			<br>
			<hr>
			<div id="articleView_layer">
				<div id="bg_layer"></div>
				<div id="contents_layer"></div>
			</div>
			<div align="center">${AdmBanListpaging}</div>
			<hr>
			<!-- search{s} -->
			<form id="frm">
				<input type="text" name="search" id="key">
				<button id="search">검색</button>
			</form>
		</div>

	</div>


</body>
<script>
	// html dom 이 다 로딩된 후 실행된다.
	$(document).ready(function() {
		// memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$(".menu>a").click(function() {
			var submenu = $(this).next("ul");

			// submenu 가 화면상에 보일때는 위로 접고 아니면 아래로 보드랍게 펼치기
			if (submenu.is(":visible")) {
				submenu.slideUp();
			} else {
				submenu.slideDown();
			}
		});
	});<!-- 메뉴바스크립트 끝 -->
	</script>
	<script>
	$('#search').click(function() {
		var obj = {
			key : $('#key').val()
		};
		//var obj=$('#frm').serializeObject();
		$('#articleView_layer').addClass('open');
		$.ajax({
			type : 'get',
			url : 'admBanSearch',
			data : obj,
			dataType : 'json',
			success : function(data) {
				console.log(data); //json문자열  -->js객체로 변환
				var str = "";
				for ( var key in data) {
					str + key + ":" + data[key] + "<br>";
				}
				$("#key").html(str);
			},
			error : function(error) {
				console.log(error);
			}
		})//ajax end
	});
	var $layerWindow = $('#articleView_layer');
	$layerWindow.find('#bg_layer').on('mousedown', function(event) {
		console.log(event);
		$layerWindow.removeClass('open');
		return;
	});//on End
	$(document).keydown(function(event) {
		console.log(event);
		if (event.keyCode != 27)
			return;
		if ($layerWindow.hasClass('open')) {
			$layerWindow.removeClass('open');
		}
	});//keydown End
</script>
</html>