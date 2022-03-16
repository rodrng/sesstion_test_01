<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		if(request.isRequestedSessionIdValid() == true)
		{
			out.println("로그인 중(세션 아직 유효)<br>");
		}
	
		// session.invalidate(); // 모든 세션 내용 삭제
		Enumeration enumer = session.getAttributeNames();
		while(enumer.hasMoreElements())
		{
			String sName = enumer.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("abc"))
			{
				session.removeAttribute(sName);
			}
		}
		
		
		if(request.isRequestedSessionIdValid() == true)
		{
			out.println("로그인 중(세션 아직 유효)");
		}
		else
		{
			out.println("로그아웃됨(세션 삭제로 세션이 유효하지 않음)");
		}
	
	%>
</body>
</html>