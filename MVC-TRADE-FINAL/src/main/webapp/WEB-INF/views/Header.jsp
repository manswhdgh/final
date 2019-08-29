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
</style>


</head>
<body>
	<div id="wrap">
		<p>
			<button class="btn btn-success" onclick="changeView(0)">HOME</button>

			<!-- // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다. -->
			<c:if test="${sessionScope.sessionID==null}">
				<button id="loginBtn" class="btn btn-primary"
					 data-toggle="modal"
					data-target="#LoginModal">로그인</button>
				<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">회원가입</button> -->
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#SignUpModal">회원가입</button>
			</c:if>

			<!-- // 로그인 되었을 경우 - 로그아웃, 내정보 버튼을 보여준다. -->
			<c:if test="${sessionScope.sessionID!=null}">
				<button id="logoutBtn" class="btn btn-primary"
					onclick="changeView(3)">로그아웃</button>
				<button id="updateBtn" class="btn btn-primary"
					onclick="changeView(4)">내정보</button>

			</c:if>

			<button id="joinBtn" class="btn btn-info" onclick="changeView(6)">게시판</button>
			<button id="joinBtn" class="btn btn-info" onclick="changeView(7)">방명록</button>

			<!--  관리자 로그인 -->
			<c:if
				test="${sessionScope.sessionID !=null && sessionScope.sessionID=='admin'}">
				<button id="memberViewBtn" class="btn btn-warning"
					onclick="changeView(5)">회원보기</button>
			</c:if>

		</p>
	</div>
	<jsp:include page="SignUpModal.jsp" />
	<jsp:include page="LoginModal.jsp" />

</body>

</html>