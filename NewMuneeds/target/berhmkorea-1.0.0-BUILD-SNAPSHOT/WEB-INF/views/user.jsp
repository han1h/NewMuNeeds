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
</style>
</head>
<body>
	<!-- 메뉴바 -->
	<div id="h_total">
      <div class="mc1inlineContent">
         <jsp:include page="realmenu.jsp"/>
      </div>
   </div>
   	<div id="layBodyWrap" class="mytmall_bodywrap">
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
   			<!-- 마이페이지 -->
   			<div class="mytmall_contArea">
   				<div class="mytmall_title" id="deliveryInfo">
   					<h3 class="member">
   						<strong>배송상품 주문 정보</strong>
   					</h3>
   					<em>
   						주문 건
   					</em>
   				</div>
   			</div>
   			<!-- 주문 정보 -->
   			<div id="objOrderInfo">
   				<!-- 리스트 보기 -->
   				<div class="mytmall_tbl1" id="mytmall_tbl1_area" role="tabpanel">
   					<table style="width: 70%; position: relative; top: 80px; padding-left: 10px;">
   						<colgroup>
   							<col width="112px;">
   							<col width>
   							<col width="95px">
   							<col width="91px">
   							<col width="93px">
   							<col width="84px">
   						</colgroup>
   						<thead>
   							<tr>
   								<th class="first" scope="col">주문일자</th>
   								<th scope="col">주문 상품 정보</th>
   								<th scope="col">상품금액(수량)</th>
   								<th scope="col">배송비(판매자)</th>
   								<th scope="col">주문 상태</th>
   								<th scope="col">확인/취소/리뷰</th>
   							</tr>
   						</thead>
   						<tbody>
   							<tr class="first">
   								<td colspan="6" class="no_info">
   									<strong>최근 주문/배송 조회 내역이 없습니다.</strong>
   								</td>
   							</tr>
   						</tbody>
   					</table>
   				</div>
   			</div>
   		</div>
   	</div>
	
	<!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
</body>
</html>