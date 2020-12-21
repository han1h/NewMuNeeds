<%@page import="mybatis.dao.QaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/text.css" />
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="stylesheet" href="resources/css/styles.css"/>
<style type="text/css">
	#qa_view{
		display: none;
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
<div id="qa">
 	<div class="container" style="height: 700px;">
			<table style="width: 1000px; ">
				<h2 style="height: 50px; margin-top: 20px; position: relative; top: 100px;">질문 공간</h2>
					<tbody>
							<tr>
									<td>
											<table id="table1" class="table table-hover" style="position: relative; top: 100px;">
													<thead>
															<tr>
																	<th  style="text-align: center;">번호</th>
																	<th style="text-align: center;">제목</th>
																	<th style="text-align: center;">글쓴이</th>
																	<th style="text-align: center;">날짜</th>
																	<th style="text-align: center;">ip</th>
																	<th style="text-align: center;">조회수</th>
															</tr>
													</thead>
													<tbody>
															<c:forEach var="qvo" items="${q_list }" varStatus="st">
																	<tr>
																		<td style="text-align: center;">
																				<input type="hidden" value="row">
																				${((q_nowPage-1)*q_blockList+st.index)+1}
																		</td>
																		<td style="text-align: center;">
																				<a href="javascript:goqawrite('${qvo.b_idx}','${qvo.pwd}','${qvo.nowPage }')">
																						${qvo.subject }
																				</a>
																		</td>
																		<td style="text-align: center;">
																				${qvo.writer }
																		</td>
																		<td style="text-align: center;">
																				${qvo.write_date }
																		</td>
																		<td style="text-align: center;">
																				${qvo.ip }
																		</td>
																		<td style="text-align: center;">${qvo.hit }</td>
																	</tr>
															</c:forEach>
													</tbody>
													<c:if test="${empty q_list }">
															<tr>
																	<td colspan="5">작성된 문의사항이 없습니다.</td>
															</tr>
													</c:if>
											</table>
									</td>
							</tr>
					</tbody>
					<tfoot>
							<tr>
								<td style="float: right; position: relative; top: 100px;">
									<button type="button" onclick="gowrite()">글쓰기</button>
								</td>
							</tr>
							<tr>
								<td colspan="5" class="pagination" style="position: relative; top: 100px;">
										<div style="margin: auto;">
												${ q_pageCode }
										</div>
								</td>
							</tr>
					</tfoot>
			</table>
	</div>
	<div id="qa_view">
			<input type="hidden" id="qa_b_idx" name="b_idx"/>
			<input type="hidden" id="qa_b_pwd" name="pwd"/>
			<input type="hidden" id="qa_nowPage" name="nowPage"/>
			<input type="password" id="q_pw" name="q_pw"/>
			<input type="button" id="qa_btn" value="확인"/>
	</div>
	<!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
<script src="resources/js/jquery-3.4.1.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
 <script>
 	function gowrite(){
 		location.href = "qawrite.inc?nowPage=${q_nowPage}";
 	}
 	
 	function goqawrite(b_idx,pwd,q_nowPage){
 		
 		$("#q_pw").val("");
 		$("#q_pw").focus();
 		
 		$("#qa_b_idx").val(b_idx);
 		$("#qa_b_pwd").val(pwd);
 		$("#qa_nowPage").val(q_nowPage);
 		
 		document.getElementById("qa_view").style.display = "block";
 		
 	}
 	
 	$("#qa_btn").bind("click",function(){
 		
 		var pwd = $("#q_pw").val();
		var b_idx = $("#qa_b_idx").val();
		var b_pwd = $("#qa_b_pwd").val();
		var qnowPage = $("#qa_nowPage").val();
		
		if(pwd==b_pwd){
			location.href="qaView.inc?nowPage=${qa_nowPage}&qb_idx="+encodeURIComponent(b_idx)+"&qpwd="+encodeURIComponent(pwd);
		}else{
			alert("다시 입력해 주세요");
			$("#view_phone").val("");
			$("#view_phone").focus();
		}
 	});
 
 </script>
 </div>
</body>
</html>