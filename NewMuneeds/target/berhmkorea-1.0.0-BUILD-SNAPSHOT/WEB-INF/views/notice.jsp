<%@page import="mybatis.dao.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="stylesheet" href="resources/css/styles.css"/>
<style type="text/css">
	a{
		text-decoration: none;
	}
	#v_pwd{
		display: none;
	}
</style>
</head>
<body>
<div id="total">
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
																		<th>조회수</th>
																</tr>
														</thead>
														<tbody>
																<c:forEach var="vo" items="${list }" varStatus="st">
																		<tr>
																			<td style="text-align: center;">
																					<input type="hidden" value="row">
																					${((nowPage-1)*blockList+st.index)+1}
																			</td>
																			<td style="text-align: center;">
																					<a  href="javascript:goview('${vo.b_idx }','${ vo.phone }')">
																							${vo.subject }
																					</a>
																			</td>
																			<td style="text-align: center;">
																					${vo.writer }
																			</td>
																			<td style="text-align: center;">
																					${vo.write_date }
																			</td>
																			<td style="text-align: center;">${vo.hit }</td>
																		</tr>
																</c:forEach>
														</tbody>
														<c:if test="${empty list }">
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
										<td colspan="5">
												<div>
														${pageCode }
												</div>
										</td>
									</tr>
						</tfoot>
				</table>
		</div>
		<div id="v_pwd">
			<p>입력하셨던 전화번호를 입력하세요</p>
			<input type="hidden" id="b_idx" value="${vo.b_idx }">
			<input type="hidden" id="b_phone" value="${vo.phone }">
			<input type="text" id="view_phone" name="phone"/>
			<input type="button" value="확인" id="view_ok"/>
		</div>
</div>
	<script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script src="resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		function goview(b_idx,b_phone){
			
			$("#view_phone").val("");
			$("#view_phone").focus();
			
			$("#b_phone").val(b_phone);
			$("#b_idx").val(b_idx);
			
			
			
			document.getElementById("v_pwd").style.display = "block";
		}
		$("#view_ok").bind("click",function(){
			
			var phone = $("#view_phone").val();
			var b_idx = $("#b_idx").val();
			var b_phone = $("#b_phone").val();
			
			if(phone==b_phone){
				location.href="bbsView.inc?nowPage = ${ nowPage }&b_idx="+encodeURIComponent(b_idx)+"&phone="+encodeURIComponent(phone);
			}else{
				alert("다시 입력해 주세요");
				$("#view_phone").val("");
				$("#view_phone").focus();
			}
		});
	</script>
</body>
</html>