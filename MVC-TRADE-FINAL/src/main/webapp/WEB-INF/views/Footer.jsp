<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<html>
<head>
	<title>�ϴ� ����</title>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.id == null}">
	<br>
	<p>�α����Ͽ��ּ���</p>
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
	"${sessionScope.id}" �� ȯ���մϴ�.
<br>
<c:if test = "${sessionScope.id != null}">
	���� �������� ���ϸ����� "${sessionScope.mb.m_Mile}" �� �Դϴ�.
</c:if>
<br>
</c:otherwise>
</c:choose>
</body>
</html>