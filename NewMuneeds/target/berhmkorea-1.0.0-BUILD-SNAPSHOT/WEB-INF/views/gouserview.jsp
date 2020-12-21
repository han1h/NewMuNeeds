<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 페이지</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<style type="text/css">
	.mytmall_menu {
		    border: 1px solid #cdcdcd;
		    border-top: none;
		    width: 163px;
		    padding-bottom: 20px;
		    position: relative;
		    top: 80px;
		}
	h2 {
	    display: block;
	    font-size: 1.5em;
	    margin-block-start: 0.83em;
	    margin-block-end: 0.83em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	}
	
	a{
		color: black;
		text-decoration: none;
	}
	.mytmall_menu dl dd a, .mytmall_menu dl li a, .mytmall_menu .mytmall_sub_menu dd a, .mytmall_menu .mytmall_sub_menu li a {
	    display: inline-block;
	    font-size: 11px;
	    color: #666;
	    vertical-align: middle;
	    line-height: 15px;
	}
	#layBodyWrap.mytmall_bodywrap {
	    width: 1240px;
	}
	#layBodyWrap {
	    position: relative;
	    z-index: 20;
	    width: 980px;
	    margin: 0 auto;
	    padding: 10px 0 50px;
	    outline: none;
	}
	#layBody {
	    zoom: 1;
	}
	.mytmall_wrap_v2 {
	    margin-top: 0px;
	    padding-top: 10px;
	    *zoom: 1;
	}
	.mytmall_subArea_v2 {
	    float: left;
	    position: relative;
	    z-index: 100;
	    width: 185px;
	}
	
	.mytmall_wrap_v2:after {
	    display: block;
	    clear: both;
	    content: "";
	}
	.mytmall_hgroup {
	    overflow: hidden;
	    width: 100%;
	}
	.mytmall_tbl1 table thead th {
	    height: 24px;
	    padding-top: 3px;
	    text-align: center;
	    color: #333;
	    font-size: 12px;
	    letter-spacing: -1px;
	    font-weight: normal;
	    border-bottom: 1px solid #dadada;
	    border-left: 1px solid #dadada;
	    background-color: #e4e4e5;
	    background-image: -webkit-gradient(linear, left top, left bottom, from(#f3f3f3), to(#e4e4e5));
	    background-image: -webkit-linear-gradient(top, #f3f3f3, #e4e4e5);
	    background-image: linear-gradient(to bottom, #f3f3f3, #e4e4e5);
	}
	table, th, td {
	    margin: 0;
	    padding: 0;
	    border-collapse: collapse;
	    word-break: break-all;
	}
	.mytmall_tbl1 table tbody tr.first td {
	    border-top: none;
	}
	strong {
	    font-weight: bold;
	}
	#layBodyWrap.mytmall_bodywrap .mytmall_contArea {
	    width: 1055px;
	}
	.mytmall_contArea {
	    position: relative;
	    z-index: 110;
	    float: left;
	    width: 795px;
	}
	.mytmall_title {
	    position: relative;
	    *zoom: 1;
	    margin-top: 30px;
	    height: 25px;
	}
	div.mytmall_title {
	    width: 100%;
	}
	mytmall_title h3 {
	    float: left;
	    margin-right: 9px;
	}
	h1, h2, h3, h4, h5, h6 {
	    font-size: 100%;
	}
	h3 {
	    display: block;
	    font-size: 1.17em;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	    text-align: center;
	}
	.mytmall_title em {
	    float: left;
	    font-style: normal;
	    font-size: 11px;
	    color: #666;
	    padding-top: 3px;
	}
	#mytmall_tbl1_area.mytmall_tbl1 {
	    z-index: 20;
	}	
	.mytmall_tbl1 {
	    position: relative;
	    z-index: 20;
	    border-top: 1px solid #b9b9b9;
	    border-bottom: 1px solid #b9b9b9;
	    border-bottom-width: 0px;
	    
	}
	colgroup {
	    display: table-column-group;
	}
	:root .mytmall_tbl1 table {
	    width: 100%;
	    border-collapse: separate;
	    border-spacing: 0;
	}
	col {
	    display: table-column;
	}
	:root .mytmall_tbl1 table {
	    width: 100%;
	    border-collapse: separate;
	    border-spacing: 0;
	}
	thead {
	    display: table-header-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	tr {
	    display: table-row;
	    vertical-align: inherit;
	    border-color: inherit;
	}
	th {
	    display: table-cell;
	    vertical-align: inherit;
	    font-weight: bold;
	    text-align: -internal-center;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	.mytmall_title strong {
	    float: left;
	    color: #4d4d4d;
  	 	 font: 12px/1.3 "Helvetica Neue", "Apple SD Gothic Neo", "돋움", dotum, sans-serif;
	}
	ul{
		list-style: none;
	}
	:root .mytmall_tbl1 table {
	    width: 100%;
	    border-collapse: separate;
	    border-spacing: 0;
	}
	#mytmall_tbl1_area.mytmall_tbl1 {
	    z-index: 20;
	}
	#layBodyWrap.mytmall_bodywrap .mytmall_contArea {
	    width: 1055px;
	}
	.mytmall_contArea {
	    position: relative;
	    z-index: 110;
	    float: left;
	    width: 795px;
	}
	.skip, .hide, .sr-only {
	    position: absolute;
	    overflow: hidden;
	    clip: rect(0 0 0 0);
	    margin: -1px;
	    width: 1px;
	    height: 1px;
	}
	#objOrderInfo{
		height: 600px;
	}
	.no_info{
		text-align: center;
	}
	#layBody{
		height: 500px;
	}
	#layBodyWrap.mytmall_bodywrap .mytmall_contArea {
	    width: 1055px;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	table.mytmall_table tr:first-child th, table.mytmall_table tr:first-child td {
	    border-top: 0;
	}
	table.mytmall_table td {
	    position: relative;
	    padding: 6px 0 6px 15px;
	    border-top: 1px solid #e7e7e7;
	}
	.mytmall_table.def {
	    margin-top: 0;
	    margin-bottom: 20px;
	}
	table.mytmall_table {
	    *table-layout: fixed;
	    width: 100%;
	    margin-top: 9px;
	    border-collapse: separate;
	    *border-collapse: collapse;
	    border-spacing: 0;
	    border-top: 1px solid #b9b9b9;
	    border-bottom: 1px solid #b9b9b9;
	}
	table {
	    display: table;
	    border-collapse: separate;
	    box-sizing: border-box;
	    text-indent: initial;
	    border-spacing: 2px;
	    border-color: grey;
	}
	table.mytmall_table th {
	    padding: 9px 0 8px 15px;
	    border-top: 1px solid #e7e7e7;
	    color: #333;
	    font-weight: normal;
	    background: #f8f8f8;
	}
	.mytmall_table.def th {
	    text-align: left;
	}
	.mytmall_bt01 {
	    display: inline-block;
	    height: 20px;
	    padding: 1px;
	    margin-bottom: 1px;
	    background: #fff;
	    border: 1px solid #9c9c9c;
	    -webkit-box-shadow: 0 1px 0 0 #dcdbdc;
	    box-shadow: 0 1px 0 0 #dcdbdc;
	    -webkit-box-sizing: border-box;
	    box-sizing: border-box;
	}
	.mytmall_bt01 span {
	    display: inline-block;
	    height: 12px;
	    padding: 3px 3px 0;
	    border-top: none;
	    background: #f3f3f3;
	    background: -webkit-gradient(linear, left bottom, left top, from(#f3f3f3), to(white));
	    background: -webkit-linear-gradient(bottom, #f3f3f3 0%, white 100%);
	    background: linear-gradient(0deg, #f3f3f3 0%, white 100%);
	    color: #666 !important;
	    font-size: 11px;
	    font-family: "Helvetica Neue", "Apple SD Gothic Neo", "돋움", dotum, sans-serif;
	    letter-spacing: -1px;
	    line-height: 1;
	    text-align: center;
	}
	.mytmall_bt01 {
	    display: inline-block;
	    height: 19px;
	    padding: 1px;
	    margin-bottom: 1px;
	    background: #fff;
	    border: 1px solid #9c9c9c;
	    -webkit-box-shadow: 0 1px 0 0 #dcdbdc;
	    box-shadow: 0 1px 0 0 #dcdbdc;
	    -webkit-box-sizing: border-box;
	    box-sizing: border-box;
	}
	.bt_area3 {
	    padding-top: 25px;
	    text-align: center;
	}
	.bt_confirm {
	    display: inline-block;
	    cursor: pointer;
	}
	.bt_cancel {
	    display: inline-block;
	    cursor: pointer;
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
   	<div id="layBodyWrap" class="mytmall_bodywrap" style="height: 750px;">
   		<div id="layBody">
   		<div class="mytmall_subArea_v2">
   			<div class="mytmall_wrap_v2">
   					<!-- 서브 메뉴 -->
				<div class="mytmall_menu">
					<h2 class="skip">서브메뉴</h2>
					<div class="mytmall_sub_menu first">
						<h3 style="border-top: 1px solid #cdcdcd;">나의 주문 내역</h3>
							<ul>
								<li>
									<a href="paymentOk.inc">
										주문 내용 확인 하기
									</a>
								</li>
								<li>
									<a href="paymentCancle.inc">
										취소 하기
									</a>
								</li>
								<li>
									<a href="cancleOk.inc">
										취소 현황
									</a>
								</li>
								<li>
									<a href="cancleandpay.inc">
										환불/입금내역
									</a>
								</li>
							</ul>
						</div>
						<div class="mytmall_sub_menu">
							<h3>회원 정보</h3>
							<ul>
								<li>
									<a href="useredit.inc">
										회원정보 변경
									</a>
									/
									<a href="userout.inc">
										탈퇴
									</a>
								</li>
								<li>
									<a href="myaddress.inc">
										나의 배송지 관리
									</a>
								</li>
							</ul>
						</div>
					</div>
					<form action="form1" method="post">
						<input type="hidden">
					</form>
					
	   			</div>
   			</div>
   			<c:if test="${ !empty sessionScope.userVO.nickname and sessionScope.userVO.status eq 0}">
   			<div class="mytmall_contArea" style="position: relative;  top: 90px; height: 700px;">
	   				<div class="mytmall_ttl2">
	   					<div class="line">
	   						<h2 class="t_meminfoModify">
	   							<span>회원정보 변경</span>
	   						</h2>
	   						<p class="ttl_cont">
	   							고객님의 회원정보를 수정하실 수 있습니다. 회원정보를 변경하시고 반드시 하단에 있는 
	   							<strong>확인</strong>
	   							 버튼을 클릭해 주셔야 합니다.
	   						</p>
	   					</div>
	   				</div>
	   				<div class="mytmall_title">
	   					<h3 class="member">
	   						<strong>MuNeeds 아이디 가입정보</strong>
	   					</h3>
	   				</div>
	   				<table class="mytmall_table def">
	   					<colgroup>
	   						<col width="159">
	   						<col>
	   					</colgroup>
	   					<tbody>
	   						<tr>
	   							<th scope="row">이름</th>
	   							<td>${userVO.name }</td>
	   						</tr>
	   					</tbody>
	   				</table>
	   				<table class="mytmall_table def">
	   					<colgroup>
	   						<col width="159">
	   						<col>
	   					</colgroup>
	   					<tbody>
	   						<tr>
	   							<th scope="row">이름</th>
	   							<td>${userVO.name }</td>
	   						</tr>
	   						<tr>
	   							<th scope="row">아이디</th>
	   							<td>${userVO.id}</td>
	   						</tr>
	   						<tr>
	   							<th scope="row">닉네임</th>
	   							<td>${userVO.nickname}</td>
	   						</tr>
	   						<tr>
	   							<th scope="row">비밀번호</th>
	   							<td><a onclick="popupOpen()" class="mytmall_bt01" style="position: relative; top: 5px;"><span style="position: relative; top: -12.875px;">비밀번호 변경하기</span> </a> </td>
	   						</tr>
	   					</tbody>
	   				</table>
	   				<div class="bt_area3">
	   					<a href="javascript:window.history.back();" class="bt_confirm">
	   						<span>확인</span>
	   					</a>
	   					<a href="user.inc" class="bt_cancel"><span>취소</span></a>
	   				</div>
	   			</div>
	   			</c:if>
	   			
   		</div>
   		
   	</div>
   	<!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>		
   <script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript">
		function popupOpen(){
			var popUrl = "//localhost:9090/berhmkorea/pwpopup.inc";
   			var popOption = "width=600, height=600, resizable=no, scrollbars=no, status=no;";

   			window.open(popUrl,"",popOption);
		}
	</script>
</body>
</html>