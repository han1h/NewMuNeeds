<%@page import="mybatis.dao.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<div id="h_total">
   <div class="mc1inlineContent">
      <jsp:include page="realmenu.jsp"/>
   </div>
</div>
<div id="bbs" class="container">
		<form method="post">
			<div id="notice">
				<div id="heights"></div>
				<h2>공지사항</h2>
			</div>
			<table id="v_bbs" class="table">
				<tbody>
					<tr>
						<th><label>제목</label></th>
						<td>${ vo.subject }</td>
						<th><label>조회수</label></th>
						<td  class="naeyong">${ vo.hit }</td>
					</tr>
					<tr>
						<th><label>이름</label></th>
						<td colspan="3"  class="naeyong">${ vo.writer }</td>
					</tr>
					<tr>
						<th><label>내용</label></th>
						<td colspan="3" class="naeyong"><pre>${ vo.content }</pre></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4" style="text-align: right; background-color: #F2F7F9;">
							<button type="button" onclick="list_go()" class="repSumbit btn btn-danger">목록</button>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
	<script src="resources/js/jquery-3.4.1.min.js"></script>
   <script src="resources/js/jquery-ui.min.js"></script>
   <script>
   		function list_go(){
   			location.href= "notice.inc?nowPage = ${ nowPage }";
   		}
   </script>
</body>
</html>