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
		String idCheck = request.getParameter("pw");

		int result = dao.deleteGuest(idx, idCheck); %>

	<script>
		$(function(){
			var temp=<%=result%>
			if(temp>0){
				alert("삭제되었습니다.");
				location.href="Portpolio.jsp#guest";
				
			} else{
				alert("비밀번호가 틀립니다.");
				location.href="Portpolio.jsp#guest";
			}
		});

	</script>
</body>
</html>