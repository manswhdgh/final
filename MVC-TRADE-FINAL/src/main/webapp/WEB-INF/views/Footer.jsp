<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<html>
<head>
	<title>하단 영역</title>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.id == null}">
	<br>
	<p>로그인하여주세요</p>
	<br>
</c:when>
<c:otherwise>
<script>
    $(function(){
        var responseMessage = "<c:out value="${logmsg}" />";
        if(responseMessage != ""){
            alert(responseMessage);
        }
    }) 
</script>
<br>
	"${sessionScope.id}" 님 환영합니다.
<br>
<c:if test = "${sessionScope.id != null}">
	현재 보유중인 마일리지는 "${sessionScope.mb.m_Mile}" 원 입니다.
</c:if>
<br>
</c:otherwise>
</c:choose>
</body>
</html>