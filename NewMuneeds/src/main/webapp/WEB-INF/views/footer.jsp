<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#f_footer{
		width: 100%;
		border-top: 1px solid #e8e8e8;
		position: relative;
		padding-left: 12px;
		padding-bottom: 10px;
		padding-top:10px;
		padding-right:12px;
		margin: 0 auto;
	}
	
	#f_fotter_top{
		padding-top: 5px;
		padding-bottom: 10px;
	}
	.footer_info{
		color: #9e9e9e;
		text-decoration: inherit;
		font: 12px Roboto, sans-serif;
		line-height: 1.15rem;
	}
	#f_footer{
		height: 210px;
		background-color: #F5F5F5;
	}
	#f_footer_in{
		padding-top: 0px;
		padding-left: 20px;
		padding-bottom: 20px;
	}
	#f_footer_img{
		padding-bottom: 20px;
		padding-left: 20px;
	}
	#f_footer_text{
		padding-left: 20px;
		width: 60%;
	}
	
	.kosmch{
		display: inline;
	}
	
	#f_footer_logo{
		float: right;
		width: 280px;
		text-align: right;
		margin-bottom: 10px;
	}
	
	#f_footer_text{
		float: left;
		width: 50%;
	}
	
	#f_smalltown{
			width: 14%;
			position: relative;
			top: 15px;
		}
		
		#f_koita{
			width: 10%;
			position: relative;
			right: 5px;
		}
		
		#f_changup{
			width: 50%;
		}
		
	@media(max-width:715px){
		#f_img img{
				width: 20%;
		}
		
		#f_fotter_top{
			padding-top: 0;
		}
		
		#f_footer{
			height: 285px;
			padding-top: 5px;
			background-color: #F5F5F5;
		}
		
		#f_footer_text{
			border: 2px solid puple;
			width: auto;
		}
		
		#f_footer_img{
			padding-bottom: 5px;
		}
	}
	
	@media(max-width: 811px){
		#f_footer_in{
			padding-top: 20px;
		}
	}
	#f_footer_text{
		float: left;
	}
</style>
</head>
<body>
 <div id="f_footer">
 	<div id="f_fotter_top">
 		<div id="f_footer_in">
	 		<div id="f_footer_img">
	 			<a id="f_img">
	 				<img src="resources/images/Black_on_Transparent-removebg-preview (1).png" style="width: 137px;"/>
	 			</a>
	 		</div>
	 		<div id="f_footer_textandlogo">
	 			
 				<div id="f_footer_logo">
			 			<div id="f_koita" class="kosmch">
			 				<img src="resources/images/koita.png" style="width: 76.7px; height:59.61px; position: relative; right: 5px; top: 10px;" id="f_koita"/>
			 			</div>
			 			<div id="f_small" class="kosmch">
			 				<img  src="resources/images/중소_벤처_기업부.png" style="width: 100px; height:90px; position: relative; top:0px;" id="f_smalltown"/>
			 			</div>
			 			<div id="f_changup" class="kosmch">
			 				<img src="resources/images/창업_진흥원.png" style="width: 76.7px; height:59.61px; position: relative; top: 15px;" id="f_changup"/>
			 			</div>
		 		</div>
		 		<div id="f_footer_text">
					<p>
						<span class="footer_info">
							범 코리아 |
						</span>
						<span class="footer_info">
							대표: 범명윤 |
						</span>
						<span class="footer_info">
							사업자등록번호: 193-08-01520
						</span>
					</p>
		 			<p>
		 				<span class="footer_info">
		 					사업자 주소 : 서울시 금천구 가산디지털1로 196, 1206호 |
		 				</span>
		 				<span class="footer_info">
		 					전화번호: 070-7918-0627 |
		 				</span>
		 				<span class="footer_info">
		 					FAX 번호 : 02-6312-9627
		 				</span>
		 			</p>
		 			<p>
		 				<span class="footer_info">
		 					전자우편: info@berhmkorea.com
		 				</span>
		 			</p>
		 		</div>
	 		</div>
 		</div>
 	</div>
 </div>
</body>
</html>