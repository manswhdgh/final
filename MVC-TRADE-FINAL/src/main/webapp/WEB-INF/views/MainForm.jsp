<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>메인 화면</title>

<style>

#wrap {
	width: 100%;
	margin: 0 auto 0 auto;
}

#header {
	text-align: center;
	width: 100%;
	height: 150px;
	background-color: #F5F5F5;
	padding: 60px 0px;
}

#main {
	float: left;
	width: 100%;
	height: 600px;
	/*background-color: #FFCA6C;*/
	text-align: center;
	vertical-align: middle;
	
}

#footer {
	clear: left;
	width: 100%;
	height: 100px;
	background-color: #F5F5F5;
}
</style>

</head>
<body>
	<div id="wrap">
		<div id="header">
			<jsp:include page="Header.jsp" />
		</div>
		<div id="main">

			<!-- contentPage가 없을 경우 Main.jsp를 보여준다. -->
			<c:set var="contentPage" value="${param.contentPage}" />
			<c:if test="${contentPage==null}">
				<jsp:include page="Main.jsp" />
			</c:if>
			<jsp:include page="${contentPage}" />

		</div>
		<div id="footer">
			<jsp:include page="Footer.jsp" />
		</div>
	</div>

</body>
</html>