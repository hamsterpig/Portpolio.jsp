<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="db.*, scriptlet.*, java.util.Vector" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%	TestDAO dao = new TestDAO();
	
		String id = request.getParameter("guestID");
		String pw = request.getParameter("guestPW");
		String answer = request.getParameter("guestField");
		String[] secretTemp = request.getParameterValues("guestSecret");
		String secret = "false";
		try{
			if(secretTemp[0] != null){
				secret = "true";
			}
		} catch(Exception e){
			
		}

		
		
		dao.insertGuest(id, pw, answer, secret);
	%>
	
	<script>
		location.href="Portpolio.jsp#guest";
	</script>
</body>
</html>