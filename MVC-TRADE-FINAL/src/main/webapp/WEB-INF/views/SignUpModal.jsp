<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="container">
		<!-- 모달 팝업 -->
		<div class="modal fade" id="SignUpModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">회원가입</h4>
					</div>
					<div class="modal-body">
						<form role="form" id="signFrm" name="signFrm">
							<div class="form-group">
								<label for="m_Id" class="control-label">아이디</label> <input
									type="text" class="form-control" id="m_Id" name="m_Id">
								<br> <input type="button" class="btn btn-primary"
									id="check" value="중복체크">
							</div>
							<div class="form-group">
								<label for="m_Pw" class="control-label">비밀번호</label> <input
									type="password" class="form-control" id="m_Pw" name="m_Pw">
							</div>
							<div class="form-group">
								<label for="passwdCheck" class="control-label">비밀번호 확인</label> <input
									type="password" class="form-control" id="passwdCheck"
									name="passwdCheck">
							</div>
							<div class="form-group">
								<label for="m_Name" class="control-label">이름</label> <input
									type="text" class="form-control" id="m_Name" name="m_Name">
							</div>
							<div class="form-group">
								<label for="m_Email" class="control-label">이메일</label> <input
									type="text" class="form-control" id="m_Email" name="m_Email">
							</div>
							<div class="form-group">
								<label for="m_Phone" class="control-label">전화번호</label> <input
									type="text" class="form-control" id="m_Phone" name="m_Phone">
							</div>
							<div class="form-group">
								<label for="m_Addr" class="control-label">주소</label> <input
									type="text" class="form-control" id="m_Addr" name="m_Addr">
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="signUpCancel">취소</button>
						<input type="button" class="btn btn-primary" value = "완료" id="signUp">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
$(document).ready(function(e){
	//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
	var idck = 0;
	$(function check() {
	    //check 버튼을 클릭했을 때 
	    $("#check").click(function() {
	        var m_Id =  $("#m_Id").val(); 
	        console.log(m_Id);
	        $.ajax({
	            async: true,
	            type : 'post',
	            data : {"m_Id" : $('#m_Id').val()},
	            url : "idCheck.do",
	            dataType : "json",
	            success : function(data) {
	                if (data.cnt > 0) {
	                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
	                    $("#m_Id").focus();
	                } else {
	                    alert("사용가능한 아이디입니다.");
	                    idx = true;
	                    $("#m_Id").focus();
	                    //아이디가 중복하지 않으면  idck = 1 
	                    idck = 1;
	                }
	            },
	            error : function(error) {
	                alert("error : " + error);
	            }
	        });
	    });
	});
	//회원가입완료
	$(function() {
	    //signUp 버튼을 클릭했을 때 
	    $("#signUp").click(function() {
	        $.ajax({
	            type : "post",
	            data : $("#signFrm").serialize(),
	            url : "signUp.do",
	            dataType : "json",
	            success : function(data) {
	            	console.log(data);
	            	 if(data == 1){
	            		location.href = "/MainForm";
                        alert("회원가입성공");
                    }else{
                        alert("회원가입실패");    
                    } 
	            },
	            error : function(error) {
	            	alert("실패!");
	                console.log("error : " + error);
	            }
	        });
	    });
	});
});
</script>
</html>