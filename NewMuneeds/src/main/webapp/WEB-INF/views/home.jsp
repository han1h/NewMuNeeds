<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("YY년MM월dd일");
	SimpleDateFormat dateW = new SimpleDateFormat("YY년 w주차");
	
	String toDay = date.format(today);
	String toWeek = dateW.format(today);
	
	request.setAttribute("today", toDay);
	request.setAttribute("toweek", toWeek);
	 
	SimpleDateFormat date1 = new SimpleDateFormat("YYYYMMdd");
	
	Calendar yDay = Calendar.getInstance();
	yDay.add(Calendar.DATE , -1);

	Calendar yWeek = Calendar.getInstance();
	yWeek.add(Calendar.DATE , -7);
	yWeek.set(Calendar.DAY_OF_WEEK,Calendar.MONDAY);
	
	String beforeD = date1.format(yDay.getTime());
	String beforeW = date1.format(yWeek.getTime());
	
	request.setAttribute("beforeD", beforeD);
	request.setAttribute("beforeW", beforeW);
%>

<html>
<head>
   <title>MuNeeds | 홈페이지</title>	

<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<style type="text/css">
  	  a, abbr, acronym, address, applet, b, big, blockquote, body, button, caption, center, cite, code, dd, del, dfn, div, dl, dt, em, fieldset, font, footer, form, h1, h2, h3, h4, h5, h6, header, html, i, iframe, img, ins, kbd, label, legend, li, nav, object, ol, p, pre, q, s, samp, section, small, span, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, title, tr, tt, u, ul, var, wix-iframe {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: 0 0;
	  }
  	  div{
  		display: block;
  	  }
     #picture_write{
      	position: relative;
      	margin: 180px 0px 30px calc((100%-490px) * 0.5);
      	left: 43px;
      	width: 400px;
      	pointer-events: none;
      	margin-left:0px;
      }
     #l_img{
     	float:left;
     	position: relative;
     	height: auto;
     	width: 50%;
     }
     #r_img{
     	float: right;
     	width: 50%;
     	height: auto;
     	position: relative;
     	top: 0;
     	bottom: 0;
     }
     #top_img{
     	width: auto;
     }
    .mc1:not([data-mobile-responsive]) .mc1inlineContent {
		position: absolute;
	    top: 0;
	    right: 0;
	    bottom: 0;
	    left: 0;
	 }
	.color_11{
		color: #ffffff;
	}
	.font_4{
		font: normal normal normal 72px/1.25em barlow-medium,barlow,sans-serif;
		color: #000000;
	}
	#jobs{
		position: absolute;
		margin: 450px 0px 30px calc(( 100%-490px ) * 0.5);
		justify-self: start;
		align-self: start;
		left: 45px;
		margin-top: 10px;
		margin-left: 10px;
	}
	.txtNew{
		text-align: start;
	}
	.font_7{
		font: normal normal normal 15px/1.25em barlow-medium,barlow,sans-serif;
	}
	.txtNew h1{
		margin: 0;
		line-height: normal;
		letter-spacing: normal;
	}
	
	.mBoxGroup{
		display: flex;
		flex-flow: row wrap;
		align-items: center;
		border-top:1px solid #e8e8e8;
		margin-top: 5px;
		margin: 7rem 0;
	}
	
	.mBoxGroup:nth-child(odd) .mGroupText {
	    margin: 0 4.444em 0 0;
	}
	
	.mBoxGroup .mGroupText{
		word-break : keep-all;
	}
	
	.mBoxGroup > div{
		flex: 1;
		flex-direction: column;
		justify-content: center;
		width: 50;
	}
	.mBoxGroup:nth-child(odd) .mGroupImg {
	    text-align: right;
	}
	.mGroupImg {
	    position: relative;
	}
	.section:nth-child(odd) .mGroupImg .bg {
	    margin: auto 0 auto auto;
	}
	.mainStep .mGroupImg .bg {
	    max-width: 88%;
	}
	.mGroupImg .bg {
	    width: 80%;
	}
	.mGroupImg .bg {
	    display: block;
	}
	
	img, fieldset {
	    border: 0;
	    max-width: 100%;
	    vertical-align: top;
	}
	.mBoxGroup:nth-child(odd) .mGroupImg {
	    text-align: right;
	}
	.mBoxGroup:nth-child(even) {
	    flex-direction: row-reverse;
	    -webkit-box-orient: horizontal;
	    -webkit-box-direction: reverse;
	    -ms-flex-flow: row-reverse;
	}
	
	.font_9{
		font: 40px barlow-medium,barlow,sans-serif;
		color: #000000;
	}
	#q_Contents{
		font: normal normal normal 15px/1.875em avenir-It-w01_35-light1475496,sans-serif;
		color: #000000;
	}
	#total_write{
		position: relative;
		width: 100%;
		min-width: 980px;
		border-top:1px solid #e8e8e8;
		height: auto;
	}
	.total_write{
		display: flex;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		height: 700px;
		margin-top: 20px;
	}
	#home_question{
		position: relative;
		width: 100%;
		left: 0;
		top: 0;
		margin-top: 0;
		margin-bottom: 0;
		display: flex;
	}
	#question{
		position: relative;
		height: 100%;
		width: 100%;
		left: 70px;
	}
	#q_write{
		position: relative;
		margin: 0px 0px 20px calc(( 100%- 490px ) * 0.5);
		left: 15%;
		top: 15%;
		align-self: start;
	}
	#muneu{
		position: relative;
		margin: 0px 0px 0px calc(( 100%- 490px ) * 0.5);
		left: 15%;
		top: 35%;
		align-self: start;
	}
	#question_write{
		margin: 50px;
	}
	#main_footer{
		border-top:1px solid #e8e8e8;
	}
	
	@media(min-width: 1080px){
		#main_footer{
			border-top: 1px solid #e8e8e8;
		}
	}
	
	.head_left{
		position: relative;
		left: 170px;
		
	}
	.head_right{
		position: relative;
		left: 130px;
	}
	/* 버튼 스타일*/
	#scroll-to-top{
		display: inline-block;
		background-color: #3C5087; /*배경 색깔*/
		color: #FFFFFF;  /* 아이콘 색깔*/
		font-size: 44px; /*아이콘 크기*/
		width: 50px;
		height: 50px;
		text-align: center;
		border-radius: 4px;
		position: fixed;
		bottom: 30px;
		right: 30px;
		transition: background-color .3s, opacity .5s, visibility .5s;
		opacity: 0;
		visibility: hidden;
		z-index: 1000;
	}
	
	/*버튼에 마우스오버 했을때 스타일*/
	#scroll-to-top.show:hover{
		cursor: pointer;
		opacity: 1;
	}
	/*버튼이 activer일때 스타일*/
	#scroll-to-top.show:active{
		opacity: 1;
	}
	/*버튼 보여주기*/
	#scroll-to-top.show{
		opacity: 0.7;
		visibility: visible;
	}
	
	/*사진 안 글자 크기 조절*/
	#picture_write_total{
			width: 50%;
			position: absolute;
			height: auto;
		    left: 46%;
		    margin-top: -40px;
	}
	
	/*함께 같이 할 기업들*/
	#enterprise{
			display: inline-block;
		    margin-left: 0px;
		    animation-duration: 67.5s;
		    animation-timing-function: linear;
		    animation-delay: 0s;
		    animation-iteration-count: infinite;
		    animation-direction: normal;
		    animation-fill-mode: none;
		    animation-name: enterprise;
		    
	}
	
	/*함께 같이할 기업들 목록 div*/
	#M_together{
			padding: 2.667rem 0 1.778rem;
			border-top: 1px solid #e8e8e8;
			padding-top: 530px;
	}
	
	/*사진 있는 곳*/
	#M_picture{
			overflow-wrap: normal;
			white-space: nowrap;
			overflow: hidden; 
			width: 100%;
			margin-top: 50px;
	}
	
	@media (min-width: 1080px) {
			#M_picture{
					height: 7.333rem;
			}	
	}
	img{
		border: 0;
		max-width: 100%;
		vertical-align: top;
	}
	
	#M_picture li{
			float: left;
			height: 7.333rem;
			width: 12.444rem;
	}
	
	/*화면 사진 없어졌다가 다시 생기게*/
	@keyframes mBoxGroup {
	    from {opacity:0;}
	    to {opacity:1;}
	}
	
	@-webkit-keyframes enterprise {
	    0%   { -webkit-transform: translate(0, 0); } 
	    100% { -webkit-transform: translate(-3360px, 0); }
	}
	@-moz-keyframes enterprise {
	    0%   { -moz-transform: translate(0, 0); } 
	    100% { -moz-transform: translate(-3360px, 0); }
	}
	@-o-keyframes enterprise {
	    0%   { -o-transform: translate(0, 0); } 
	    100% { -o-transform: translate(-3360px, 0); }
	}
	@keyframes enterprise {
	    0%   { transform: translate(0, 0); } 
	    100% { transform: translate(-3360px, 0); }
	}
	
	#experience_ticket{
			margin-top: 50px;
	}
	
	.divpop {
	  	position: absolute; 
	  	display: none;
  	}
  	
   </style>
</head>
<body>
   <div id="h_total">
      <div class="mc1inlineContent">
         <jsp:include page="realmenu.jsp"/>
      </div>
   </div>
   
   <!-- 상단 이미지 -->
   <div id="top_img" class="mc1inlineContent">
   	   
   	   <!-- 맨 위 상단 왼쪽 그림 -->
	   <div id="l_img" class="mc1inlineContent" data-mesh-internal="true">
	      <img src="resources/images/풍경사진1.jpg" style="width: 100%; height: 500px;"/>
	   </div>
	   
	   <!-- 맨 위 상단 오른쪽 그림 -->
	   <div id="r_img" class="mc1inlineContent" data-mesh-internal="true">
	      <img src="resources/images/풍경사진2.jpg" style="width: 100%; height: 500px; "/>
	   </div>
   
   </div>
   
   <!-- 사진 안 문구 -->
   <div id="picture_write_total">
	   <div id="total_picture_write">
		   <div id="picture_write" class="mc1inlineContent" style="height: 0px; margin-top: 170px; margin-bottom: 80px;">
		      <h1 class="font_4" style="line-height: 1.25em; text-align: center; height: auto;">
		      	<span class="color_11"> MuNeeds</span>
		      </h1>
		      <h1 class="color_11" style="line-height: 1.25em; text-align: center; width: 320px; height: 50px; margin-bottom: 0; padding-left: 45px;">
		      	<span class="color_11">(MUST+NEEDS)&nbsp;</span>
		      </h1>
		   </div>
	       <div data-packed="ture" data-vertical-text = "false" style="pointer-events: none; width: 90%; margin-left: 40px; padding-top: 80px;" class="txtNew" id="jobs">
		  		<p class="font_7" style="line-height: 1.67em;">
		  			<span class="color_11">
		  				<span class="color_11" style="font-weight: bold;"> &#8203; 
			  				안녕하세요?  MuNeeds입니다. MuNeeds는 Must+Needs의 합성어로 디지털 정보 격차 해소와 사회적 안전망 구축을 목표로 꼭 필요한 정보를
			  				사회적 약자를 위해 제공하는 Platform 서비스입니다. 
						</span>
		  			</span>
		  		</p>
	   	   </div>
	   </div>
   </div>
   <!-- 팝업창 -->
	<div id="divpop1" class="divpop" style="position: absolute; top: 101px; z-index: 200; visibility: visible; left: 300px;">
		<table style="width: 60%; height: 10%;">
			<tbody>
				<tr>
					<td style="height: auto; text-align: center; background-color: white">
							<a href="#">
								<img alt="이벤트 페이지" src="resources/images/회사 이벤트 페이지.jpg" width="100%" height="40%" />
							</a>	
					</td>
				</tr>
				<tr>
					<td style="height: 5px; background-color: #000000;"></td>
				</tr>
				<tr>
					<td style="height: 25px; text-align: right; background-color: #000000; display: block; padding: 0px 20px;">
						<div class="button_area">
							<input type="checkbox" id="todaycloseyn" name="chkbox"><font style="color: #eee; margin-right: 15px;">오늘 하루 이 창을 열지 않습니다.</font>
							<a href="#" id="chkclose" onclick="javascript:closeWin(1);">
								<font style="color: #eeeeee">
									<b>[닫기]</b>
								</font>
							</a>
						</div>	
					</td>
				</tr>
			</tbody>
		</table>
	</div>
   
   <!-- MuNeeds와 함께하는 기업 -->
    <div id="M_together">
       <h1 style="text-align: center; padding-bottom: 10px;">MuNeeds와 함께 하는 실버타운 및 요양원</h1>
       <div id="M_picture">
       		<div id="enterprise">
       			<ul class="total_picture" style=" width: 3360.03px;">
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       					<li>
       						<a href="#" target="_blank" title="신월실버요양원">
       								<img alt="신월실버요양원" src="resources/images/sliver/noursing/신월실버.jfif" style="width: 223px; height: 131px;">
       						</a>
       					</li>
       			</ul>
       		</div>	
       </div>
    </div>
   <!-- MuNeeds 체험권 구매하기 -->
   <div id="experience_ticket">
   			<div id="e_ticketpicture">
   					<a href="goexolanation.inc">
   						<img src="resources/images/sliver/실버타운.png" style="width: 100%; height: 45%; display: block; resize: width;"/>
   					</a>	
   			</div>
   </div>
     
   <!-- 아래쪽 문의 사항 -->
   <div id="total_write" class="total_write">
      <div id="home_question">
         <div id="question">
         	<div style="width: 50%; height: 0; text-align: center;" class="txtNew" id="q_write">
	            <span class="font_9" style="text-align: center;">
	               시범입주문의
	            </span>
            </div>
            <div style="width: 50%; height: 300px; text-align: center;" class="txtNew" id="muneu">
           		<span class="font_11">
           			예비 회원사분들 문의를 주신면 답해드립니다.<br/><br/>
           			info@berhmkoorea.com<br/><br/>
           			070-7918-0627
           		</span>
            </div>
         </div>
      </div>
      <div style="width: 60%; position: relative; top: 0; bottom: 0;">   
         <div id="question_write">
	         <form action="bbsAdd.inc" method="post" name="frm">
	            <table>
	               <tbody>
	                  <tr>
	                     <td colspan="2">
	                       	<h3>예비회원사</h3>
	                      </td>
	                   </tr>
	                  <tr>
	                     <td colspan="2">
	                        <input type="text" id="writer" name="writer" placeholder="이름 or 회원사 이름"/>
	                     </td>
	                  </tr>
	                  <tr>   
	                     <td colspan="2">
	                        <input type="text" id="address" name="address" placeholder="주소"/>
	                     </td>
	                  <tr>   
	                     <td>
	                        <input type="text" id="email" name="email" placeholder="이메일" style="width:200px;"/>
	                     </td>
	                     <td>   
	                        <input type="text" id="phone" name="phone" placeholder="전화번호(-없이 작성해 주세요)"/>
	                     </td>   
	                  </tr>
	                  <tr>   
	                     <td colspan="2">
	                        <input type="text" id="subject" name="subject" placeholder="제목"/>
	                     </td>
	                  </tr>   
	                  <tr>   
	                     <td colspan="2">
	                        <textarea rows="5" cols="30" id="content" name="content" placeholder="메시지를 입력하세요."></textarea>
	                     </td>
	                  </tr>
	                  <tr>
	                     <td style="text-align: right;" colspan="4">
	                        <input type="button" value="보내기" id="send"/>
	                     </td>
	                  </tr>
	               </tbody>
	            </table>
            </form>
         </div>
      </div>
   </div>
   <!-- 화면 상단으로 이동하는 버튼 -->
   <a id="scroll-to-top">
   		<i class="fas fa-angle-up"></i>
   </a>
   
   <!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
    <script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
	
  	$(function(){
		
		if(getCookie("divpop1") !="Y"){
			console.log(getCookie("divpop1"));
			$("#divpop1").show();
		}
		
	});
	
      $("#send").bind("click",function(){
         
         var writer = $("#writer").val();
         var address = $("#address").val();
         var email = $("#email").val();
         var phone = $("#phone").val();
         var subject = $("#subject").val();
         var content = $("#content").val();
         
         if(writer<1){
            alert("이름을 입력해 주세요.");
            $("#writer").focus();
            return;
         }
         if(address<1){
            alert("주소를 입력해 주세요.");
            $("#address").focus();
            return;
         }
         if(email<1){
            alert("이메일을 입력해 주세요.");
            $("#email").focus();
            return;
         }
         if(phone<1){
            alert("전화번호를 입력해 주세요.");
            $("#phone").focus();
            return;
         }
         if(subject<1){
            alert("제목을 입력해 주세요.");
            $("#subject").focus();
            return;
         }
         if(content<1){
            alert("메시지를 입력해 주세요.");
            $("#content").focus();
            return;
         }
         
         document.frm.submit();
      });
      var btn = $('#scroll-to-top');
  	
      $(window).scroll(function() {
        if ($(window).scrollTop() > 300) {
          btn.addClass('show');
        } else {
          btn.removeClass('show');
        }
      });

      btn.on('click', function(e) {
        e.preventDefault();
        $('html, body').animate({scrollTop:0}, '300');
      });
      
    //쿠키설정	
  	function setCookie( name, value, expiredays ){
  	    var todayDate = new Date();
  	    todayDate.setDate( todayDate.getDate() + expiredays );
  	    document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
  	    console.log(value);
  	}

  	//쿠키 불러오기
  	function getCookie(name) 	{ 
  	    var obj = name + "="; 
  	    var x = 0; 
  	    while ( x <= document.cookie.length ) 
  	    { 
  	        var y = (x+obj.length); 
  	        if ( document.cookie.substring( x, y ) == obj ) 
  	        { 
  	            if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
  	                endOfCookie = document.cookie.length;
  	            return unescape( document.cookie.substring( y, endOfCookie ) ); 
  	        } 
  	        x = document.cookie.indexOf( " ", x ) + 1; 
  	        if ( x == 0 ) 
  	            break; 
  	    } 
  	    return ""; 
  	}
  		
  	//닫기 버튼 클릭시
  	function closeWin(key){
  		console.log("여기 왔어요");
  	    if($("#todaycloseyn").prop("checked")){
  	        setCookie('divpop'+key, 'Y' , 1 );
  	      	$("#divpop").hide('fade');
  	    }
	  	$("#divpop"+key+"").hide();
  	}
   </script>
</body>
</html>