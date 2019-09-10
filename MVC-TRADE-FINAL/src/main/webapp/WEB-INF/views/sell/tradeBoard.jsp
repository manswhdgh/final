<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.uppermenu{
		width:100%;
		height:200px;
		
		display:inline-flex;
		
	}
	 .middlemenu{
	 	width:1500px;
	 	height:1000px;
	 	border:solid 1px black;
	 	display:inline-felx;
	 	margin-top:20px;
		display:inline-flex;
	 }
	 .firstdiv{
		width:1300px;
		height:200px;
		margin-left:10%;
		display:inline-flex;
		
	}
	.seconddiv{
		width:300px;
		height:200px;
	}
	.gamestyle{
		font-style:맑은고딕;
		font-size:35px;
		margin-left:40px;
	
	}
	.gamesize{
		width:200px;
		height:30px;
		margin-top:20px;
	}
	.serverstyle{
		font-style:맑은고딕;
		font-size:35px;
		margin-left:10%;
	}
	.serversize{
		width:200px;
		height:30px;
		margin-top:20px;
	}
	.itemgroupstyle{
		font-style:맑은고딕;
		font-size:35px;
		margin-left:10%;
	}
	.itemgroupsize{
		width:200px;
		height:30px;
		margin-top:20px;
	}
	.auctiongroupstyle{
		font-style:맑은고딕;
		font-size:35px;
		margin-left:10%;
	}
	.auctiongroupsize{
		width:200px;
		height:30px;
		margin-top:20px;
	}
	.button1{
		width:1000px;
		height:40px;
		position:absolute;
		margin-top:150px;
		margin-left:8%;
	} 
	.button2{
		width:100px;
		height:100px;
		margin-top:51px;
	}
	.table{
		border-padding:15px;
		border-spacing:60px;
	}
	.th1{
		width:100px;
		height:30px;
		border:solid 1px black;
		font-style:"맑은고딕";
		margin-left:5%;
		text-align:center;
	}
	.th2{
		width:550px;
		height:30px;
		border:solid 1px black;
		font-style:"맑은고딕";
		margin-left:5%;
		text-align:center;
	}
	.th3{
		width:150px;
		height:30px;
		border:solid 1px black;
		font-style:"맑은고딕";
		margin-left:5%;
		text-align:center;
	}
	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="uppermenu">
	  <div class="firstdiv">
		<p class="gamestyle">게임
		<select class="gamesize">
			<option>::선택::</option>
			<option selected="selected">게임1</option>
			<option>게임2</option>
			<option>게임3</option>
		</select>
		</p>
		<br>
		<button class="button1" type="button">경매등록</button>
		<p class="serverstyle">서버
		<select class="serversize">
		<option>::선택::</option>
		<option selected="selected">서버1</option>
		<option>서버2</option>
		<option>서버3</option>
		</select>
		</p>
		<p class="itemgroupstyle">물품유형
		<select class="itemgroupsize">
		<option>::선택::</option>
		<option selected="selected">무기</option>
		<option>방어구</option>
		<option>게임머니</option>
		</select>
		</p>
		</div>
		<div class="seconddiv">
		<button class="button2" type="button">삽니다</button>
		<button class="button2" type="button">팝니다</button>
		</div>
	</div>
 	<center>	
 	<div class="middlemenu">
 		<table class="table">
 			<tr>
 				<td class="th1">글번호</td>
 				<td class="th2">물품제목</td>
 				<td class="th3">가격</td>	 
 				<td class="th3">이름</td>
 				<td class="th3">등록일자</td>
 			</tr>
 		</table>
 	</div>
 	</center>

</body>
</html>