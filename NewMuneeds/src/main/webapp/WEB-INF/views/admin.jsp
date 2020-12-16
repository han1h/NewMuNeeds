<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style type="text/css">
a, abbr, acronym, address, applet, b, big, blockquote, body, button, caption, center, cite, code, dd, del, dfn, div, dl, dt, em, fieldset, font, footer, form, h1, h2, h3, h4, h5, h6, header, html, i, iframe, img, ins, kbd, label, legend, li, nav, object, ol, p, pre, q, s, samp, section, small, span, strike, strong, sub, sup, table, tbody, td, tfoot, th, thead, title, tr, tt, u, ul, var, wix-iframe {
	    margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: 0 0;
	  }
	  
	  #main_footer{
			position: fixed; 
			bottom: 0; 
			width: 100%;
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

	<!-- 하단 -->
   <div id="main_footer">
      <jsp:include page="footer.jsp"/>
   </div>
</body>
</html>