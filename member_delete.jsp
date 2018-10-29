<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
<%@ page import="project.DBUtill" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>관리자 모드</title>
</head>
<body>
<%
		request.setCharacterEncoding("euc-kr");
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/h1";
		String id = "root";
		String pass = "k1234";
		String password = null;
		String email = request.getParameter("delete1");

		try {

			Connection conn = DriverManager.getConnection(url,id,pass);
			Statement stmt = conn.createStatement();

			String sql = "delete from member where email = " + "'" +email + "'";
			stmt.execute(sql);
	%>
	<script language=javascript>
		self.window.alert("회원을 삭제하였습니다.");
		location.href="memberlist.jsp";
	</script>

	<%
				stmt.close();
				conn.close();

		
		} catch (SQLException e) {
			out.println(e.toString());
		}
	%>
</body>
</html>