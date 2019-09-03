<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.qnaBox{

}
table{
	border-collapse:collapse;
	font-size:15px;
    margin-bottom:50px;

	
	
}
table td ,th{
	border: black solid 1px;
	padding :5px;

}
th{
	background:skyblue;
}

h1{
color:skyblue;
text-align:center;

}
.menu{
margin-top:200px;
line-height:20px;
text-align: center;
width:150px;

}

.top{
text-align:center;
margin-top:20px;

}
.btn{
float:left;
position:absolute;
margin-top:210px;


}
li{
   list-style:none;

}
.a{
text-align:center;
}
.c{
 top:200px;
}
.la{
   background: #C5C0FF;
   font-style: italic;

}
.lb{
   background: #C5C0FF;
	font-style: italic;
}
.lc{
   background: #C5C0FF;
   font-style: italic;

}
.ld{
   background: #C5C0FF;
   font-style: italic;

}


</style>
   

</head>

<body>

     
      <nav class=" btn">
        <ul>
       <li><input type="button" style="width:110pt; height:110pt;" value="1대1문의하기" class="la"> </li>
		 <li><input type="button" style="width:110pt; height:110pt;"value="나의질문과답변" class="lb"></li>	
		 <li><input type="button"style="width:110pt; height:110pt;"value="FAQ" class="lc"></li>
		 <li><input type="button"style="width:110pt; height:110pt;"value="신고하기" class="ld"></li>
        </ul>
      </nav>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<hr>
<h1>고객센터 1대1문의하기</h1>
<br>
<br>
<form action="boardWrite" enctype="multipart/form-data" method="post">
<div class="c" >
<table align="center">
  <tr>
  <th>상담분류선택</th>
	<td><input type="checkbox">거래관련</td>
	<td><input type="checkbox">이용관련</td>
    <td><input type="checkbox">충전/입금문의</td>
  </tr>
 </table>
 </div>
<table align="center">
	<tr>
		<th height="20px"> 제목 </th>
		<td><input type="text" size="120" style="border:none" id="q_Title" name="q_Title"></td>
	</tr>
	<tr>
		<th> 문의내용 </th>
		<td><textarea cols="120" rows="20" style="border:none"id="q_Content" name="q_Content"></textarea></td>
	</tr>
	<tr>
		<th> 사진 </th>
		<td><input type="file"  id="q_File" name="q_File" multiple
					onchange="fileChk(this)" ><input type="hidden" value="0"
					id="fileCheck" name="fileCheck" /></td>
	</tr>
</table>
<br>
<div class="a">
<input type="submit" value="등록">
<input type="button" value="취소하기">
</div>
</form>

</body>
</html>



