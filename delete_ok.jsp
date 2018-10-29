<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="project.DBUtill" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/h1";
		String id = "root";
		String pass = "k1234";
		String password = null;
		int idx = Integer.parseInt(request.getParameter("idx"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		String passw = request.getParameter("password");

		try {

			Connection conn = DriverManager.getConnection(url,id,pass);
			Statement stmt = conn.createStatement();

			String sql = "SELECT PASSWORD FROM board WHERE NUM=" + idx;
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				password = rs.getString(1);
			}

			if (password.equals(passw)) {

				sql = "DELETE FROM board WHERE NUM=" + idx;
				stmt.executeUpdate(sql);
	%>
	<script language=javascript>
		self.window.alert("해당 글을 삭제하였습니다.");
		location.href="list.jsp?pg=<%=pg%>";
	</script>

	<%
		rs.close();
				stmt.close();
				conn.close();

			} else {
	%>
	<script language=javascript>
		self.window.alert("비밀번호를 틀렸습니다.");
		location.href = "javascript:history.back()";
	</script>
	<%
		}
		} catch (SQLException e) {
			out.println(e.toString());
		}
	%>

</body>
</html>