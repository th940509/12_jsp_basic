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
		
		System.out.println("----------------------------");
		System.out.println("이름: " + name);
		System.out.println("아이디: " + id);
		System.out.println("비밀번호: " + pwd);
		System.out.println("나이: " + age);
		System.out.println("성별:" + gender);
		System.out.println("가고싶은 여행지 : " + travel);
		System.out.println("메모: " + content);
	
	%>
	
</body>
</html>