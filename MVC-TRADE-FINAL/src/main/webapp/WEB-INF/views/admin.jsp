<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="resources/js/jquery.serializeObject.js"></script>

<img src="logo.jpg" alt="로고" width="100px" height="100px" align="left" />

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


</head>
<body>
<style>
.menu {
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
	position :relative;
	top : 100px;
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

#articleView_layer {
	display: none;
	position: fixed;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%
}

#articleView_layer.open {
	display: block;
	color: red
}

#articleView_layer #bg_layer {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
	z-index: 100
}

#contents_layer {
	position: absolute;
	top: 40%;
	left: 40%;
	width: 400px;
	height: 400px;
	margin: -150px 0 0 -194px;
	padding: 28px 28px 0 28px;
	border: 2px solid #555;
	background: #fff;
	font-size: 12px;
	z-index: 200;
	color: #767676;
	line-height: normal;
	white-space: normal;
	overflow: scroll
}
#monitor{
	position: relative;
	top: 100px;
	left: 200px;
}
</style>

	<div id="menubar">
		<ul class= "main">
			<li class="menu"><h1>MENU</h1></li>
			<li class="menu"><a><h2>회원관리</h2></a>
				<ul class="hide">
					<a href="./admPro"><li id="sellerRegistation"><h3>판매자신청</h3></li></a>
					<a href="./addBanList"><li id="blackList"><h3>블랙리스트</h3></li></a>
				</ul></li>

			<li class="menu"><a><h2>거래관리<h2></h2></a>
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
	
	<div id="monitor" >
	<h1>힘세고 강한 아침 안녕 내 이름은 왈도 !</h1>
	</div>
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
		});
	</script>
	<script>
		function articleView(num) {
			$('#articleView_layer').addClass('open');
			$.ajax({
				type : 'get',
				url : 'admPro',
				data : {
					m_num : num
				},
				dataType : 'html',
				success : function(data) {
					//alert(data);
					$('#contents_layer').html(data);
				},
				error : function(error) {
					alert('error');
					console.log(error);
				}
			}); //ajax End
		}//function End
		//LightBox 해제
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

</body>
</html>