<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admPromo {
	position: relative;
	top: 100px;
	left: 200px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script src="resources/js/jquery.serializeObject.js"></script>
</head>
<body>
	<div id="admPromo">
		<h1>판매자 신청 리스트</h1>
		<table>
			<tr bgcolor="pink" height="30">
				<th width="100">글번호</th>
				<th width="200">신청인 아이디</th>
				<th width="200">신청일자</th>
				<th width="100">승인여부</th>
			</tr>
			<c:if test="${AdmPromoList.isEmpty()}">
				<tr>
					<td colspan="4"><h3 style="text-align: center;">접수된 신청이
							없습니다.</h3></td>
				</tr>
			</c:if>
			<c:if test='${!AdmPromoList.isEmpty()}'>
				<c:forEach var="board" items="${AdmPromoList}">
					<tr height="25">
						<td align="center">${board.b_Num}</td>
						<td align="center">${board.b_Id}</td>
						<td align="center">${board.b_Date}</td>
						<td align="center">${board.b_Group}</td>
					</tr>
				</c:forEach>
			</c:if>

		</table>
		<br>
		<hr>
		<hr>

		<div id="articleView_layer">
			<div id="bg_layer"></div>
			<div id="contents_layer"></div>
		</div>

		<div id="footer">
			<div align="center">${paging}</div>
			<div class="form-group row justify-content-center">

				<div class="w100" style="padding-right: 10px">
					<select class="form-control form-control-sm" name="searchType"
						id="searchType">
						<option value="b_Title">글번호</option>
						<option value="b_Id">신청아이디</option>
						<option value="b_Group">승인여부</option>
					</select>

				</div>
				</div>
	</div>

</body>

</html>