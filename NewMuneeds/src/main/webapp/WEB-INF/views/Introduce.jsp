<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/styles.css">
<title>Insert title here</title>
<style type="text/css">
	#i_total{
		height: 700px;
		width: 1400px;	
		padding : 20px;
		margin-left: 100px;
		margin-bottom: 30px;
		margin-top: 100px;
	}
	
	#i_picutre{
		position: static;
	    float: left;
	    width: 45%; 
	    height: 100%;
		text-align: center;
	}
	#i_Contents{
		width: 45%;
		height: 60%;
	    position: relative;
	    top: 0px;
	    bottom: 0px;
	    width: 55%; 
	    height: 100%;
		float: right;
	}
	#main_footer{
			background-color: black;
		}
	#i_Explanation{
		font: 15px avenir-It-w01_35-light1475496,avenir,sans-serif;
	}
	#i_company{
		font: 40px barlow-medium,barlow,sans-serif;
	}
	#space{
		height: 30px;
	}
	#main_footer{
		
		border-top:1px solid #e8e8e8;
	}
</style>
</head>
<body>
	<div id="h_total">
      <div class="mc1inlineContent">
         <jsp:include page="realmenu.jsp"/>
      </div>
   </div>
	
	<div id="i_total">
		<div id="i_picutre">
			<span><img src="resources/images/BerhmKorea1.png" style="height: 350px; width: 350px;"></span>
		</div>
		<div id="i_Introduce">
			
		</div>
		<div id="i_Contents">
			<span id="i_company">회사 소개</span><br/><br/><br/><br/>
			<span id="i_Explanation">
				안녕하세요?  MuNeeds입니다. MuNeeds는 Must+Needs의 합성어로 디지털 정보 격차 해소와 사회적 안전망 구축을 목표로 꼭 필요한 정보를 사회적 약자를 위해 제공하는 Platform 서비스입니다.
 
				첫 번째 미션(Mission)은, 고령화 시대의 어르신 복지시설인 실버타운과 요양원의 정보를 한눈에 볼 수 있으며, 이용자간의 정보의 공유를 위하여 자체 커뮤니티를 운영합니다.
				또한, 한달살기 등 체험권과 추가 간병인 이용권을 소개해 드립니다.
			</span>
		</div>
	</div>	
	
	
	<div id="main_footer">
		<jsp:include page="footer.jsp"/>
	</div>
	<script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script>
	
	</script>
</body>
</html>