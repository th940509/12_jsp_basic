<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션사용예시</title>
</head>
<body>
	<h2>마이페이지</h2>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = (String)session.getAttribute("id"); // setAtrribete에서 사용한 것으로 형변환 해야함.
		String passwd = (String)session.getAttribute("passwd");
	%>
	아이디: <%=id %> <br>
	패스워드: <%=passwd %> <br>
	<p><a href="sessionEx02_04.jsp">장바구니로 이동</a></p>
</body>
</html>