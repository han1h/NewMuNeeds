<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 페이지</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<style type="text/css">
	#main_footer{
		position: fixed; 
		bottom: 0; 
		width: 100%;
	}

</style>
</head>
<body>
	<!-- 메뉴바 -->
	<div id="h_total">
      <div class="mc1inlineContent">
         <jsp:include page="realmenu.jsp"/>
      </div>
   </div>
   
	<!-- 서브 메뉴 -->
	<div class="mytmall_menu">
		<h2>서브메뉴</h2>
		<div class="mytmall_sub_menu first">
			<h3>나의 주문 내역</h3>
			<ul>
				<li>주문 내용 확인 하기</li>
				<li>취소 하기</li>
				<li>취소 현황</li>
				<li>환불/입금내역</li>
			</ul>
		</div>
		<div class="mytmall_sub_menu">
			<h3>회원 정보</h3>
			<ul>
				<li>
					회원정보 변경/ 탈퇴
				</li>
				<li>나의 배송지 관리</li>
			</ul>
		</div>
	</div>
	<form action="form1" method="post">
		<input type="hidden">
	</form>
	<!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
</body>
</html>