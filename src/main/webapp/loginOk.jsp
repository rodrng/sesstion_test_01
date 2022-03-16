<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<% 
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		
		if(memberId.equals("abc") && memberPw.equals("12345"))
		{
			session.setAttribute("m_id", memberId);
			session.setAttribute("m_pw", memberPw);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	
	%>
</body>
</html>