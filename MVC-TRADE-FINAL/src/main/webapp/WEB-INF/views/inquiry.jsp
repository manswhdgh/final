<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#inquiry {
     position: absolute;
      top:20%;
      left:25%;
  
}
table,th,td,tr{
	border: 1px solid black;

}
tr{
	border: 1px solid black;
	

}




 #header {
	text-align: center;
	width: 100%;
	height: 150px;
	background-color: #F5F5F5;
	padding: 60px 0px;
} 
#bg_layer {
	display: none;
	position: fixed;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%
}
#bg_layer.open {
 	display: block;
 	color: red
}
#bg_layer #articleView_layer{
 	position: absolute;
 	top: 0;
	left: 0;
	width: 150%;
	height: 150%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50);
 	z-index:100
 	
}
#contents_layer {
	position: absolute;
	top: 40%;
	left: 40%;
	width: 900px;
	height: 900px;
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

#inqTab>tr{
	height : 30px;
}

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<div id="header">
			<jsp:include page="Header.jsp"/>
		</div> 
	<div id="inquiry">
		<h1 align="center">1:1 문의</h1>
		<br>
		<table id="inqTab">
			<tr bgcolor="pink">
				<th width="100" style="text-align:center">글번호</th>
				<th width="150"style="text-align:center">신청인 아이디</th>
				<th width="400" style="text-align:center">문의제목</th>
				<th width="100" style="text-align:center">날짜</th>
				<th width="100" style="text-align:center">답변여부</th>
			</tr>
			
		 <c:forEach var="qna" items="${inquiry}">
			<tr bgcolor="skyblue" align="center">
				<th width="100" style="text-align:center" >${qna.q_Register}</th>
				<th width="150" style="text-align:center">${qna.q_mid}</th>
				<th width="400" style="text-align:center">${qna.q_Title}</th>
				<th width="100" style="text-align:center">${qna.q_Date}</th>
				<td width="100"><!-- <input type="button" id="add_answ"
					width="100" value="답변달기" style="text-align:center"> -->
                  
                  <!-- 답변완료 확인   	-->				
  					<c:choose>
					<c:when test="${qna.q_Status==0 }">
						<a href="#" onclick="articleView(${qna.q_Register})">답변달기</a>
					</c:when>
					<c:otherwise>
						답변완료
					</c:otherwise>
				</c:choose>	
					
				</td>
			</tr>
			 </c:forEach>
			
		
		</table>
		<div id="bg_layer">
		<div id="articleView_layer"></div>
		<div id="contents_layer"></div>
	</div>
		<br>
		<div align="center"></div>

		
		
			<h5 align="center">${Ipaging}</h5>


		<div id="footer">
		
			<table>
			
				<tr bgcolor="gray" height="10">
					<th width="100">아이디/내용</th>
					<th width="400">검색창</th>
					<td align="center"><input type="button" id="admPromo_search"
						width="100" value="검색"></td>
				</tr>
				
			</table>
		</div>
	</div>
<div align="center"></div>
	
</body>

<!-- 답변달기 모달창 -->
<script>
	function articleView(q_Register){
		$('#bg_layer').addClass('open');
		$.ajax({
			type:'get',
			url:'q_contents',
			data:{'q_Register':q_Register}, //data 속성을 없애고 쿼리스트링으로도 가능
			dataType:'html',
			success:function(data){
				//alert(data);
				$('#contents_layer').html(data);
			},
			error:function(error){
				alert('articleView 에러');
				console.log(error);
			}
		}); //ajax End
	}//function End
	//LightBox 해제
	var $layerWindow=$('#bg_layer');
	$layerWindow.find('#articleView_layer').on('mousedown',function(event){
		console.log(event);
		$layerWindow.removeClass('open');
		return;
	});//on End
	$(document).keydown(function(event){
		console.log(event);
		if(event.keyCode!=27) return;
		if($layerWindow.hasClass('open')){
			$layerWindow.removeClass('open');
		}
	})//keydown End

	
	/* 	답변달기 */
function putQnaReply(q_Register){
		var reply = $('#qnaReply').val();
		alert(reply);
		alert(q_Register);
		$.ajax({
			type : 'get',
			url : 'putQnaReply',
			data : {'reply':reply, 'q_Register':q_Register},
			success : function(data){
				alert('성공');
				location.reload();
			},
			error : function(error){
				
			}
		});
	};
	function toInqList(){
		$('#bg_layer').removeClass('open');
		$('#contents_layer').html('');
	}
</script>
</html>