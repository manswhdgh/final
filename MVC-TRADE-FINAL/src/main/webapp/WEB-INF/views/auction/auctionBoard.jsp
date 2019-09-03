<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
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
		border-spacing:25px;
	}
	.th1{
		width:100px;
		height:30px;
		border:solid 1px black;
		font-style:"맑은고딕";
		
	}
	.th2{
		width:550px;
		height:30px;
		border:solid 1px black;
		font-style:"맑은고딕";
		
	}
	.th3{
		width:150px;
		height:30px;
		border:solid 1px black;
		font-style:"맑은고딕";
	}
	
</style>
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
		<button class="button1" type="button" onclick="window.location ='auctionContent'">경매등록</button>
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
		<p class="auctiongroupstyle">경매유형
		<select class="auctiongroupsize">
		<option>::선택::</option>
		<option selected="selected">경매</option>
		<option>역경매</option>
		</select>
		</p>
		</div>
		<div class="seconddiv">
		<center>
		<button class="button2" type="button">검색</button>
		</center>
		</div>
	</div>
 	<center>	
 	<div class="middlemenu">
 		<table class="table">
 			<th class="th1">글번호</th>
 			<th class="th2">물품제목</th>
 			<th class="th3">이름</th>	 
 			<th class="th3">상한가</th>
 			<th class="th3">입찰시간</th>
 			<th class="th3">등록일자</th>
 		</table>
 	</div>
 	</center>
</body>
<script>
 
</script>
</html>