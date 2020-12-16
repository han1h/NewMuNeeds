<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MuNeeds | 실버타운,요양원</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<style type="text/css">
	a, abbr, acronym, address, applet, b, big, blockquote, body, button, caption, center, cite, code, dd, del, dfn, div, dl, dt, em, fieldset, font, footer, form, h1, h2, h3, h4, h5, h6, header, html, i, iframe, img, ins, kbd,  legend, li, nav, object, ol, p, pre, q, s, samp, section, small, span, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, title, tr, tt, u, ul, var, wix-iframe {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: 0 0;
	  }
	  
	  body{
	  		height: 100%;
	  }
	  
	  /*실버타운 요양원 버튼이 있는 div*/
	  #integrated{
	  			margin-top: 100px;
	  }
	  
	  /*실버타운 지명이름*/
	  .integrated_title{
	  		color: black;
	  }
	  
	  /*실버타운 내용이 적혀 있는 곳*/
	  .integrated_text{
	  		color: black;
	  		padding-right: 20px;
	  }
	  
	   /*실버타운,요양원의 지역으로 묶어서 있는 곳*/
	  .total_integrated{
	  		margin-left: 100px;
		    margin-right: 100px;
		    margin-top: 50px;
	  }
	  
	   /*실버타운,요양원의 사진 있는 곳*/
	  .i_imgs{
	  		float: left;
	  		width: 50%; 
	  		padding-top: 50px;
	  		padding-left: 50px;
	  }
	  
	   /*실버타운,요양원의 정보 있는 곳*/
	  .i_text{
	  		float: right;
	  		width: 50%; 
	  		padding-top: 50px;
	  }
	  
	  /*실버타운,요양원의 사진과 정보 있는 곳*/
	  li{
	  		display: inline-block;
	  }
	  
	  /*실버타운 요양원 버튼 누르는 곳*/
	  #sliver{
	  	    margin-left: 90px;
	  }
	  
	  /*임시 지역 버튼*/
	  .area_btn{
	  		padding-left: 90px;
   			padding-top: 30px;
	  }
	  
	  /*모든 정보 틀*/
	  #total{
	  		margin-left: 100px;
		    margin-right: 100px;
		    margin-top: 50px;
		    width: 1400px;
	  }
	  
	  /*하단*/
	  #main_footer{
			border-top:1px solid #e8e8e8;
			position: relative;
			top: 80px;
		}
		
		/*바디*/
		#total_body{
			height: auto;
			min-height: 600px;
			padding-top: 10px;
			width: 988px;
			margin: 0 100px;
		}
		
		#total_body:after{
			content: "";
			display: block;
			clear: both;
		}
		
		.pop_zone_map{
			width: 100%;
			height: auto;
			padding: 40px 0;
			overflow: hidden;
		}
		
		.zone_map{
			position: relative;
			width: 600px;
			padding: 26px 40px;
			padding-left: 250px;
		}
		
		.pop_map{
			float: left;
		}
		
		.regional_map{
			width: auto;
			padding: 20px 0;
		} 
		
		img{
			border: 0;
			vertical-align: top;
		}
		
		map{
			display: inline;
		}
		
		area:-webkit-any-link{
			cursor: pointer;
		}
		
		area {
			display: inline;
		}
		
		form{
			list-style-image: none;
			list-style-position: outside;
			list-style-type: none;
			border: 0;
			margin: 0;
			padding: 0;
		}
		
		.integrated_btn{
			width: 100%;
			border: 1px solid black;
			color: #666;
			font-weight: bold;
			padding: 11px 15px 8px 5px;
   			letter-spacing: -1px;
   			position: relative;
   			margin-right: 15px;
   			width: 150px;
   			float: left;
		}
		
		#integrated_btn{
			width: 150px;
		}
		
		.integrated_btn:hover {
			text-decoration: none;
			cursor: pointer;
			color: Orange;
		}
		
		.cat_name_main{
			font-family: "Malgun Gothic", "맑은 고딕" , dotum, "돋움", gulim, "굴림", Arial, sans-serif;
			letter-spacing: -1px;
			font-size: 14px;
			color: Orange;
			line-height: 22px;
			font-weight: bold;
			margin: 0 0 5px 0;
			text-align: center;
		}
		
		.zidow{
			width: 80%;
		}
		
		#nursing_town{
			
		}
</style>
</head>
<body>
		<div id="h_total">
		      <div class="mc1inlineContent">
		         <jsp:include page="realmenu.jsp"/>
		      </div>
	   </div>
		<div id="total_body">
			<!-- 버튼 선택 -->
			<div id="integrated_btn">
					<div id="integrated">
							<div>
								<h3 class="cat_name_main">실버타운/요양원</h3>
							</div>
							<a id="sliver_btn" class="integrated_btn">실버타운</a>
							<a id="nursing_btn" class="integrated_btn">요양원</a>
					</div>
			</div>
			<div id="class_info_jido" class="zidow">
				<div style="display: none;">
					<h3 class="cat_name_main" style="margin-top: -30px; margin-left: -300px;">지도를 선택하세요</h3>
				</div>
				<!-- 요양원 지도 나오게 -->
				<div class="zone_map pop_zone_map" id="nursing_town" style="display: none;">
					<div class="regional_map pop_map">
						<img alt="요양원 전국지도" src="resources/images/nursing_Map/map1.png" usemap="#nursingtown" name="nursingtownmap" id="nursingtownmap" style="position: relative; left: 40px;"/>
						<map name="nursingtown" id="nursingtown">
							<area alt="요양원 서울" shape="poly"  coords="84,68,93,79,87,90,71,85,76,74" onclick="javascript:nursing('0200');" >
							<area alt="요양원 인천" shape="poly"  coords="40,56,49,60,52,80,61,75,69,83,61,94,52,90,41,92,23,71,31,60" onclick="javascript:nursing('0400');" >
							<area alt="요양원 경기" shape="poly"  coords="88,20,100,31,122,50,118,66,138,82,135,111,104,135,90,131,71,135,56,113,71,89,90,92,97,80,85,66,70,79,60,73,51,78" onclick="javascript:nursing('0300');" >
							<area alt="요양원 강원" shape="poly"  coords="183,0,195,32,244,98,246,112,235,122,197,122,170,107,138,116,140,82,120,64,125,51,95,21,151,20" onclick="javascript:nursing('0100');" >
							<area alt="요양원 충남" shape="poly" coords="42,123,71,136,106,140,113,149,102,153,109,171,101,190,114,200,123,196,126,217,102,207,91,213,83,201,63,217,47,197,51,188,34,159,25,159,21,145" onclick="javascript:nursing('1100');" >
							<area alt="요양원 충북" shape="poly" coords="193,124,181,138,142,163,145,172,144,187,157,195,148,214,139,215,128,208,124,194,121,175,114,147,107,136,135,117,147,118,153,107,158,113,172,109" onclick="javascript:nursing('1000');" >
							<area alt="요양원 대전" shape="poly" coords="111,175,122,183,117,195,104,194,104,181,113,176" onclick="javascript:nursing('0500');" >
							<area alt="요양원 경북" shape="poly" coords="195,126,238,123,248,113,258,160,249,198,258,211,265,206,259,243,237,241,221,244,213,255,194,245,202,242,210,226,201,215,180,224,184,239,177,248,169,247,168,235,147,225,158,196,146,188,145,164,194,126" onclick="javascript:nursing('1400');" >
							<area alt="요양원 경남" shape="poly" coords="145,228,168,238,172,250,192,249,213,256,225,246,226,257,241,269,213,293,201,292,188,301,200,308,208,323,201,331,171,320,154,320,154,330,144,321,126,277,132,267,131,237" onclick="javascript:nursing('1500');" >
							<area alt="요양원 전북" shape="poly" coords="49,218,70,219,81,203,90,216,105,208,118,220,138,216,145,224,125,254,130,267,123,275,92,276,70,262,52,275,42,261,56,234" onclick="javascript:nursing('1200');" >
							<area alt="요양원 전남" shape="poly" coords="124,277,142,327,121,351,75,368,30,360,7,378,2,364,14,344,5,339,19,304,11,292,27,290,42,268,56,282,68,302,85,293,76,283,57,278,71,263,102,277" onclick="javascript:nursing('1300');" >
							<area alt="요양원 광주" shape="poly" coords="62,283,79,286,80,297,66,299,58,289" onclick="javascript:nursing('0700');" >
							<area alt="요양원 대구" shape="poly" coords="203,216,208,228,201,241,180,247" onclick="javascript:nursing('0600');" >
							<area alt="요양원 부산" shape="poly" coords="242,273,244,284,213,302,197,306,191,301,202,294,213,296,229,277" onclick="javascript:nursing('0900');" >
							<area alt="요양원 제주" shape="poly" coords="206,365,248,370,252,382,236,395,187,397,178,399,166,384,192,368" onclick="javascript:nursing('1600');" >
							<area alt="요양원 울산" shape="poly" coords="259,246,258,260,250,274,240,266,228,258,236,241,248,245" onclick="javascript:nursing('0800');" >
						</map>
					</div>
				</div>
				
				<!-- 실버타운 지도 나오게 -->
				<div class="zone_map pop_zone_map" id="sliverTown" style="display: none;">
					<div class="regional_map pop_map">
						<img alt="실버타운전국지도" src="resources/images/sliver_Map/map1.png" usemap="#Map" name="cityMap" id="baseMap1" style="position: relative; left: 40px;"/>
						<map name="Map" id="Map">
							<area alt="서울" shape="poly" href="#" coords="84,68,93,79,87,90,71,85,76,74" onclick="javascript:mapclick('0201'); return false;" >
							<area alt="인천" shape="poly" href="#" coords="40,56,49,60,52,80,61,75,69,83,61,94,52,90,41,92,23,71,31,60" onclick="javascript:mapclick('0401'); return false;" >
							<area alt="경기" shape="poly" href="#" coords="88,20,100,31,122,50,118,66,138,82,135,111,104,135,90,131,71,135,56,113,71,89,90,92,97,80,85,66,70,79,60,73,51,78" onclick="javascript:mapclick('0301'); return false;" >
							<area alt="강원" shape="poly" href="#" coords="183,0,195,32,244,98,246,112,235,122,197,122,170,107,138,116,140,82,120,64,125,51,95,21,151,20" onclick="javascript:mapclick('0101'); return false;" >
							<area alt="충남" shape="poly" href="#" coords="42,123,71,136,106,140,113,149,102,153,109,171,101,190,114,200,123,196,126,217,102,207,91,213,83,201,63,217,47,197,51,188,34,159,25,159,21,145" onclick="javascript:mapclick('1101'); return false;" >
							<area alt="충북" shape="poly" href="#" coords="193,124,181,138,142,163,145,172,144,187,157,195,148,214,139,215,128,208,124,194,121,175,114,147,107,136,135,117,147,118,153,107,158,113,172,109" onclick="javascript:mapclick('1001'); return false;" >
							<area alt="대전" shape="poly" href="#" coords="111,175,122,183,117,195,104,194,104,181,113,176" onclick="javascript:mapclick('0501'); return false;" >
							<area alt="경북" shape="poly" href="#" coords="195,126,238,123,248,113,258,160,249,198,258,211,265,206,259,243,237,241,221,244,213,255,194,245,202,242,210,226,201,215,180,224,184,239,177,248,169,247,168,235,147,225,158,196,146,188,145,164,194,126" onclick="javascript:mapclick('1401'); return false;" >
							<area alt="경남" shape="poly" href="#" coords="145,228,168,238,172,250,192,249,213,256,225,246,226,257,241,269,213,293,201,292,188,301,200,308,208,323,201,331,171,320,154,320,154,330,144,321,126,277,132,267,131,237" onclick="javascript:mapclick('1501'); return false;" >
							<area alt="전북" shape="poly" href="#" coords="49,218,70,219,81,203,90,216,105,208,118,220,138,216,145,224,125,254,130,267,123,275,92,276,70,262,52,275,42,261,56,234" onclick="javascript:mapclick('1201'); return false;" >
							<area alt="전남" shape="poly" href="#" coords="124,277,142,327,121,351,75,368,30,360,7,378,2,364,14,344,5,339,19,304,11,292,27,290,42,268,56,282,68,302,85,293,76,283,57,278,71,263,102,277" onclick="javascript:mapclick('1301'); return false;" >
							<area alt="광주" shape="poly" href="#" coords="62,283,79,286,80,297,66,299,58,289" onclick="javascript:mapclick('0701'); return false;" >
							<area alt="대구" shape="poly" href="#" coords="203,216,208,228,201,241,180,247" onclick="javascript:mapclick('0601'); return false;" >
							<area alt="부산" shape="poly" href="#" coords="242,273,244,284,213,302,197,306,191,301,202,294,213,296,229,277" onclick="javascript:mapclick('0901'); return false;" >
							<area alt="제주" shape="poly" href="#" coords="206,365,248,370,252,382,236,395,187,397,178,399,166,384,192,368" onclick="javascript:mapclick('1601'); return false;" >
							<area alt="울산" shape="poly" href="#" coords="259,246,258,260,250,274,240,266,228,258,236,241,248,245" onclick="javascript:mapclick('0801'); return false;" >
						</map>
					</div>
				</div>
				
				<!-- 정보 나오게 -->
				<div id="total">
					<!-- 서울 정보 -->
					<div id="seoul" class="total_integrated">
							<!-- 서울 실버타운 -->
							<div id="seoul_sliver"  style="display: none;">
									<ul id="s_sliver_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" src="resources/images/picture/도봉실버센터.png" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">도봉실버센터</label>
													<label class="integrated_text">
															도봉실버센터는 '세계 최고의 요양서비스를 제공하는 기관'을 비전으로 투명하고 정직한 운영과 서로 돌봄 공체를 실현하는데 앞장설 것을 약속합니다.
															또한 고품격 전문케어를 완성하여 도봉실버센터와 도봉실버데이케어센터를 이용하시는 어르신과 보호자님,지역사회단체 기관장님, 도봉구민 여러분과 함께
															백세시대 도봉을 이끌어갈 센터로 성장할 수 있도록 최선을 다하겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" src="resources/images/picture/청운실버센터.jpg" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">청운실버센터</label>
													<label class="integrated_text">
															어르신들이 내집처럼 편히 쉴 수 있도록 가정적인 분위기를 조성하고,쾌적하며 안전한 환경시설을 갖추고,신체적·정서적으로 안정된 생활을 유지하기 위하여
															일상생활,간호,재활,상담,프로그램진행등 어르신 중심의 케어와 포괄적인 서비스를 제공합니다.
													</label>
												</div>	
											</div>
										</li>
									</ul>
							</div>
							<!-- 서울 요양원 -->
							<div id="seoul_nursing"  style="display: none;">
									<ul id="s_nursing_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" src="resources/images/sliver/noursing/신월실버.jfif" alt="신월실버타운" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">신월실버요양원</label>
													<label class="integrated_text">
															바쁜 일상 속에 있는 자녀들이지만 출,퇴근 시 언제든 자연스럽게 들릴 수 있습니다. 어르신들을 자녀와 떨어져 지내신다는
															불안감을 덜 수 있고 자주 들릴 수 있는 자녀들도 부모님을 자주 볼 수 있다는 위안을 삼고 가벼운 마음으로 맡기실 수 있을 겁니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
										<div>
												<div class="i_imgs">
													<input type="image" src="" alt="실버캐슬요양타운" style="height: 300px; width: 300px;" />
												</div>
												<div class="i_text">	
													<label class="integrated_title">실버캐슬요양타운</label>
													<label class="integrated_text">
															우리 실버캐슬요양타운은 이시대의 진정한 효가 무엇인지 그리고 어르신과 그 가족들의 진정한 복지가 무엇인지를 다시 한번 생각해 보며
															노인성 질환 및 노인 복지 등 각 분야의 전문가들의 전문적인 개입을 통해 건강하고 안정된 노후 생활 실현의 장이 되어드리고자 항시
															초선을 다해 노력해 왔으며 앞으로도 더욱 노력 할 것을 약속드리겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="구립한남노인요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">구립한남노인요양원</label>
													<label class="integrated_text">
															내 가족,부모님이라는 마음을 가지고 항상 먼저 다가가서 보살피고 섬기며 매일 어르신들의 얼굴에 웃음꽃이 필 수 있게 하자는 목표로
															어르신들의 노후가 즐겁고 편안할 수 있도록 노력하겠습니다. 감사합니다.
													</label>
												</div>
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="다애요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">다애 요양원</label>
													<label class="integrated_text">
															고령이나 노인성 질병 등의 사유로 일상생활을 혼자서 수행하기 어려운 어르신들께 신체 활동 또는 가사활동 지원등의 장기요양급여를
															제공하여 노후의 건강증진 및 생활안정을 도모하고 가족의 부담을 덜어줌으로써 삶의 질 향상을 목적으로 시행하는 사회 보험제도를 
															기반으로 하고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
													<div class="i_imgs">
														<input type="image" alt="대한연세요양원" style="height: 300px; width: 300px;"/>
													</div>
													<div class="i_text">
														<label class="integrated_title">대한연세요양원</label>
														<label class="integrated_text">
																대한연세요양원은 최상의 엘리트로 구성된 직원들이 전문적이고 체계적인 간호,재활,수발,여가서비스,복지프로그램등을 제공하기
																위해 설립하였으며 개별진단(Assesment)을 통해 전문적인 의료복지서비스를 제공하고자 합니다.
														</label>
													</div>
												</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="청암노인요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">청암노인요양원</label>
													<label class="integrated_text">
															최근 급격한 고령사회 진행과정에서도 도출되는 노인복지분야의 사회적 관심과 저희시설이 조금이나마 충족시켜
															줄 수 있도록 더욱 개선, 발전시켜 나가고자 노력하겠습니다.
													</label>
												</div>
											</div>
										</li>
									</ul>
							</div>
					</div>
					<!-- 경기 정보 -->
					<div id="Gyeonggi" class="total_integrated" >
							<!-- 경기 실버타운 -->
							<div id="Gyeonggi_sliver"  style="display: none;">
									<ul id="gg_sliver_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="유당마을" src="resources/images/picture/유당마을.png" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">유당마을</label>
													<label class="integrated_text">
															본 법인의 목적인 노인 복지사업에 더욱 정진하고자 신관 158세대를 증축함으로써 신관,본관,케어홈등으로 차별화된 시스템이 구축되어 이제부터는 건강상태에 따라
															단계별로 어르신을 모실 수 있게 되었습니다. 앞으로도 도심과 줜원의 지리적 장점을 살리고, 오랜 전통의 명성답게 어르신들이 즐겁고 편안하게 지낼 수 있도록 다양한 복지서비스를 제공하고 노력하겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="은혜실버타운" src="resources/images/picture/은혜실버타운.jpg" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">은혜실버타운</label>
													<label class="integrated_text">
															은혜실버타운은 건강하고 품위 있는 노년의 삶을 원하시는 분들을 위해 준비된 도심향 실버하우스입니다. 행복한 노후생활이 가능하도록 건강증진과 생활안정을 유지하고, 각종 문화 여가활동을 통해
															더욱 품위 있는 노년생활을 누리실 수 있게 도와드립니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="늘푸른실버타운" src="resources/images/picture/늘푸른실버타운.jpg" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">늘푸른실버타운</label>
													<label class="integrated_text">
															늘푸른 실버타운은 어르신들의 편안하고 행복한 일상과 건강하고 활기찬 노후를 책임지는 자연친화적 도심형 실버타운입니다. 어르신들을 위한 편리하고 꺠끗한 주거공간 및 아름다운
															자연환경을 통해 더 나은 건강과 심적 안정을 제공합니다. 도심과 멀지 않은 거리에 있어 문화 여가 서비스를 즐기시기에 요이합니다. 늘푸른 실버타운의 모든직원들은 어르신들을 위한
															한결 같은 마음가짐으로 최선의 서비스를 제공하며, 정직한 운영을 통해 실버타운의 새로운 기준이 되겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="의왕VIP 실버타운" src="resources/images/picture/의왕VIP실버타운.jpg" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">의왕VIP 실버타운</label>
													<label class="integrated_text">
															어르신들의 안락한 삶과 행복은 모두의 기쁨입니다. "섬김에는 지나침이 없다"는 신념으로 어르신들을 최선을 다해 모시겠습니다. 가족 구성원 모두가 어르신의 노후강녕을 소망하십니까?
															그렇다면 "의왕VIP 실버타운"이 책임지겠습니다.
													</label>
												</div>	
											</div>
										</li>
										</ul>
							</div>
							<!-- 경기 요양원 -->
							<div id="Gyeonggi_nursing"  style="display: none;">
									<ul id="gg_nursing_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="경희요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">경희요양원</label>
													<label class="integrated_text">
															치매 및 노인성질환으로 요양이 필요하신 어르신께 가족을 대신하여 24시간 안전하고 안락한 생활공간을 제공하고, 내 집처럼 편안한 생활을 할 수 있도록
															정성을 다하겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="수원시립노인전문요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">수원시립노인전문요양원</label>
													<label class="integrated_text">
															어르신과 직원 모두가 "사람대접"이라는 가치를 최고의 가치 기준으로 삼고 "공기의 질"을 최우선으로 하는 쾌적한 환경을 조성하고 어르신에게는
															무시하거나 함부로 하지 않으며 친절한 태도와 언행으로 존중받는 느낌을 주는 시설을 지향하고 제공되는 요양서비스는 개별사례관리로 맞춤 서비스를 지향하는 시설입니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="일산온누리요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">일산온누리요양원</label>
													<label class="integrated_text">
															우리의 부모님들은 오늘날 우리의 삶이 있기 까지 많은 희생과 수고를 아끼지 않으신 훌륭한 분들입니다. 이제 고령으로 인해 치매,중풍,뇌졸중등 노인성 질환으로 일상생활이
															어려워진 부모님께 노후생활을 보다 편안하게 보내실 수 있도록 보살펴드리기를 소망하는 마음으로 본 요양원을 개원하게 되었습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="구성노인전문요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">구성노인전문요양원</label>
													<label class="integrated_text">
															저희 요양원에는 전문성과 풍부한 경험을 겸비한 간호사, 사회복지사, 요양보호사 등이 상주하며 어르신들을 모시고 있습니다. 다양한 문화 행사와 프로그램을 통해
															삶의 즐거움과 활력을 드리며 정기적인 의료 케어와 균형잡힌 영양 관리로 보다 건강한 삶을 유지할 수 있도록 돕고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="시화실버타운요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">시화실버타운요양원</label>
													<label class="integrated_text">
															치매,중풍,외상 등 노인성 만성질환으로 거동과 일상생활이 불편하신 어르신을 내 부모처럼 편안하게 24시간 간호, 생활지원 및 각종 서비스를
															제공하여 편안하고 행복하게 생활하실 수 있도록 도와드리겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="사랑나무요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">사랑나무요양원</label>
													<label class="integrated_text">
															사랑나무 요양원은 노령화로 인해 거동이 불편하시면서 가족들의 보살핌이 여의치 않거나 치매,중풍 뇌졸증등 노인성 질환으로 고생하시는 어르신들과 그 가족을 위한 노인전문 요양시설입니다.
													</label>
												</div>	
											</div>
										</li>
									</ul>
							</div>
					</div>
					<!-- 강원도 정보 -->
					<div id="Gangwon" class="total_integrated">
							<!-- 강원도 실버타운 -->
							<div id="Gangwon_sliver"  style="display: none;">
									<ul id="gang_sliver_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="동해실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/동해실버타운.jpg"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">동해실버타운</label>
													<label class="integrated_text">
															고령화되어 가는 사회속에서 노인세대의 활기찬 현실참여를 도와 삶에 건강과 활력이 되고 멀어져가는 경로효친사상과 인간 근본도리를 구현하기 위해
															사회 복지법인 대진복지재단에서는 동해 약천 온천 실버타운을 운영하게 되었습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="태백시실버요양원" style="height: 300px; width: 300px;" src="resources/images/picture/태백시실버요양원.jpg"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">태백시실버요양원</label>
													<label class="integrated_text">
															요양원 이제는 고려장이 아닌 시대적 흐름의 하나라는 생각입니다. 부모님을 요양원에 보낸다고 불효자는 아닙니다. 현대사회에서 어쩔 수 없는 선택이고, 부모닝이 조금이라도 편안하게
															생활 하실 수 있는 하나의 방법입니다. 이래서 우리 요양원은 늘 그래 왔지만 이러한 어르신이 더욱 편안하게 조금이라도 더 건강하게 여생을 보내 실 수 있는 요양원이 되도록 노력할 것입니다.
													</label>
												</div>	
											</div>
										</li>
										</ul>
							</div>
							<!-- 강원도 요양원 -->
							<div id="Gangwon_nursing"  style="display: none;">
									<ul id="gang_nursing_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="월정사노인요양원" style="height: 300px; width: 300px;" src="resources/images/picture/월정사노인전문요양원.jpg"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">월정사노인요양원</label>
													<label class="integrated_text">
															어르신들을 위한 전문적인 의료서비스와 프로그램을 제공하고 있으며, 지역 주민의 자유로운 이용을 통해 인식개선과 사회통합을 위해 노력하고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="아름다운 노인요양원" style="height: 300px; width: 300px;" src="resources/images/picture/아름다운 노인 요양원.jfif"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">아름다운 노인요양원</label>
													<label class="integrated_text">
															아름다운 노인요양원은 사회복지법인에서 운영하는 비영리 기관으로 산 좋고 물 맑고 공기 좋은 강원도 횡성군 갑천면 어답산 자락 아래 위치하고 있습니다.
															경관이 아름다운 환경에서 고령화 시대에 노인성질환으로 고생하시는 어르신들의 편안한 노후와 보호자들의 돌봄 스트레스 경감을 위해 노력하고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="철원군 노인전문 요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">철원군 노인전문 요양원</label>
													<label class="integrated_text">
															사회복지법인 철원군사회복지협의회는 지역사회발전과 더불어 지역사회 복지문제 해결과 행복한 지역사회 만들기에 앞장 서 왔던
															그 동안 노력과 경험을 거울삼아 어르신들이 평안하고 안전한 노후 생활을 영위하는데 일익을 담당하는 주체로서 최선을 다하겠습니다.
													</label>
												</div>	
											</div>	
										</li>
										</ul>
							</div>
					</div>
					<!-- 인천 정보 -->
					<div id="Incheon" class="total_integrated" >
							<!-- 인천 실버타운 -->
							<div id="Incheon_sliver"  style="display: none;">
									<ul id="in_sliver_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="백향그린실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/백향그린실버타운.jpg"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">백향그린실버타운</label>
													<label class="integrated_text">
															모든 사람은 인간으로서의 존엄성이 보장되고 그 가치가 존중되었을 때 누구나 행복을 느낄 수 있습니다. 백향 그린실버타운은 사회복지 사업을 통해
															현대 산업사회의 급속한 발전으로 인하여 소외된 이웃과 모든 인간의 존엄성을 보장하고 참된 행복의 가치를 실현하고자 합니다.
													</label>
												</div>	
											</div>
										</li>
										</ul>
							</div>
							<!-- 인천 요양원 -->
							<div id="Incheon_nursing"  style="display: none;">
									<ul id="in_nursing_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="봄날요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">봄날요양원</label>
													<label class="integrated_text">
															저희 봄날 요양원은 전문적인 의료진과 현대적인 시설을 갖추고 있으며 중풍, 치매,고혈압,암,관절염,당뇨등 만성 노인성질환등으로
															고생하시는 어르신들을 모시고자 합니다. 
													</label>
												</div>	
											</div>	
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="인천은혜요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">인천은혜요양원</label>
													<label class="integrated_text">
															본 사회복지법인 기독교 대한감리회 사회복지재단 인천은혜 요양원은 치매,중풍 여성 어르신을 모시고 의료 재활서비스, 사회재활서비스등 각종 서비스등 각종 서비스를
															실시하며 어르신들의 꽃보다 향기로운 노후를 위한 노인전문요양시설입니다. 
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="계양 노인 전문요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">계양 노인 전문요양원</label>
													<label class="integrated_text">
															거동이 불편한 어르신들에게 가장 필요한 것은 가족의 관심과 애정 어린 보살핌일 것입니다. 비록 저희들이 혈연으로 이루어진 가족은 아니지만 계양노인전문요양원이라는 울타리 안에서
															함께 생활하는 가족이라는 마음가짐으로, 어르신 한분 한분을 내 부모님처럼 소중히 여기며, 어르신들이 저희 요양원을 내 집처럼 편안하게 느끼시며 생활하실 수 있도록 최선의 노력을 다하고 있습니다.
															
													</label>
												</div>	
											</div>	
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="인천신생요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">인천신생요양원</label>
													<label class="integrated_text">
															인천신생요양원은 사회적 이슈인 고령화 문제 중 하나인 만성적인 노인성질환등을 앓고 계시면서 가족을 떠나 요양시설을 이용할 수 밖에 없으신
															어르신들을 위해 '내집처럼 아늑하고 편안한 생활'을 하실 수 있도록 최선을 다해 노력하겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="만수노인요양센터" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">만수노인요양센터</label>
													<label class="integrated_text">
															어르신과 저희 직원 모두 "사랑"을 최고의 가치 기준으로 삼고,항상 배우고 마음을 열어 어르신을 공경하는 신앙의 자세로 모시고 있습니다.
															어르신을 무시하지 않고 함부로 하지 않고 친절한 태도와 언행으로 서로 존중받는 시설을 지향하고 있으며, 어르신에게 제공되는 서비스는 어르신 개별 잔존능력에 맞춘 질 높은 서비스를 제공합니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
										<div>
												<div class="i_imgs">
													<input type="image" alt="금곡노인요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">금곡노인요양원</label>
													<label class="integrated_text">
															금곡노인요양원은 예수 그리스도의 사랑으로 풍성한 생명력을 나타내는 큰 나무처럼 어르신들에게 편히 쉬어갈 수 있는 노인요양시설입니다.
															우리 주변에는 각종 노인성 질환, 특히 치매 중풍으로 고생하는 어르신들을 쉽게 볼 수 있습니다. 그러나 전문지식이 없는 보호자가 집에서 부모님을 모시면서
															나중에는 보호자와 그 가족들마저 어려움이 더 가중되는 경우가 발생하고 있습니다.
													</label>
												</div>	
											</div>
										</li>
									</ul>
							</div>
					</div>
					<!-- 충청북도 정보 -->
					<div id="Chungcheong_north" class="total_integrated">
						<!-- 충청북도 실버타운 -->
						<div id="Chungcheong_north_sliver" style="display: none;">
							<ul id="chn_sliver_information">
								<li>
									
								</li>
							</ul>
						</div>
						
						<!-- 충청북도 요양원 -->
						<div id="Chungcheong_north_nursing" style="display: none;">
							<ul id="chn_nursing_information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">골든 청주요양원</label>
											<label class="integrated_text">
													저희 골든청주요양원은 넓은 복도와 중앙집중식 냉난방시스템 등을 갖춘 생활침실, 물리치료실 프로그램실에 어르신 개인별침대,
													옷장,폰콜 호출시스템 등이 설비 되어있는 내 집처럼 쾌적한 요양원입니다. 또한 청주시내 분평사거리에 위치하고 있어 가족분들이 출,퇴근길에
													편리하게 부모님들을 찾아뵐 수 있는 편리한 교통, 내집처럼 편안한 우리동네 맞춤형 요양원입니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">증평노인전문요양원</label>
											<label class="integrated_text">
												   저희 직원들은 어르신들이 편안한 노후를 영위하실 수 있도록 최선을 다하고 있습니다. 어르신들의 개별 특성을 인정하며 개인의 잔존 능력을
												   유지하고 인지 기능을 향상시킬 수 있는 환경 조성을 위해 노력하고 있습니다. 저희 증평노인전문요양원은 노인성 질환으로 돌봄이 필요한 어르신과 가족을
												   위해 활짝 문을 열고 기다리겠습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">서청주 노인전문요양원</label>
											<label class="integrated_text">
													쾌적하고 아름다운 환경에서 어르신들께 각종 여가, 교육, 문화, 건강관리 서비스를 맞춤 형식으로 제공하여
													드림으로써 삶을 영위하실 수 있도록 적절한 요양보호와 안락한 노후 생활을 보장하는데 있습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 충청남도 정보 -->
					<div id="Chungcheong_south" class="total_integrated">
						<!-- 충청남도 실버타운 -->
						<div id="Chungcheong_south_sliver" style="display: none;">
							<ul id="chs_sliver_information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="천안실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/천안실버타운.jpg"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">천안실버타운</label>
											<label class="integrated_text">
													저희 천안실버타운은 장기요양 등급을 받지 못한분이나 자녀들의 직장생활 또는 이민 여행등,,, 가정형편으로 인하여, 부모님 혼자 집에 모시기는 불안하고,
													옆에서 항상 돌봐드리지 못하는 분들을, 집과 같이 안락하고 편안한 마음으로 지낼실 수 있도록 정성을 다하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="동산실버타운" style="height: 300px; width: 300px;" />
										</div>
										<div class="i_text">	
											<label class="integrated_title">동산실버타운</label>
											<label class="integrated_text">
													고령화사회로 접어든 이 시대는 산업화 도시화 핵가족화가 진행됨에 따라 노인문제가 심각한 사회문제로 대두되고 있습니다.
													우리 동산실버타운은 신체적,정신적으로 만성질환을 가지신 어르신을 돌보기 위하여 의료 간호 재활에 관한 전문 인력과 시설을 준비하여
													어르신들을 24시간 내 부모와 같이 편안하게 정성껏 모시고자 합니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
						
						<!-- 충청남도 요양원 -->
						<div id="Chungcheong_south_nursing" style="display: none;">
							<ul id="chn_nursing_information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">할멘신망애 요양원</label>
											<label class="integrated_text">
													할멘신망애요양원은 노령화로 인해 거등이 불편하시면서 가족들의 보살핌의 여의치 않거나 치매,중풍,뇌졸증 등 노인성
													질환으로 고생하시는 어르신과 그 가족들을 위한 노인전문 요양시설입니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">예산군 노인요양원</label>
											<label class="integrated_text">
													예산군 노인요양원은 치매,중풍 등 여러가지 노환으로 힘들게 생활하고 계시는 어르신들께 편안한 일상생활을 제공해드리고
													또 그 가족들이 집에서 어르신들을 수발해야하는 어려움을 덜어드리고자 예산군에서 시설을 건축하고 사회복지법인 예산기독교연합복지재단에서 수탁받아 운영하고 있는 요양원입니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">장수원 요양원</label>
											<label class="integrated_text">
													시대의 흐름에 따라 어르신들의 특성상 각종 질환과 보건복지욕구를 종합적으로 평가하여 포괄적서비스를 적절히 제공하고 지속적 건강관리를
													이루기 위한 장기요양보호제도와 발 맞추어 의료복지서비스를 제공하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;">
										</div>
										<div class="i_text">	
											<label class="integrated_title">쌘뽈요양원</label>
											<label class="integrated_text">
													앞으로도 더욱 어르신들의 케어,향기를 나누고 사랑을 실천하는 시설이 되겠습니다. 그래서 쌘뽈의 향기가 이웃에게도 행복으로 전해지면 참 좋겠습니다.
													어르신들의 편안하고 행복한 미소를 위해서 오늘도 오감을 이용해 어르신들을 섬기는 전직원이 되겠습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 전북 정보 -->
					<div id="jeonlado_north" class="total_integrated">
						<!-- 전북 실버타운 -->
						<div id="jeonlado_north_sliver" style="display: none;">
							<ul id="jno_sliver_Information">
								<li>
									
								</li>
							</ul>
						</div>
						<!-- 전북 요양원 -->
						<div id="jeonlado_north_nursing" style="display: none;">
							<ul id="jno_nursing_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">전주요양원</label>
											<label class="integrated_text">
													일생동안 저희에게 배풀어 주신 은혜를 보답하고자 합니다. 지리적으로는 건지산 오송제 자락에 자리 잡고 있어서
													어르신들에게 맑고 쾌적함과 자연친화적인 분위기를 느낄 수 있으며 어르신 개인의 인간 중심으로 가치 있는 삶이 실현 될 수 있도록
													최선을 다할 것입니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">신광요양원</label>
											<label class="integrated_text">
													신광복지재단 산하기관으로 기독교 정신에 입각하여 고령이나 노인성 질병 등의 사윯 일상생활을 혼자서 수행하기 어려운 어르신들께 섬김을 드리고자 합니다.
													어르신들께서 편안하게 생활하실 수 있도록 쾌적한 환경을 유지하고 일상생활 지원,간호, 재활, 프로그램과 같은 다양한 맞춤형 요양서비스를 제공하여 어르신의 건강한 
													노후와 영성 생활을 지원하겠습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">예은 노인요양원</label>
											<label class="integrated_text">
													예은노인요양원은 변함없는 사랑과 봉사의 정신으로 어르신들을 내 부모님과 같이 모시도록 노력하겠습니다.
													항상 저희들을 사랑과 관심의 눈길로 지켜봐 주시고 보다 나은 요양원을 만들어 갈 수 있도록 아낌없는 조언을 부탁드립니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 광주 정보 -->
					<div id="kwangju" class="total_integrated">
						<!-- 광주 실버타운 -->
						<div id="kwangju_sliver" style="display: none;">
							<ul id="kwangju_sliver_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;" src="resources/images/picture/사랑나눔실버타운.jfif"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">사랑나눔실버타운</label>
											<label class="integrated_text">
													사랑나눔실버타운은 주간보호 및 방문요양 전문기관으로 전문 인력이 체계적이고 헌신적으로
													봉사하고 보살핌으로 어르신들에게 더 나은 삶을 추구하는 사회 복지 시설입니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
						<!-- 광주 요양원 -->
						<div id="kwangju_nursing" style="display: none;">
							<ul id="kwangju_nursing_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">소망이 넘치는 요양원</label>
											<label class="integrated_text">
													자녀들 뒷바라지에 평생을 바치시고 이제는 연세 드셔 몸도 불편하시고 외로우신 우리 부모님을 아침 햇살처럼 밝은 소망이
													넘치는 요양원에서 소망을 향하여 천사와 같은 따스한 마음으로 어르신들을 지속적인 봉사와 요양서비스를 정성껏 돌봐드리고자
													고개 숙여 인사 올리며 항상 가정에 하나님의 축복과 성령님이 함께 하시기를 진심으로 기원합니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">성요셉요양원</label>
											<label class="integrated_text">
													성요셉 요양원 공동채는 우리가 섬기는 어르신들이 각자가 사랑을 받고 있다고 느낄 수 있도록 편안한 안식처를 마련해 드리고
													존경 받고 있음을 느낄 수 있도록 어르신 스스로에게 자존감을 높여 드리며 희망적이고 긍정적인 삶이 되도록 도움을 드리고자 합니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">효사랑 중월의집</label>
											<label class="integrated_text">
													효사랑 주월의 집은 광주 남구 대표 노인복지센터로써 방문요양과 주간보호 서비스를 제공하고 있습니다. 어르신들의 평안과 행복을
													최고 가치로 추구하며 여러분의 신뢰와 지지를 원동력 삼아 운영하고 있습니다. 저를 포함하여 모든 직원들이 매일매일 어르신들의
													몸과 마음의 건강을 살피며 부족함 없는 서비스를 제공하기 위해 노력합니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 전남 정보 -->
					<div id="jeonlado_south" class="total_integrated">
						<!-- 전남 실버타운 -->
						<div id="jeonlado_south_sliver" style="display: none;">
							<ul id="jeonlado_south_sliver_Information">
								<li>
										
								</li>
							</ul>
						</div>
						<!-- 전남 요양원 -->
						<div id="jeonlado_south_nursing" style="display: none;">
							<ul id="jeonlado_south_nursing_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">성덕노인전문요양원</label>
											<label class="integrated_text">
													저희 성덕노인전문요양원은 인정미 넘치는 훈훈한 마음과 그 마음 깊은 곳에서 우러나오는 효성으로 어르신들을 내 부모처럼 공경으로 모시고
													내 가족처럼 사랑으로 함께하며, 육체적 봉양과 마음의 평안함을 제공해 드리고자 최선의 노력을 다하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">여수노인전문요양원</label>
											<label class="integrated_text">
													우리 여수노인전문요양원은 어르신들이 이용하시기에 편리하도록 현대식 시설과 첨담 의료장비를 마련하여
													전문가들의 종합적이고 체계적인 재활서비스와 어르신 중심의 프로그램을 만들어 살맛나는 다양한 욕구를 충족시켜주고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">매니노인전문요양원</label>
											<label class="integrated_text">
													본원은 어르신들의 인권과 안전을 최우선으로 생각하며, 내 집처럼 안락한 생활 공간 안에서 정서적 안정과 편안한 신체수발 서비스, 또한 영성적
													안녕을 위해 모든 메니 가족들은 함께 노력하고 있습니다. 저희와 함께하시는 모든 가족과 방문객들께 사랑과 평화가 함께 하시기를 기원합니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 경상북도 정보 -->
					<div id="Gyeongsang_north" class="total_integrated">
						<!-- 경북 실버타운 -->
						<div id="Gyeongsang_north_sliver" style="display: none;">
							<ul id="gyn_sliver_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="아름다운실버타운" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">아름다운실버타운</label>
											<label class="integrated_text">
													현재 우리나라에는 문화 경제적 발전에 발맞추어 사회복지서비스에 대한 요구와 제도적 정책들도 확대되고 있습니다. 우리 법인도 이러한 지역적 요구와 국가적 정책에 힘입어
													현재 노인요양시설로써 설립하여 어르신들의 편안하고 행복한 노후생활을 위한 서비스를 지원해주고 있으며 지적장애인 생활시설인 베데스다를 통하여
													지적장애인들의 교육과 일상생활, 재활용을 위한 서비스를 제공하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
						<!-- 경북 요양원 -->
						<div id="Gyeongsang_north_nursing" style="display: none;">
							<ul id="gyn_nursing_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="안동유리요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">안동유리요양원</label>
											<label class="integrated_text">
													안동 유리요양원은 노인 장기 요양 보험법에 따른 의료/간호 서비스, 전문 간병인이 24시간 함께 생활하는 간병서비스 심리/정서 관리 서비스, 의사처방에 따른
													영양서비스를 제공하는 노인의료 복지시설입니다. 노인 성질병등의 이유로 혼자 생활하기 어려운 어르신들을 위해 항상 더 나은 삶을 지낼수 있도록 도와드리고 노력하며 어르신들의 
													정신적,신체적 건강 증진을 위하여 노인복지 프로그램, 지역사회 프로그램을 함꼐 실시하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="백송한마음요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">"백송한마음요양원"</label>
											<label class="integrated_text">
													백송한마음 요양원은 고령이나 노인성질환으로 요양을 필요로 하는 어르신께 사회적,의료적,정서적 서비스를 제공함으로써 삶의 가치와 행복을 찾아드리고
													가족원의 수발부담을 경감시켜 밝은 지역사회 발전에 기여하고자 합니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 경상남도 정보 -->
					<div id="Gyeongsang_north" class="total_integrated">
						<!-- 경남 실버타운 -->
						<div id="Gyeongsang_south_sliver" style="display: none;">
							<ul id="gys_sliver_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="산청복음실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/산청복음실버타운.jpg"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">산청복음실버타운</label>
											<label class="integrated_text">
													저희 시설에서는 신체적, 정신적, 노인성 만성질환을 가진 어르신의 건강과 편안한 노후생활을 위하여 전문직 종사자들의 
													간호,재활,의료 생활지원 및 각종 서비스를 제공하는 24시간 제공하는  노인전문의료복지시설로써 따스함을 느끼는 안식처가 될 수 있도록
													내 부모님 처럼, 내집보다 더 편안히 모시겠습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
						<!-- 경남 요양원 -->
						<div id="Gyeongsang_south_nursing" style="display: none;">
							<ul id="gyn_south_Information">
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="의령 요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">의령 요양원</label>
											<label class="integrated_text">
													의령 요양원에서는 어르신들의 다양한 욕구를 수용하고 삶의 질 향상을 위해 요양중에 계신 어르신들에게 인지기능의 잔존능력을
													강화하고 최대화하기 위한 개별 활동 프로그램 및 집단활동 프로그램, 신체재활을 위한 건강증진 프로그램, 정서지지를 위한 여가활동 프로그램
													치료 및 재활을 위한 의료서비스 등 전문적인 복지 서비스를 제공하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="한사랑 요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">"한사랑 요양원"</label>
											<label class="integrated_text">
													우리 한사랑 요양원은 민족의 영산 지리산과 푸른 남해바다 다도해 해상 국립공원을 끼고 섬진강과
													야생논차가 피어나는 녹차의 고장 하동군에 있으며 하동에서도 국가문화제 453호인 하동읍성 인근 고전면에 있습니다.
													천정시스템 냉난방을 설치하여 쾌적하고 아늑한 노인복지전문시설로서 30여명의 노인 전문인력들이 풍부한 경험과 의료지식으로 치매,중풍등 노인성질환으로
													입소한 어르신들에 대하여 가족과 같이 최고의 환경과 최상의 서비스로 정성을 다하여 모시겠습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 대구 정보 -->
					<div id="Daegu" class="total_integrated">
						<!-- 대구 실버타운 -->
						<div id="daegu_sliver" style="display: none;">
							<ul>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="효성실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/효성실버타운.jfif"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">효성실버타운</label>
											<label class="integrated_text">
													효성실버타운은 중풍,치매 등의 노인성 질환으로 가정에서 일상생활이 현저히 곤란한 어르신들께 일상생활서비스, 의료 및 
													재활 서비스와 다양한 여가 및 문화프로그램을 제공하는 노인요양시설입니다. 탁트인 자연속에 위치하고 있고 접근성이 좋은 보금자리로써 저희 
													효성실버타운으로 연락 주시면 입소절차와 시설방문 등에 대해 원스톱으로 해결하여 드리겠습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="천유원실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/천유원실버타운.jpg"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">천유원실버타운</label>
											<label class="integrated_text">
													협력병원인 한성병원과의 연계를 통해 최적의 의료서비스와 긴급의료 서비스를 제공해드리며 100여명의 의료재활팀,복지팀,요양보호사들이 어르신들의 질환에 따른
													맞춤식 식사와 재활치료, 다양한 프로그램과 음악공연들을 제공함으로써 200명의 어르신들이 매일 새롭고 유쾌한 하루가 될 수 있도록 편안하고 건강히 지내실 수 있도록 정성을 다하겠습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
						<!-- 대구 요양원 -->
						<div id="daegu_nursing" style="display: none;">
							<ul>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="대구 요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">대구 요양원</label>
											<label class="integrated_text">
													천주교 대구대교구 대구 가톨릭 사회복지회가 운영하고 있는 대구 요양원은 그 동안 일곱분의 사제와 두분의 평신도 원장님을 비롯하여 열심히 자신을 희생할 줄 알았던 많은 직원들
													그리고 특별히 가족들로부터 외면당하고 눈치 보아가며 살아가야 하며 세상에서부터 멀어진 가운데 처절하도록 외롭게 투병생활을 하였던 수만은 결핵환우 분들과 함께 예수님의 활동모범을 
													따르고 가운ㄷ 서로 의지하며 인고의 세월을 살아오고 있습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					
					<!--  부산 정보 -->
					<div id="Busan" class="total_integrated" >
						<!-- 부산 실버타운 -->
						<div id="busan_sliver" style="display: none;">
							<ul>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="기장실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/기장실버타운.jfif"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">기장실버타운</label>
											<label class="integrated_text">
													노인전문요양시설로 만성적인 노인성 질환을 가진 어르신들을 위해 내 집처럼 따뜻하고 편안한 생활을 하실 수 있도록 쾌적한 환경을 조성하여 최적의 시설을 제공하고
													또한 신체적 정서적으로 안정된 생활을 유지할 수 있도록 어르신들의 욕구 충족을 위해 최선을 다하고자 합니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="해피실버타운" style="height: 300px; width: 300px;" src="resources/images/picture/해피실버타운.jfif"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">"해피실버타운"</label>
											<label class="integrated_text">
													친환경소재를 이용한 인테리어와 깨끗한 생활공간,비교가 되지 않는 진심 어린 친절한 케어, 개별화 프로그램 계획에 따른 맞춤형 서비스로 부모님께 평안하고 행복한 노년의
													삶을 안겨드리는 든든한 동반자로서 무한한 사랑과 따뜻한 손길로 진정한 섬김을 드리고 있습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
						<!-- 부산 요양원 -->
						<div id="busan_nursing" style="display: none;">
							<ul>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="윤금노인요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">윤금노인요양원</label>
											<label class="integrated_text">
													윤금노인요양원은 우리 사회가 점차 초고령 사회로 접어들면서 늙고 병들고 소외된 어르신들을 가족과 같은 따뜻함과 내 집처럼 편안하게 보살펴 드림으로
													어르신들의 노후가 건강하고 기쁨이 넘치는 생활이 되도록 최선을 다하고 있습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="동래요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">동래요양원</label>
											<label class="integrated_text">
													인터넷이라는 새로운 공간을 통하여서 어르신들의 노후 생활이 개선이 되어 가고 현 생활보다 더욱 기쁨과 소망의 생활이 되어가고 있음을 보여드리기 원하고
													저희 직원들의 섬김으로 어르신들이 소망의 생활을 지속하실 수 있도록 최선을 다해 노력하겠습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="황전요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">"황전요양원"</label>
											<label class="integrated_text">
													지역사회에서 소외된 어르신들을 위해 무작정 시작했던 작은 사랑의 실천이 여러분들의 많은 관심과 참여속에 지금의 황전 요양원을 일궈 낼 수 있습니다.
													돌이켜 보면 숱한 어려움도 있었고 포기하고 싶은 때도 많았지만 그럴때마다 따뜻하게 잡아주시던 어르신들의 손길을 잊을 수 없습니다.
											</label>
										</div>	
									</div>
								</li>
								<li>
									<div>
										<div class="i_imgs">
											<input type="image" alt="구세군부산요양원" style="height: 300px; width: 300px;"/>
										</div>
										<div class="i_text">	
											<label class="integrated_title">"구세군부산요양원"</label>
											<label class="integrated_text">
													입소하여 생활하시는 모든 어르신들이 내집과 같이 편안하고 안전하게 생활할 수 있도록 살펴드리고 우리 구세군 부산요양원을 믿고 찾아오신 모든 분들이 만족을
													느끼고 행복한 우리가정으로 인정하기까지 최선을 다해 노력하겠습니다.
											</label>
										</div>	
									</div>
								</li>
							</ul>
						</div>
					</div>
					
					<!-- 제주도 정보 -->
					<div id="Jeju" class="total_integrated">
							<!-- 제주도 실버타운 -->
							<div id="Jeju_sliver"  style="display: none;">
									<ul id="je_sliver_Information">
										<li>
										</li>	
									</ul>
							</div>
							<!-- 제주도 요양원 -->
							<div id="Jeju_nursing"  style="display: none;">
									<ul id="je_nursing_Information">
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="성이시돌 요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">성이시돌 요양원</label>
													<label class="integrated_text">
															재단법인 이시돌 농촌개발협회 설립 목적의 근본 이념에 따라 사회복지 사업의 일환으로 가장 가난하고 소외된 이웃, 무의무탁한
															어르신들과 한 가족을 이루어 정성스런 섬김과 보살핌으로 편안한 여생을 누리시도록 돕기 위함이다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="주사랑요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">주사랑요양원</label>
													<label class="integrated_text">
															저희 주사랑요양원은 어르신들이 행복하고 안전한 노후생활과 개별적 욕구를 해소함은 물론 삶의 질 향상을 위한 다양한 활동으로 감동과
															안정감을 드리기 위해 최선을 다하고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="효사랑 혜주원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">효사랑 혜주원</label>
													<label class="integrated_text">
															고령화의 진전과 함께 핵가족화, 여성의 경제활동 참여가 증가하면서 기존에 가족의 부담으로 인식되던 장기요양문제를 지난 2008년
															노인장기요양보험제도의 도입을 통한 새로운 형태의 복지체계를 통한 서비스를 제공해 오고 있지만, 노인복지문제는 여전히 심각한 사회문제로
															정착되지 못하고 있는 상황입니다. 하여 저희 상명복지재단은 평생 의료사업에 몸 담아 오셨던 부친에 뜻에 따라 최적화된
															맞춤형 노인복지서비스를 제공해 드리는데 주안점을 두고 운영해오고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="서호 요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">서호 요양원</label>
													<label class="integrated_text">
															늘 초심을 잃지 않고 고객과 함께 성장하고 발전하는 서호 요양원입니다. 서호요양원은 인생의 긴여정을 뒤로 하시고 
															몸과 마음이 지쳐 약해지신 어르신들께서 외롭고 힘든 삶을 내려 놓고 편히 지내실 수 있는 사랑의 보금자리가 되어 드리겠습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="전원요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">전원요양원</label>
													<label class="integrated_text">
															전원요양원은 청정의 환경을 자랑하는 제주도에서 교통이 편리하고 주변 환경이 잔디광장,나무와 새소리가 어우러진 자연과 조화를 갖춘
															조용한 곳에 위치하고 있으며 중풍,치매 등 노인성 질환으로 정신적,신체적으로 고통받는 어르신들께 든든한 삶의 동반자가 되어 
															"자연과 함꼐하는 쉼터" 속에서 편안하고 즐거운 요양생활을 할 수 있도록 부모와 같은 마음으로 장기요양서비스를 제공하고 있습니다.
													</label>
												</div>	
											</div>
										</li>
										<li>
											<div>
												<div class="i_imgs">
													<input type="image" alt="연동 365 요양원" style="height: 300px; width: 300px;"/>
												</div>
												<div class="i_text">	
													<label class="integrated_title">연동 365 요양원</label>
													<label class="integrated_text">
															제주도 제주시 시내 한가운데 자리한 저희 요양원은 치매,중풍,만성 노인성 질환으로 거동이 불편한 어르신을 나의 부모처럼 
															편안하게 모시며 가족적인 분위기와 병원의 전문성을 동시에 충족시켜주는 한단계 업그레이드된 노인전문 요양시설입니다.
													</label>
												</div>	
											</div>
										</li>
									</ul>
							</div>
					</div>
				</div>	
			</div>
		</div>
		<!-- 하단 -->
	   <div id="main_footer">
	      <jsp:include page="footer.jsp"/>
	   </div>
	   
<script src="resources/js/jquery-3.4.1.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script type="text/javascript"> 
  $(function(){
	  		// 실버타운 버튼 선택 시
	  		$("#sliver_btn").bind("click",function(){
	  				$("#nursing_town").hide();
	  				$("#sliverTown").show();
	  				
	  				$("#seoul_sliver").hide();
	  				$("#seoul_nursing").hide();
	  				$("#Gyeonggi_sliver").hide();
	  				$("#Gyeonggi_nursing").hide();
	  				$("#Gangwon_sliver").hide();
	  				$("#Gangwon_nursing").hide();
	  				$("#Incheon_sliver").hide();
	  				$("#Incheon_nursing").hide();
	  				$("#Chungcheong_north_sliver").hide();
	  				$("#Chungcheong_north_nursing").hide();
	  				$("#Chungcheong_south_sliver").hide();
	  				$("#Chungcheong_south_nursing").hide();
	  				$("#jeonlado_north_sliver").hide();
	  				$("#jeonlado_north_nursing").hide();
	  				$("#kwangju_sliver").hide();
	  				$("#kwangju_nursing").hide();
	  				$("#jeonlado_south_sliver").hide();
	  				$("#jeonlado_south_nursing").hide();
	  				$("#Gyeongsang_north_sliver").hide();
	  				$("#Gyeongsang_north_nursing").hide();
	  				$("#Gyeongsang_south_sliver").hide();
	  				$("#Gyeongsang_south_nursing").hide();
	  				$("#daegu_sliver").hide();
	  				$("#daegu_nursing").hide();
	  				$("#busan_sliver").hide();
	  				$("#busan_nursing").hide();
	  				$("#Jeju_sliver").hide();
	  				$("#Jeju_nursing").hide();
	  		});
	  		
	  		// 요양원 버튼 선택 시
	  		$("#nursing_btn").bind("click",function(){
	  				$("#sliverTown").hide();
		  			$("#nursing_town").show();
	  				
		  			$("#seoul_sliver").hide();
	  				$("#seoul_nursing").hide();
	  				$("#Gyeonggi_sliver").hide();
	  				$("#Gyeonggi_nursing").hide();
	  				$("#Gangwon_sliver").hide();
	  				$("#Gangwon_nursing").hide();
	  				$("#Incheon_sliver").hide();
	  				$("#Incheon_nursing").hide();
	  				$("#Chungcheong_north_sliver").hide();
	  				$("#Chungcheong_north_nursing").hide();
	  				$("#Chungcheong_south_sliver").hide();
	  				$("#Chungcheong_south_nursing").hide();
	  				$("#jeonlado_north_sliver").hide();
	  				$("#jeonlado_north_nursing").hide();
	  				$("#kwangju_sliver").hide();
	  				$("#kwangju_nursing").hide();
	  				$("#jeonlado_south_sliver").hide();
	  				$("#jeonlado_south_nursing").hide();
	  				$("#Gyeongsang_north_sliver").hide();
	  				$("#Gyeongsang_north_nursing").hide();
	  				$("#Gyeongsang_south_sliver").hide();
	  				$("#Gyeongsang_south_nursing").hide();
	  				$("#daegu_sliver").hide();
	  				$("#daegu_nursing").hide();
	  				$("#busan_sliver").hide();
	  				$("#busan_nursing").hide();
	  				$("#Jeju_sliver").hide();
	  				$("#Jeju_nursing").hide();
	  		});
	  });
  
	  // 실버타운
	  function mapclick(name){

	  	if(name=="0201"){  //서울
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map1.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="block";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0901"){  //부산
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map14.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="block";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0601"){  //대구
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map13.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="block";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0401"){  //인천
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map2.png";

	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="block";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0701"){  //광주
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map12.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="block";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0501"){  //대전
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map7.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0801"){  //울산
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map16.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0301"){  //경기도
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map3.png";

	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="block";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="0101"){  //강원도
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map4.png";
	  		
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="block";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="1001"){  //충북
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map6.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="block";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="1101"){  //충남
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map5.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="block";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	
	  	if(name=="1201"){  //전북
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map10.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="block";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="1301"){  //전남
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map11.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="block";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="1401"){  //경북
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map8.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="block";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="none";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	if(name=="1501"){  //경남
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map9.png";
	  	
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="block";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="none";
	  	}
	  	
	  	if(name=="1601"){  //제주
	  		document.getElementById("baseMap1").src="resources/images/sliver_Map/map15.png";
	  		
	  		document.getElementById("seoul_sliver").style.display="none";
	  		document.getElementById("Gyeonggi_sliver").style.display="none";
	  		document.getElementById("Gangwon_sliver").style.display="none";
	  		document.getElementById("Incheon_sliver").style.display="none";
	  		document.getElementById("Chungcheong_north_sliver").style.display="none";
	  		document.getElementById("Chungcheong_south_sliver").style.display="none";
	  		document.getElementById("jeonlado_north_sliver").style.display="none";
	  		document.getElementById("kwangju_sliver").style.display="none";
	  		document.getElementById("jeonlado_south_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_north_sliver").style.display="none";
	  		document.getElementById("Gyeongsang_south_sliver").style.display="block";
	  		document.getElementById("daegu_sliver").style.display="none";
	  		document.getElementById("busan_sliver").style.display="none";
	  		document.getElementById("Jeju_sliver").style.display="block";
	  	}
	  }

	  // 요양원
	  function nursing(name1){
		  
	  	if(name1=="0200"){  //서울
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map1.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="block";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  		
	  	}
	  	if(name1=="0900"){  //부산
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map14.png";
	  		
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="block";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0600"){  //대구
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map13.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="block";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0400"){  //인천
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map2.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="block";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0700"){  //광주
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map12.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="block";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0500"){  //대전
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map7.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0800"){  //울산
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map16.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0300"){  //경기도
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map3.png";

	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="block";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="0100"){  //강원도
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map4.png";

	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="block";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1000"){  //충북
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map6.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="block";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1100"){  //충남
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map5.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="block";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1200"){  //전북
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map10.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="block";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1300"){  //전남
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map11.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="block";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1400"){  //경북
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map8.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="block";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1500"){  //경남
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map9.png";
	  	
	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="block";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="none";
	  	}
	  	if(name1=="1600"){  //제주
	  		document.getElementById("nursingtownmap").src="resources/images/nursing_Map/map15.png";

	  		document.getElementById("seoul_nursing").style.display="none";
	  		document.getElementById("Gyeonggi_nursing").style.display="none";
	  		document.getElementById("Gangwon_nursing").style.display="none";
	  		document.getElementById("Incheon_nursing").style.display="none";
	  		document.getElementById("Chungcheong_north_nursing").style.display="none";
	  		document.getElementById("Chungcheong_south_nursing").style.display="none";
	  		document.getElementById("jeonlado_north_nursing").style.display="none";
	  		document.getElementById("kwangju_nursing").style.display="none";
	  		document.getElementById("jeonlado_south_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_north_nursing").style.display="none";
	  		document.getElementById("Gyeongsang_south_nursing").style.display="none";
	  		document.getElementById("daegu_nursing").style.display="none";
	  		document.getElementById("busan_nursing").style.display="none";
	  		document.getElementById("Jeju_nursing").style.display="block";
	  	}
	  }
</script>
</body>
</html>