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
<link rel="stylesheet" href="resources/css/styles.css"/>
<style type="text/css">
	#qa_view{
		display: none;
	}

</style>
</head>
<body>
<div id="qa">
 	<div>
				<table>
						<tbody>
								<tr>
										<td>
												<table>
														<thead>
																<tr>
																		<th>번호</th>
																		<th>제목</th>
																		<th>글쓴이</th>
																		<th>날짜</th>
																		<th>ip</th>
																		<th>조회수</th>
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
																					<a href="javascript:goqawrite('${qvo.b_idx}','${qvo.pwd}')">
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
									<td>
										<button type="button" onclick="gowrite()">글쓰기</button>
									</td>
								</tr>
								<tr>
									<td colspan="5">
											<div>
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
				<input type="password" id="q_pw" name="q_pw"/>
				<input type="button" id="qa_btn" value="확인"/>
		</div>
 <script src="resources/js/jquery-3.4.1.min.js"></script>
 <script src="resources/js/jquery-ui.min.js"></script>
 <script>
 	function gowrite(){
 		location.href = "qawrite.inc?nowPage=${q_nowPage}";
 	}
 	
 	function goqawrite(b_idx,pwd){
 		
 		$("#q_pw").val("");
 		$("#q_pw").focus();
 		
 		$("#qa_b_idx").val(b_idx);
 		$("#qa_b_pwd").val(pwd);
 		
 		document.getElementById("qa_view").style.display = "block";
 		
 	}
 	
 	$("#qa_btn").bind("click",function(){
 		
 		console.log("여기요");
 		
 		var pwd = $("#q_pw").val();
		var b_idx = $("#qa_b_idx").val();
		var b_pwd = $("#qa_b_pwd").val();
		
		if(pwd==b_pwd){
			location.href="qaView.inc?qnowPage = ${ qvo.nowPage  }&qb_idx="+encodeURIComponent(b_idx)+"&qpwd="+encodeURIComponent(pwd);
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