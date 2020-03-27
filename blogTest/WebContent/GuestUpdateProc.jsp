<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="db.*, scriptlet.*, java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%	TestDAO dao = new TestDAO();
	
		int idx = Integer.parseInt(request.getParameter("idx"));
		String pw = request.getParameter("pw");
		String answer = request.getParameter("answer");

		int result = dao.updateGuest(idx, pw, answer); %>

	<script>
		$(function(){
			var temp = <%=result%>;
			if(temp>0){
				location.href="Portpolio.jsp#guest";
				
			} else{
				alert(temp);
				//location.href="Portpolio.jsp#guest";
			}
		});

	</script>
</body>
</html>