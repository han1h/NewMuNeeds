<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MuNeeds 비밀번호 변경 </title>
</head>
<body>
<!-- 비밀번호 변경 -->
<h3>비밀번호 변경</h3>
<div>
	<form action="/userEdit.inc" method="post" name="pwchange" id="pwchange" onsubmit="returb check(form)">
		<input type="hidden" value="${userVO.id }" name="id">
		<input type="password" name="pwd" id="first_pw"/><br><br>
		<input type="password" name="pwd1" id="second_pw"/><br><br>
	</form>
	<input type="submit" onclick="pwchange1()" value="확인" id="check"/>
</div> 
  <script src="resources/js/jquery-3.4.1.min.js"></script>
   <script src="resources/js/jquery-ui.min.js"></script>
   <script type="text/javascript">
   		function pwchange1(){
   			var first = $("#first_pw").val();
   			var second = $("#second_pw").val();
   			
   			if(first == second){
   				document.pwchange.action = "userEdit.inc";
   				document.pwchange.submit();
   			}else{
   				alert("서로 비밀번호가 다릅니다.");
   				$("#first_pw").val("");
   				$("#second_pw").val("");
   				$("#first_pw").focus();
   			}
   			
   			location.href = "redirect:/user.inc";
   		}
   </script>
</body>
</html>