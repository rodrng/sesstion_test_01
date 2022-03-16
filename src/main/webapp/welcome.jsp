<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 환영</title>
</head>
<body>
	<%
		// String w_id = (String) session.getAttribute("m_id"); // 세션 한개 값만 가져오기
		
		Enumeration enumer = session.getAttributeNames();
		
		while(enumer.hasMoreElements())
		{
			String sName = enumer.nextElement().toString(); // m_id를 가져와서 저장
			String w_id = (String) session.getAttribute(sName);
			
			if(sName.equals("m_id"))
			{
			out.println("세션의 속성이름:" + sName + "<br>");
			out.println(w_id + "님 반갑습니다!!");
			}
			
			
		}
		
	%>
	<br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>