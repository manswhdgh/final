<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#admPromoAjax {
	position: relative;
	top: 100px;
	left: 200px;
	width: 50%

}
</style>
</head>
<body>

<div id="admPromoAjax">
		신청인 ID : <span
				style="disply: block; width: 100px; background: pink">아무개</span>
		<br>
		등급 :<span 
				style="disply: block; width: 100px; background: pink">실버</span>
계좌번호 : <span
				style="disply: block; width: 100px; background: pink">하나 111-1111-1111</span>				
	<br>
	신용도 : <span
				style="disply: block; width: 100px; background: pink">양호</span>
	<br>
	<input type="button" id="admPromo_acce"
						style="width:50pt; height:50pt" value="승인">
						<input type="button" id="admPromo_fals"
						style="width:50pt; height:50pt" value="거절">
	<input type="button" id="admPromo_msg"
						style="width:80pt; height:80pt"value="메세지">
	
	<table>
		<tr height="30">
			<td width="100" bgcolor="pink" align="center">신청인아이디</td>
			<td colspan="5">${board.b_Id}</td>
		</tr>
		<tr height="30">
			<td bgcolor="pink" align="center">등급</td>
			<td width="150">${board.b_Group}</td>
			<td bgcolor="pink" align="center">계좌번호</td>
			<td width="150">${board.b_account}</td>
			<td bgcolor="pink" align="center">VIEWS</td>
			<td width="150">${board.bviews}</td>
		</tr>
		<tr height="30">
			<td bgcolor="pink" align="center">TITLE</td>
			<td colspan="5">${board.btitle}</td>
		</tr>
		<tr height="200">
			<td bgcolor="pink" align="center">CONTENTS</td>
			<td colspan="5">${board.bcontents}</td>
		</tr>
		<tr>
		<th>첨부파일</th>
		<td>
			<c:set var="file" value="${bfList}"/>
			<c:if test="${empty file}">
				첨부된 파일이 없습니다.
			</c:if>
			<c:if test="${!empty file}">
				<c:forEach var="file" items="${bfList}">
				<a href="./download?oriFileName=${file.bf_oriName}&sysFileName=${file.bf_sysName}">${file.bf_oriName}</a>
				</c:forEach>
			</c:if>	
		</tr>
	</table>
	
	<form name="rFrm" id="rFrm">
		<table>
			<tr>
				<td><textarea rows="3" cols="50" name="r_contents" id="comment"></textarea></td>
				<td><input type="button" value="댓글전송"
				 onclick="replyInsert(${board.bnum})"
				 style="width:70px;height:50px"></td>
			</tr>	
		</table>
	</form>
	<table>
		<tr bgcolor="skyblue" align="center" height="30">
			<td width="100">WRITER</td>
			<td width="200">CONTENTS</td>
			<td width="200">DATE</td>
		</tr>
	</table> <!-- rTable에 댓글 리스트만 Ajax로 처리위해 -->
	<table id="rTable">	
	<c:forEach var="r" items="${rList}">
		<tr height="25" align="center">
			<td width="100">${r.r_id}</td>
			<td width="200">${r.r_contents}</td>
			<td width="200">${r.r_date}</td>
		</tr>
	</c:forEach>	
	</table>
</body>

<!-- 충돌나서 boardList.jsp에 선언함
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="resources/js/jquery.serializeObject.js"></script> -->
<script>
function replyInsert(bnum){
	//폼안의 모든데이터를 js객체화 한다.(반드시 name속성이 있어야 한다.)
	//폼안에 파일태그가 없어야 한다.
	var obj=$('#rFrm').serializeObject(); //{속성:값,속성:값}
	obj.r_bnum=bnum;
	console.log(obj); 
	//js객체----> json으로 변환
	//var jsonStr=JSON.stringify(obj);
	//console.log(jsonStr);
	$.ajax({
		type:'post', //json으로 넘길땐 get은 안됨.
		url:'ajax/replyInsert',
		//1.쿼리 스트링 방식
		//data:{r_bnum:bnum,r_contents:$("#comment").val()},
		//data: $('#rFrm').serialize(), 폼 전체 데이터 전송
		data:obj,
		//2.json 방식
		//data:jsonStr,
		//쿼리스트링이 아닌 json방식으로 전송시 명시해야 됨.
		//contentType:'application/json; charset=UTF-8',//charset=UTF-8생략가능
		dataType:'json',
		success:function(data, status, xhr){
			console.log(status);
			console.log(xhr);
			/*console.log(data);
			var rlist='';
			for(var i=0;i<data.length;i++){
				rlist+='<tr height="25" align="center">'
				+'<td width="100">'+data[i].r_id+'</td>'
				+'<td width="200">'+data[i].r_contents+'</td>'
				+'<td width="200">'+data[i].r_date+'</td></tr>';
			}
			$('#rTable').html(rlist);
			*/
			console.log(data);
			console.log(data.rList);
			var rlist='';
			for(var i=0;i<data.rList.length;i++){
				rlist+='<tr height="25" align="center">'
					+'<td width="100">'+data.rList[i].r_id+'</td>'
					+'<td width="200">'+data.rList[i].r_contents+'</td>'
					+'<td width="200">'+data.rList[i].r_date+'</td></tr>';
			}
			$('#rTable').html(rlist);
		},
		error:function(xhr, status){
			alert("error")
			console.log(xhr);
			console.log(status);
		}
	});//ajax End
}
</script>
</html>






	
	
	</div>

</body>
</html>