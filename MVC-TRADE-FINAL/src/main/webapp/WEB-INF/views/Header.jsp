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
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
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
		<!-- // �α��� �ȵǾ��� ��� - �α���, ȸ������ ��ư�� �����ش�. -->
		<c:if test="${sessionScope.id==null}">
				<button id="loginBtn" class="btn btn-primary" data-toggle="modal"
					data-target="#LoginModal">�α���</button>
			<!-- <button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">ȸ������</button> -->
			<form name="signup" id="signUpFrm" method="post" class="formsort">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#SignUpModal">ȸ������</button>
			</form>
		</c:if>

		<!-- // �α��� �Ǿ��� ��� - �α׾ƿ�, ������ ��ư�� �����ش�. -->
		<c:if test="${sessionScope.id!=null}">
			<form name="logout" id="logoutFrm" action="logout" method="post"
				class="formsort">
				<button id="logoutBtn" class="btn btn-primary"
					onclick="location.href='javascript:logout()'">�α׾ƿ�</button>
			</form>
			<form name="update" id="updateFrm" action="update" method="post"
				class="formsort">
				<button id="updateBtn" class="btn btn-primary"
					onclick="changeView(4)">���̷�</button>
			</form>
		</c:if>

		<button id="joinBtn" class="btn btn-info" onclick="location.href='./CsCenter/CsMain'">������</button>
		<button id="joinBtn" class="btn btn-info" onclick="location.href='./egg'">�ǽð�ä��</button>

		<!--  ������ �α��� -->
		<c:if test="${sessionScope.id != null && sessionScope.id =='master'}">
			<button id="memberViewBtn" class="btn btn-warning"
				onclick="location.href='./admin'">������������</button>
		</c:if>

		</p>
	</div>
	<jsp:include page="SignUpModal.jsp" />
	<jsp:include page="LoginModal.jsp" />

</body>

</html>