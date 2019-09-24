<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

#inq h1{
	color:skyblue;
	text-align:center;
}
#inquiryTab{
	width:50%;
	border-collapse:collapse;
	font-size:12px;
	line-height:24px;
	

}
#inquiryTab td,#inquiryTab th{
border: black solid 1px;
padding:5px;

}
#inquiryTab th{
background:skyblue;
width:120px;
}
.top{
margin-top:80px;

}

.menu{
float:left;
position:absolute;
bottom:150px;

}
li{
list-style:none;
}




</style>

<body>
       
	
	
<div class="top" align="center">

 <h1 id="inq">1대1문의 답변하기</h1>
<br>
<br>

	<table align="center" id="inquiryTab">	
	<tr width="30px">
		<th  style="text-align:center"> 번호 </th><td>${qna.q_Register}</td> 
		<th  style="text-align:center"> 작성자 </th><td>${qna.q_mid}</td> 
		<th  style="text-align:center">작성일</th><td>${qna.q_Date}</td>
		
		
	 </tr>
	
	<tr>
		<th style="text-align:center">제목</th><td colspan="5">${qna.q_Title}</td>
	</tr>
	
	<tr>
		<th  style="text-align:center">내용</th>
		<td colspan="5" height="200px">${qna.q_Content}</td>
	</tr>
	<tr>
			<hr>
			<th>첨부된 파일</th>   <!-- 파일확인하기 -->
			<td colspan="5">
				<c:set var="q_File" value="${qfList}"></c:set> 
				<c:if test="${empty q_File }">
				첨부된 파일이 없습니다.
				</c:if> 
				<c:if test="${!empty q_File }">
					<c:forEach var="q_File" items="${qfList}">
                <!-- 파일다운로드 -->				     
				<a href="./download?oriFileName=${q_File.qf_fName }&sysFileName=${q_File.qf_fPath}">${q_File.qf_fName}</a>
						<br>
					</c:forEach>
				</c:if>
			</td>
		</tr>
	<tr>
		<th style="text-align:center" >문의답변</th>
		<td colspan="5"><textarea id="qnaReply" cols="110" rows="5" style="border: none"></textarea></td>
	</tr>
	
	
	
	
	</table>
	<br>
	<input type="button" value="답변등록" onclick="putQnaReply('${qna.q_Register}')">
	<input type="button" value="뒤로가기" onclick="toInqList()">
	
	
	
</div>	
	   
   
</body>
</html>