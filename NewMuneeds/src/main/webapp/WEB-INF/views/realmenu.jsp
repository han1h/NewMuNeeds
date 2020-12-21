<%@page import="mybatis.dao.QaDAO"%>
<%@page import="mybatis.dao.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#navPanel{
		display: none;
	}
	#nav{
		text-align: right;
		position: relative;
		left: 250px;
		padding-right: 200px;
	}
	#logo_h{
		text-align: left;
		position: absolute;
		width: 200px;
		height: 89px;
	}
	#h_img{
		position: relative;
		top: 30px;
		display: block;
		opacity: 1;
		width: auto;
		height: auto;
	}
	#header{
		position: fixed;
	    height: 89px;
	    width: 100%;
	    background-color: #ffffff;
	    border-bottom: 1px solid #eee;
	    padding-left: 30px;
	}
	
	#header a{
		color: black;
	}
	
	#header a:hover{
		color: ORANGE;
		text-decoration: underline;
		text-decoration-color: green; 
	}
	
	@media (min-width: 1635px) {
		#nav{
			left: 400px;
			padding-right: 200px;
		}
	}
</style>
</head>
<body>
	<header id="header">
		<div class="inner" style="margin: 0;">
			<h1 id="logo_h">
				<a href="home.inc" class="logo" style="width: 130px; left: 10px;"><img id="h_img" src="resources/images/Black_on_Transparent-removebg-preview (1).png" style="max-width: 100%; max-height: 100%; width: 100%; height: 30px;"/></a>
			</h1>	
			<nav id="nav" >
				<a href="gonoinjung.inc" style="margin-top: 5px;">실버타운/요양원</a>
				<a href="notice.inc" style="margin-top: 5px;">게시판</a>
				<a href="qanotice.inc" style="margin-top: 5px;">Q&A</a>
				<a href="shop.inc" style="margin-top: 5px;">shop</a>
				<!-- 로그인 전 -->
			<c:if test="${empty sessionScope.userVO.nickname or sessionScope.userVO.status eq 1 }">
				<a href="gologin.inc">로그인</a>&nbsp; <a href="goReg.inc">회원가입</a>
			</c:if>
			<!-- 홈 로그인 시 -->
			<c:if
				test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 0}">
				<a href="user.inc">H_${userVO.nickname }님 환영합니다</a>
				<a href="logout.inc">로그아웃</a>
			</c:if>
			<!-- 카카오 로그인시 -->
			<c:if
				test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 2}">
				<label><a href="user.inc">K_${userVO.nickname }님 환영합니다</a></label>
				<a href="kakaologout.inc">로그아웃</a>
			</c:if>

			<!-- 관리자 로그인 시 -->
			<c:if
				test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 9}">
				<a href="admin.inc" style="color: green;">M_${userVO.nickname }님 환영합니다</a>
				<a  href="logout.inc" >로그아웃</a>
			</c:if>
				
			</nav>
		</div>
		<div id="h_login">
			
		</div>
	</header>
	<a onclick="show()" class="navPanelToggle"><span class="fa fa-bars"></span></a>
	<div id="navPanel" class="visible">
		<a href="gonoinjung.inc" style="-webkit-tap-highlight-color:rgba(0,0,0,0);">요양원</a>
		<a href="gonoinjung.inc" style="margin-top: 5px;">실버타운/요양원</a>
				<a href="notice.inc" style="margin-top: 5px;">게시판</a>
				<a href="qanotice.inc" style="margin-top: 5px;">Q&A</a>
				<a href="shop.inc" style="margin-top: 5px;">shop</a>
				<!-- 로그인 전 -->
			<c:if test="${empty sessionScope.userVO.nickname}">
				<a href="gologin.inc">로그인</a>&nbsp; <a href="goReg.inc">회원가입</a>
			</c:if>
			<!-- 홈 로그인 시 -->
			<c:if
				test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 0}">
				<a href="user.inc">H_${userVO.nickname }님 환영합니다</a>
				<a href="logout.inc">로그아웃</a>
			</c:if>
			<!-- 카카오 로그인시 -->
			<c:if
				test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 2}">
				<label>K_${userVO.nickname }님 환영합니다</label>
				<a href="kakaologout.inc">로그아웃</a>
			</c:if>

			<!-- 관리자 로그인 시 -->
			<c:if
				test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 9}">
				<a href="admin.inc" style="color: green;">M_${userVO.nickname }님 환영합니다</a>
				<a  href="logout.inc" >로그아웃</a>
			</c:if>
	</div>
	<script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script>
		function show(){
			$("#navPanel").show();
		}
		function shut(){
			$("#navPanel").hide();
		}
	</script>
</body>
</html>