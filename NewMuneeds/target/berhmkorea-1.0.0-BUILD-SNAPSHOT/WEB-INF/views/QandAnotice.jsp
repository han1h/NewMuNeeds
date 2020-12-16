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
	#question{
		position: relative;
		top: 150px;
	    left: 450px;
	    padding-left: 200px;
		width: 60%;
	}
	#h_img{
		top: 0;
	}
</style>
</head>
<body>
<div id="h_total" style="">
   <div class="mc1inlineContent">
      <jsp:include page="realmenu.jsp"/>
   </div>
</div>
	 <div id="question">   
         <div id="question_write">
	         <form action="Question.inc" method="post" name="frm">
	            <table>
	               <tbody>
	                  <tr>
	                     <td colspan="2">
	                       	<h3>Q&A</h3>
	                      </td>
	                   </tr>
	                  <tr>
	                     <td colspan="2">
	                        <input type="text" id="writer" name="writer" placeholder="이름 or 회원사 이름"/>
	                     </td>
	                  </tr>
	                  <tr>   
	                     <td colspan="2">
	                        <input type="text" id="address" name="address" placeholder="제목"/>
	                     </td>
	                  <tr>   
	                     <td>
	                        <input type="text" id="email" name="email" placeholder="이메일" style="width:200px;"/>
	                     </td>
	                     <td>   
	                        <input type="text" id="phone" name="phone" placeholder="전화번호"/>
	                     </td>   
	                  </tr>
	                  <tr>   
	                     <td colspan="2">
	                        <input type="text" id="subject" name="subject" placeholder="제목"/>
	                     </td>
	                  </tr>   
	                  <tr>   
	                     <td colspan="2">
	                        <textarea rows="5" cols="30" id="content" name="content" placeholder="메시지를 입력하세요."></textarea>
	                     </td>
	                  </tr>
	                  <tr>
	                     <td style="text-align: right;" colspan="4">
	                        <input type="button" value="보내기" id="send"/>
	                     </td>
	                  </tr>
	               </tbody>
	              
	            </table>
            </form>
         </div>
      </div>
</body>
</html>