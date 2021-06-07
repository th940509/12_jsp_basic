<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String travel = request.getParameter("travel");
	String content = request.getParameter("content");
	// 체크박스는 여러값을 가져 올 수 있으므로 배열형태로 저장한다.
	String[] hobbies = request.getParameterValues("hobbies"); 
%>
	<h3>전송된 데이터 출력</h3>
	<p>이름: <%=name %></p>
	<p>아이디: <%=id %></p>
	<p>비밀번호: <%=pwd %></p>
	<p>나이: <%=age %></p>
	<p>성별: <%=gender %></p>
	<p>가고 싶은 여행지: <%=travel %></p>
	<p>메모: <%=content %></p>
	<p>취미:
	<%
		for(int i=0; i<hobbies.length; i++) {
	%>
			<%=hobbies[i] %> &nbsp;
	<% 
		}
	%>
	</p>
</body>
</html>