<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css">
 -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="resources/js/jquery.serializeObject.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
#wrap {
	text-align: center;
	width: 100%;
	height: 150px;
}

label {
	text-align: left;
}

.formsort {
	display: inline;
}
</style>
<script>
	function logout() {
		$('#logoutFrm').submit();
	}
</script>

</head>
<body>
	<div id="wrap">
		<p>
		<form class = "formsort">
			<button class="btn btn-success" onclick="./">HOME</button>
		</form>
		<!-- // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다. -->
		<c:if test="${sessionScope.id==null}">
				<button id="loginBtn" class="btn btn-primary" data-toggle="modal"
					data-target="#LoginModal">로그인</button>
			<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">회원가입</button> -->
			<form name="signup" id="signUpFrm" method="post" class="formsort">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#SignUpModal">회원가입</button>
			</form>
		</c:if>

		<!-- // 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다. -->
		<c:if test="${sessionScope.id!=null}">
			<form name="logout" id="logoutFrm" action="logout" method="post"
				class="formsort">
				<button id="logoutBtn" class="btn btn-primary"
					onclick="location.href='javascript:logout()'">로그아웃</button>
			</form>
			<form name="update" id="updateFrm" action="update" method="post"
				class="formsort">
				<button id="updateBtn" class="btn btn-primary"
					onclick="changeView(4)">마이룸</button>
			</form>
		</c:if>

		<button id="joinBtn" class="btn btn-info" onclick="location.href='./CsCenter/CsMain'">고객센터</button>
		<button id="joinBtn" class="btn btn-info" onclick="location.href='./egg'">실시간채팅</button>

		<!--  관리자 로그인 -->
		<c:if test="${sessionScope.id != null && sessionScope.id =='master'}">
			<button id="memberViewBtn" class="btn btn-warning"
				onclick="location.href='./admin'">관리자페이지</button>
		</c:if>

		</p>
	</div>
	<jsp:include page="SignUpModal.jsp" />
	<jsp:include page="LoginModal.jsp" />

</body>

</html>