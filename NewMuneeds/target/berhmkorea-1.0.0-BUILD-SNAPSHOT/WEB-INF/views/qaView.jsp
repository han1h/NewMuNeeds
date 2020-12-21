<%@page import="mybatis.dao.QaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	#del_win{
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
<div id="qa" class="container" style="position: relative; top: 100px; height: 700px;">
      <form method="post">
         <div id="notice">
            <div id="heights"></div>
            <h2>공지사항</h2>
         </div>
         <table id="v_bbs" class="table">
            <tbody>
               <tr>
                  <th><label>제목</label></th>
                  <td>${ q_vo.subject }</td>
                  <th><label>조회수</label></th>
                  <td>${ q_vo.hit }</td>
               </tr>
               <tr>
                  <th><label>첨부 파일</label></th>
                  <td colspan="3">
                     <c:if test="${ q_vo.file_name != null and fn:length(q_vo.file_name) >4 }">
                        <a href="javascript: download('${q_vo.file_name }')">
                           ${q_vo.file_name }
                           클릭시 다운로드
                        </a>
                     </c:if>
                  </td>
               </tr>
               <tr>
                  <th><label>이름</label></th>
                  <td colspan="3">${ q_vo.writer }</td>
               </tr>
               <tr>
                  <th><label>내용</label></th>
                  <td colspan="3"><pre>${ q_vo.content }</pre></td>
               </tr>
            </tbody>
            <tfoot>
               <tr>
                  <td colspan="4" style="text-align: right; background-color: #F2F7F9;">
                  	<button type="button" onclick="edit_go()" class="repSumbit btn btn-danger">수정</button>
                     <button type="button" onclick="list_go()" class="repSumbit btn btn-danger">목록</button>
                     <button type="button" id="del_btn" class="repSumbit btn btn-warning">삭제</button>
                  </td>
               </tr>
            </tfoot>
         </table>
      </form>
     </div>
     <div id="del_win">
         <form>
               <input type="hidden" name="b_idx" id="b_idx" value="${q_vo.b_idx }"/>
               <label for="b_pw">비밀번호:</label>
               <input type="password" id="b_pw" name="b_pw"/>
               <br/>
               <button type="button" id="delete_bt" class="repSumbit btn btn-danger">삭제</button>
               <button type="button" id="close_bt" class="repSumbit btn btn-primary">닫기</button>
               <input type="text" id="view_nowPage" name="qnowPage" value="${qvo.nowPage }">
               <input type="hidden" name="b_idx" value="${qvo.b_idx }">
         </form>
   </div>
   <!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
    <script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript">
	
   		function list_go(){
   			location.href= "qanotice.inc?nowPage=${qa_nowPage}";
   		}
   		
   		function edit_go(){
   			location.href = "qaEditgo.inc?qnowPage=${qa_nowPage}&b_idx=${qa_idx}&pwd=${q_vo.pwd}";
   		}
   		
   	//다운로드 서블릿 이동   
   function download(fname){
      console.log(fname);
      location.href="FileDownload?dir=/resources/upload&f_name="+fname;
   }
   	
   $(function () {
		
		// 삭제 다이어로그 
		$("#del_btn").bind("click",function(){
			$("#del_win").css("display", "block");
			$("#del_win").dialog();
		});
		
		$("#close_bt").bind("click",function(){
			$("#del_win").dialog("close");
		});
		
		$("#delete_bt").bind("click",function(){
			// pw	
			var b_idx =$("#b_idx").val();
			var pw =$("#b_pw").val();
			
			var param = "b_idx="+encodeURIComponent(b_idx)
			+"&pwd="+encodeURIComponent(pw);
			
			
			$.ajax({
				url: "qaDel.inc",
				data: param,
				type:"post",
				dataType:"json"
			}).done(function(data){
				$("#dwl_win").dialog("close");
				
				if(data.chk){
					alert("삭제성공");					
					location.href="qanotice.inc?nowPage=${q_vo.nowPage}";
				}else{
					alert("비밀번호가 틀렸어요 확인해보세요");
					$("#b_pw").val("");
					$("#b_pw").focus();
				}
			}).fail(function(err){
				console.log("실패");
				alert(err);
			});
			
		});
	
	});
   	
   </script>
</body>
</html>