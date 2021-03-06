<%@page import="mybatis.dao.QaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문 수정</title>
<style type="text/css">
	#bbs{
		position: relative;
		top: 120px;
		height: 800px;
	}
	
</style>
<link rel="stylesheet" href="resources/css/summernote-lite.min.css">
<link rel="stylesheet" href="resources/css/main2.css" />
<link rel="stylesheet" href="resources/css/styles.css" />
</head>

<body>
<!-- 메뉴바 -->
        <jsp:include page="realmenu.jsp"/>
	<div style="width:900px; margin:auto; padding:auto; text-align: center; margin-top: 15px; margin-bottom: 15px; position: relative; top: 100px;">
		<h2>게시판 수정</h2>
	</div>
	<div id="bbs">
	<form action="qaEditok.inc" method="post" encType="multipart/form-data" name="edit_frm">
		<table summary="게시판 수정" style="margin: auto; width:740px;">
			<tbody>
				<tr>
					<th style="background-color:#669AB3;"><label for="subject">제목:</label></th>
					<td bgcolor="#F2F7F9" align="left" class="content"><input type="text" id="subject" name="subject" size="45" value="${q_vo.subject}"/>  </td>
				</tr>
				<tr>
					<th style="background-color:#669AB3;"><label for="writer">이름:</label></th>
					<td bgcolor="#F2F7F9" align="left" class="content"><input type="text" id="writer" name="writer" size="12" value="${ q_vo.writer }"/> </td>
				</tr>
				<tr>
					<th style="background-color:#669AB3;"><label for="file">첨부파일:</label></th>
					<td bgcolor="#F2F7F9" align="left" class="content"><input type="file" id="file" name="file"/>(${ q_vo.file_name })</td>
				</tr>

				<tr>
					<th style="background-color:#669AB3;"><label for="pwd">비밀번호:</label></th>
					<td bgcolor="#F2F7F9" align="left" class="content"><input type="password" id="pwd" name="pwd" size="12"/></td>
				</tr>

			</tbody>
		</table>
		
		<input type="hidden" id="h_nowPage" name="nowPage" value="${ qanowPage}"/>
		<input type="hidden" name="b_idx" value="${ q_vo.b_idx }"/>
		<input type="hidden" name="content" id="str" />
	</form>
		<table style="margin: auto; width:740px;">
			<tbody>
				<tr>
					<th style="width:115px; background-color:#669AB3;"><label for="content">내용:</label></th>
					<td><textarea name="content" cols="50" rows="8" id="content" >${ q_vo.content }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="background-color:#F2F7F9; text-align: right; ">
						<input type="button" value="수정" onclick="sendData()" class="repSumbit btn btn-primary"/>
						<input type="reset" id="reset" value="다시" class="repSumbit btn btn-warning"/>
						<input type="button" id="list" value="목록" class="repSumbit btn btn-danger"/>
					</td>
				</tr>
			</tbody>
		</table>	
	</div>
 <!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
	<script type="text/javascript" src="resources/js/jquery-3.4.1.min.js"></script>
   <script type="text/javascript" src="resources/js/summernote-lite.min.js"></script>
   <script type="text/javascript" src="resources/js/lang/summernote-ko-KR.min.js"></script>
   <script type="text/javascript">
		$(function(){
			
			var nowPage = $("#h_nowPage").val();
			
			$("#list").bind("click",function(){
				
				location.href= "qanotice.inc?nowPage=${qa_nowPage}";
				
			});
			
			$("#reset").bind("click",function(){
				
				var subject = document.getElementById("subject");
				var writer = document.getElementById("writer");
				var content = document.getElementById("content");
				var file = document.getElementById("file");
				var pwd = document.getElementById("pwd");
				
				subject.value = "";
				writer.value = "";
				content.value = "";
				file.value = "";
				pwd.value = "";
			});
			
			$("#content").summernote({
				height: 300,
				width: 600,
				lang: "ko-KR",
				callbacks:{
					onImageUpload: function(files, editor){
						for(var i=0; i<files.length; i++){
							sendFile(files[i], editor);
						}
					},
				}
			});
			
			$("#content").summernote("lineHeight", 1.0);
		});
		
		function sendFile(file, editor){
			
			var frm = new FormData(); 
			
			frm.append("upload", file);
			
			//비동기식 통신
			$.ajax({
				url: "saveImage.inc",
				type: "post",
				dataType: "json",
				contentType: false,
				processData: false,
				data: frm
				
			}).done(function(data){
				
				$("#content").summernote("editor.insertImage", data.url);
				
			}).fail(function(err){
				console.log(err);
			});
		}
		
		
		function sendData(){
			
			for(var i=0 ; i<edit_frm.elements.length ; i++){
				
				if(i > 1)
					break;
				
				if(${ q_vo.pwd } == $("#pwd").val() ){
				
				if(edit_frm.elements[i].value == ""){
					
					alert(edit_frm.elements[i].name+"를 입력하세요");
					edit_frm.elements[i].focus();
					
					return;
				}
				
				break;
				
				}else{
					alert("비밀번호 다시 입력해 주세요");
					$("#pwd").focus();
					$("#pwd").val("");
					return;
				}
			}
			var str = $("#content").val();
			$("#str").val(str);
			
			
			edit_frm.submit();
		}
	</script>
</body>
</html>