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
		request.setCharacterEncoding("euc-kr"); //�޾ƿ��� ������ �ѱ۷� ���ڵ��մϴ�.

		String name = request.getParameter("name"); //write.jsp���� name�� �Է��� �����Ͱ�
		String password = request.getParameter("password");//write.jsp���� password�� �Է��� �����Ͱ�
		String title = request.getParameter("title"); //write.jsp���� title�� �Է��� �����Ͱ�
		String memo = request.getParameter("memo"); //write.jsp���� memo�� �Է��� �����Ͱ�
		String local = request.getParameter("local"); //write.jsp���� memo�� �Է��� �����Ͱ�
		String score = request.getParameter("score"); //write.jsp���� memo�� �Է��� �����Ͱ�
		
		int max = 0;
		try {
			Connection conn = DBUtill.getMySQLConnection();
			Statement stmt = conn.createStatement();
			String sql = "SELECT MAX(NUM) FROM board";
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				max = rs.getInt(1);
			}
			sql = "INSERT INTO board(USERNAME,PASSWORD,TITLE,MEMO,REF) VALUES(?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			pstmt.setString(3, title);
			pstmt.setString(4, memo);
			pstmt.setInt(5, max + 1);
			pstmt.execute();
			pstmt.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			out.println(e.toString());
		}
		try {
			Connection conn = DBUtill.getMySQLConnection();
			Statement stmt = conn.createStatement();
			String sql1 = "update img SET score=" + score + " where local= ?";
			System.out.println(sql1);
			PreparedStatement pstmt1 = conn.prepareStatement(sql1);
			//pstmt1.setString(1,score);
			pstmt1.setString(1,local);
			pstmt1.execute();
			pstmt1.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			out.println(e.toString());
		}
	%>
	<script language=javascript>
		self.window.alert("�Է��� ���� �����Ͽ����ϴ�.");
		location.href = "list.jsp";
	</script>
</body>
</html>