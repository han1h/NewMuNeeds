<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LOGIN TEST</title>
<link rel="stylesheet" href="resources/css/styles.css" />
<!-- 여기 로그인 간지 링크  -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"  rel="stylesheet" id="bootstrap-css">

<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 퍼플 -->
<link rel="stylesheet" href="resources/css/pupple.css">
<style type="text/css">
body {
   padding-top: 15px;
}

.btn, .well {
   border-radius: 0;
}

.btn-bd-primary {
   border: 1px solid #337AB7;
   color: #337AB7;
}
</style>
</head>
<body>
   <br>
   <center>
      <!-- 일반회원 로그인 시 발생 -->
      <c:choose>
         <c:when test="${vo.nickname != null}">
            <h2>로그인 성공하셨습니다!!</h2>
            <h3>'${vo.nickname}' 님 환영합니다!</h3>
            <h3>
               <a href="logout">로그아웃</a>
            </h3>
         </c:when>

         <c:otherwise>
            <div class="container">

               <div class="form-wrap">
                  <div class="form-wrap-inn">
                     <div class="frame">
                        <div class="form-content">
                           <div class="header">
                              <i class="fa fa-eye"></i>
                              <h2>Login</h2>
                              <p>
                                 만약 아직 등록된 계정이 없다면 , <a href="goReg.inc">지금
                                    회원 가입 하기</a>
                              </p>
                           </div>
                           <div class="login-form">
                              <form action="userdo.inc" method="post" name="frm"
                                 class="form">
                                 <!-- 아이디 입력  -->
                                 <div class="form-group">
                                    <input id="id" name="id" class="form-input" type="text"
                                       placeholder="What is your ID?" value="${id}"
                                       autocomplete="off">
                                 </div>
                                 <!-- 비밀번호 입력 -->
                                 <div class="form-group">
                                    <input id="pwd" name="pw" class="form-input" type="password"
                                       placeholder="Password">
                                 </div>
                                 <!-- 로그인 버튼  -->
                                 <div class="form-group">
                                    <input type="button" id="log_btn" value="로그인"
                                       class="btn btn-bd-primary btn-sm shake-chunk">
                                 </div>
                                 <!-- ID/PW 찾기   -->
                                 <div class="form-group">
                                    <a class="btn btn-bd-primary btn-sm shake-chunk"
                                       href="user_info.inc">ID/PW찾기</a>
                                 </div>
                                 
                                 <!-- 소셜 로그인 및 회원가입  -->
                                 <div>
                                    <h3 style="color: #AA66FF">소셜 로그인</h3>
                                    <!-- 카카오 -->
                                    <a href="https://kauth.kakao.com/oauth/authorize?client_id=3721f9c5859cad5e297bf53dc38333ac&redirect_uri=http://localhost:9090/berhmkorea/kakaologin.inc&response_type=code">
                                       <img  src="resources/images/kakao_account_login_btn_medium_narrow.png">
                                    </a>
                                 </div>
                              </form>
                           </div>

                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <br>
         </c:otherwise>
      </c:choose>

   </center>

   <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
   <script src="resources/js/jquery-3.4.1.min.js"></script>
   <script>
      $(function() {
         $("#log_btn").bind("click", function() {
                  var id = $("#id").val();
                  var pw = $("#pwd").val();

                  var login_info = "id=" + encodeURIComponent(id)
                        + "&pw=" + encodeURIComponent(pw);

                  if (id.trim().length < 1) {
                     alert("아이디 입력하세여");
                     $("#id").focus();
                     return;
                  }
                  if (pw.trim().length < 1) {
                     alert("비밀번호를 입력하세여");
                     $("#pw").focus();
                     return;
                  }
                  $.ajax({
                     url : "userdo.inc",
                     data : login_info,
                     dataType : "json",
                     type : "post"
                  }).done(function(data) {
                     if (data.chk) {
                    	 if( ${ sessionScope.userVO.status eq 1} ){
                    		 alert("저장된 정보가 없습니다.");
                    		 $("#id").val("");
                    		 $("#pwd").val("");
                    		 $("#id").val("");
                    		 $("#pwd").focus();
                    	 }else{
                       		location.href = "home.inc";
                    	 }	
                     } else {
                    	 if( ${sessionScope.userVO.status eq 1} ){
                    		 alert("저장된 정보가 아예 없습니다.");
                    		 $("#id").val("");
                    		 $("#pwd").val("");
                    		 $("#id").val("");
                    		 $("#pwd").focus();
                    	 }else{
                    		 alert("정보가 다릅니다.");
                         	$("#pwd").val("");
                         	$("#pwd").focus();
                    	 }	
                     }
                  }).fail(function(err) {
                     console.log(err);
                  });
               });

         $("#pwd").keydown(function(key){
        	
        	 if(key.keyCode == 13){
                     var id = $("#id").val();
                     var pw = $("#pwd").val();

                     var login_info = "id=" + encodeURIComponent(id)
                           + "&pw=" + encodeURIComponent(pw);

                     if (id.trim().length < 1) {
                        alert("아이디 입력하세여");
                        $("#id").focus();
                        return;
                     }
                     if (pw.trim().length < 1) {
                        alert("비밀번호를 입력하세여");
                        $("#pw").focus();
                        return;
                     }
                     $.ajax({
                         url : "userdo.inc",
                         data : login_info,
                         dataType : "json",
                         type : "post"
                      }).done(function(data) {
                         if (data.chk) {
                        	 if( ${ sessionScope.userVO.status eq 1} ){
                        		 alert("저장된 정보가 없습니다.");
                        		 $("#id").val("");
                        		 $("#pwd").val("");
                        		 $("#id").val("");
                        		 $("#pwd").focus();
                        	 }else{
                           		location.href = "home.inc";
                        	 }	
                         } else {
                        	 if( ${sessionScope.userVO.status eq 1} ){
                        		 alert("저장된 정보가 아예 없습니다.");
                        		 $("#id").val("");
                        		 $("#pwd").val("");
                        		 $("#id").val("");
                        		 $("#pwd").focus();
                        	 }else{
                            	alert("정보가 다릅니다.");
                            	$("#pwd").val("");
                            	$("#pwd").focus();
                        	 }	
                         }
                      }).fail(function(err) {
                         console.log(err);
                      });
        	 }
         });
         
      });
   </script>
</body>

</html>


