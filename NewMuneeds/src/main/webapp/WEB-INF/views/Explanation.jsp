<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MuNeeds | 상세페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href="resources/css/fsghp.css">

 <link rel="stylesheet" href="resources/css/style.css">
<style type="text/css">
	a, abbr, acronym, address, applet, b, big, blockquote, body, button, caption, center, cite, code, dd, del, dfn, div, dl, dt, em, fieldset, font, footer, form, h1, h2, h3, h4, h5, h6, header, html, i, iframe, img, ins, kbd,  legend, li, nav, object, ol, p, pre, q, s, samp, section, small, span, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, title, tr, tt, u, ul, var, wix-iframe {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: 0 0;
	  }
	  
	  html{
	  		font-size: 16px;
	  		text-rendering: optimizeLegibility;
	  }
	  
	  div{
	  		display: block;
	  }
	  
	  *{
	  		background-repeat: no-repeat;
	  		padding: 0;
	  		margin: 0;
	  }
	  
	  /*상세페이지 div*/
	  #explanation_total{
	  		min-height: 600px;
	  }
	  
	  /*요양원 이름 */
	  .e_name{
	  		font-weight: 700;
	  		font-size: 2.125rem;
	  		line-height: 2.5rem;
	  		letter-spacing: .0073529412em;
	  		font-family: Roboto,sans-serif;
	  		box-sizing: inherit;
	  }
	  
	  /*요양원 주소*/
	  #e_address{
	  		color: #9e9e9e;
	  		caret-color : #9e9e9e;
	  		padding-top: 10px;
	  }
	  
	  /*요양원 정보 나오게 하기*/
	  #e_infomation{
	  		color: rgba(0,0,0,.87);
	  		font-family: roboto, sans-serif;
	  		line-height: 1.5;
	  }
	  
	  /*설명문 거의 전체*/
	  #e_nametotal{
	  		margin: -4px;
	  		align-items: center;
	  		display: flex;
	  		flex: 1 1 auto;
	  		flex-wrap: nowrap;
	  		min-width: 0;
	  }
	  
	  #e_infototal{
	  		padding-right: 0;
	  		padding-left: 0;
	  		width: 100%;
	  		margin-right: auto;
	  		margin-left: auto;
	  }
	  
	  @media (min-width:960px) {
		#e_infototal{
				max-width: 960px;
		}
	}
	#e_totalinfor{
			margin-top: 24px;
			margin-bottom: 24px;
	}
	@media (min-width: 960px) {
		#e_totalinfor{
				margin-left: 16.6666666667%;
				flex-basis: 66.666666667%;
				flex-grow: 0;
				max-width: 66.666666667%;
		}
	}
	
	#explanation_layout{
			margin-top: 40px;
			min-height: 600px;
	}
	
	/*상단*/
	#e_title{
			height: 64px;
			margin-top: 0px;
			left: 0px;
			right: 0px;
			background-color: #fff;
			border-color: #fff;
			color: rgba(0,0,0,.87);
			border-radius: 0;
			display: block;
			position: relative;
			box-shadow: 0 2px 4px -1px rgba(0,0,0,.2),
								 0 4px 5px 0 rgba(0,0,0,.14),
								 0 1px 10px 0 rgba(0,0,0,.12);
	}
	
	#e_title_head{
			height: 64px;
			align-items: center;
			display: flex;
			position: relative;
			z-index: 0;
	}
	
	/*뒤로가기 버튼*/	
	#e_title_head{
		margin-left: -12px;
		height: 48px;
		width: 48px;
		color: rgba(0,0,0.54);
		border-radius: 50%;
		background-color: transparent;
		min-height: 0;
		min-width: 0;
		padding: 0;
		align-items: center;
		display: inline-flex;
		flex: 0 0 auto;
		font-weight: 500;
		letter-spacing: .0892857143em;
		justify-content: center;
		max-width: 100%;
		outline: 0;
		position: relative;
		text-decoration: none;
		text-indent: .0892857143em;
		text-transform: uppercase;
		transition-duration: .28x;
	}
	
	button{
		cursor: pointer;
	}
	
	#e_btn_content{
			align-items: center;
			color: inherit;
			display: flex;
			flex: 1 0 auto;
			justify-content: inherit;
			line-height: normal;
			position: relative;
	}
	
	#e_Information{
		margin-top: 12px;
		color: rgba(0,0,0,.87);
		font-family: Roboto,sans-serif;
		line-height: 1.5;
	}
	
	.e_outlined{
		background-color: transparnet;
		background: #e0e0e0;
		border-radius: 16px;
		font-size: 14px;
		height: 32px;
		border-width: thin;
		border-style: solid;
		color: #3cb371;
		caret-color: #3cb371;
		background-color: #ffffff;
		align-items: center;
		cursor: default;
		display: inline-flex;
		line-height: 20px;
		max-width: 100%;
		outline: none;
		overflow: hidden;
		padding: 0 12px;
		position: relative;
		text-decoration: none;
	}
	
	.e_inlined{
		align-items: center;
		display: inline-flex;
		height: 100%;
		max-width: 100%;
		color: #3cb371;
		caret-color: #3cb371;
		cursor: default;
		line-height: 20px;
		white-space: nowrap;
	}
	
	#e_sliver_img{
		padding-top: 50px;
	}
	
	#sliver_info{
		padding-top: 15px;
	}
	
	#sliver_left_info{
		font-weight: 700;
  		font-size: 1.875rem;
  		line-height: 2.5rem;
  		letter-spacing: .0073529412em;
  		font-family: Roboto,sans-serif;
  		box-sizing: inherit;
	}
	
	#e_solution{
		margin-top: 24px;
	}
	
	@media (min-width: 1264px) {
		#e_solution{
			margin-left: 25%;
			flex-basis: 50%;
			flex-grow: 0;
			max-width: 50%;
		}
		
		#e_solution_in{
			max-width: 1264px;
		}
	}
	
	#e_solution_in{
		padding-top: 0;
		padding-bottom: 0;
		padding-left: 0;
		padding-right: 0;
		width: 100%;
		margin-right: auto;
		margin-left: auto;
	}
	
	#e_layout{
		flex-wrap: wrap;
		display: flex;
		min-width: 0;
	}
	
	#e_flex{
		flex: 1 1 auto;
	}
	
	@media (min-width: 0) {
		#e_flex{
			flex-basis: 100%;
			flex-grow: 0;
			max-width: 100%;
		}
		
		#v_map{
			flex-basis: 100%;
			flex-grow: 0;
			max-width: 100%;
		}
	}
	#e_theme{
		color: rgba(0,0,0,.87);
		font-family: Roboto,sans-serif;
		line-height: 1.5;
	}
	#e_themeout{
		border-radius: 4px;
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		list-style-type: none;
		padding: 0;
		width: 100%;
		z-index: 1;
		flex: 0 1 auto;
		position: relative;
	}
	
	#e_panel{
		border-radius: 4px;
		background-color: #fff;
		color: rgba(0,0,0,.87);
		cursor: auto;
		flex: 1 0 100%;
		max-width: 100%;
		position: relative;
		transition: .3s cubic-bezier(.25,.8,.5,1);
	}
	
	#e_panel_btn{
		min-height: 64px;
		align-items: center;
		border-top-left-radius: inherit;
		border-top-right-radius: inherit;
		display: flex;
		font-size: .9375rem;
		line-height: 1;
		outline: none;
		padding: 16px 24px;
		position: relative;
		text-align: left;
		transition: min-height .3s cubic-bezier(.25,.8,.5,1);
		width: 100%;
		cursor: pointer;
		background-color: transparent;
		border-style: none;
		color: inherit;
		text-transform: none;
		overflow: visible;
		font: inherit;
	}
	
	#e_container{
		width: 882px;
		margin-left: -16px;
		margin-right: 0px;
		padding-left: 15px;
		padding-right: 0px;
		padding-top: 50px;
	}
	#e_panelbody{
		font: inherit;
		vertical-align: baseline;
		font-family: roboto, sans-serif;
		line-height: 1.5;
		font-size: 1.5;
		color: rgba(0,0,0,.54);
	}
	
	#v_map{
		margin-top: 16px;
		flex: 1 1 auto;
		color: rgba(0,0,0,.87);
		font-family: Roboto, sans-serif;
		line-height: 1.5;
	}
	
	#v_map_header{
		height: 64px;
		background-color: transparent;
		border-color: transparent;
		color: rgba(0,0,0,.87);
		display: block;
		position: relative;
		box-shadow: 0 0 0 0 rgba(0,0,0,.2)
							 0 0 0 0 rgba(0,0,0,.14)
							 0 0 0 0 rgba(0,0,0,.12);
		content: layout;
				
	}
	#v_map_header_text{
		height: 64px;
		border-bottom-left-radius: inherit;
		border-bottom-right-radius: inherit;
		border-top-left-radius: inherit;
		border-top-right-radius: inherit;
		align-items: center;
		display: flex;
		position: relative;
		z-index: 0;
	}
	#v_map_header_location{
		font-weight: 300;
		font-size: 1.25rem;
		line-height: 1.5;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
	}
	
	#e_map{
		margin-top: 10px;
	}
	
	#e_inside_title{
		float: right;
		width: 100%;
	}
	
	#e_payment{
		width: 100%;
	}
	#e_title_head{
		width: 100%;
	}
	
	#e_atag{
		align-items: center;
		display: inline-flex;
		height: 100%;
		max-width: 100%;
		color: #3cb371;
		caret-color: #3cb371;
		cursor: default;
		line-height: 20px;
		white-space: nowrap;
		margin-right: 20px;
	}
	
	#e_atag:hover {
		text-decoration: none;
		cursor: pointer;
	}
	
</style>
</head>
<body>
	<header id="e_title">
			<div id="e_title_head">
				<button type="button" onclick="gohome()">
					<img src="resources/images/이전화면.jpg"  style="width: 70px; margin-top: 15px; margin-left: 10px;"/>
				</button>
				<div id="e_inside_title">
					<div id="e_payment">
						<div>
							<a onclick="popupOpen()" style="float: right;" class="e_name" id="e_atag" >
								결제하기
							</a>
						</div>
					</div>
				</div>	
			</div>
	</header>
	<!-- 상세정보 보여 주는 페이지 -->
	<div id="explanation_layout">
		<div id="e_totalinfor">
			<div id="e_infototal">
				<div id="e_nametotal">
					<div id="e_infomation">
						<div class="e_name">
							신월실버요양원
						</div>
						<div id="e_address">
							서울특별시 양천구 신월1동 226-8
						</div>
						<div id="e_Information">
							<span class="e_outlined">
								<span class="e_inlined">
									설립 정보 없음
								</span>
							</span>
							<span class="e_outlined">
								<span class="e_inlined">
									입지 정보 없음
								</span>
							</span>
							<span class="e_outlined" id="e_money">
								<span class="e_inlined">
									\600000
								</span>
							</span>
						</div>
					</div>
				</div>
				<div id="e_sliver_img">
					<img id="e_img" src="resources/images/sliver/실버타운.jpg" style="width: 90%;"/>
				</div>
				<div id="e_panel">
					<div class="container" id="e_container">
					  <div class="panel-group" id="accordion">
					  	<div class="panel panel-default active">
					    	<div class="panel-heading">
					      		<h4 class="panel-title">
					       			 <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
					          		 <i class="fa fa-caret-right"></i> <span id="sliver_left_info"> 실버타운 안내</span>
					        		 </a>
					      		</h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse in">
					      <div class="panel-body" id="e_panelbody">
					        바쁜 일상 속에 있는 자녀들이지만 출,퇴근 시 언제든 자연스럽게 들릴 수 있습니다. 어르신들을 자녀와 떨어져 지내신다는
							 불안감을 덜 수 있고 자주 들릴 수 있는 자녀들도 부모님을 자주 볼 수 있다는 위안을 삼고 가벼운 마음으로 맡기실 수 있을 겁니다.
					      </div>
					    </div>
					  </div>
			    </div>
			</div>
		</div>
			<div id="v_map">
				<header id="v_map_header">
					<div id="v_map_header_text">
						<div id="v_map_header_location">
							<span class="e_name"> 실버타운 위치 </span>
						</div>
					</div>
				</header>
				<div id="e_map" style="width: 870px;">
			         	<jsp:include page="kMap.jsp"/>
				</div>
			</div>
			</div>
		</div>
	</div>
	
	<!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
   
   
  	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js'></script>
   	<script src="resources/js/index.js"></script>
   	<script type="text/javascript">
   		function goback(){
   			window.history.back();
   		}
   		
   		function gohome(){
   			
   			location.href= "home.inc";
   			
   		}
   		
   		function popupOpen(){
   			
   			var popUrl = "/berhmkorea/refund";
   			var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";

   			window.open(popUrl,"",popOption);
   		}
   	</script>
</body>
</html>