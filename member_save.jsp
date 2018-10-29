<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.Connection"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "project.DBUtill" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
	%>
	<%
		String e1 = request.getParameter("email");
		String p1 = request.getParameter("password");
		String ph1 = request.getParameter("phone");
		
		Connection conn = DBUtill.getMySQLConnection();
		
		String sql = "insert into member(email , password , PHONE) values(? ,? ,?)";
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    System.out.println(pstmt + "<-- pstmt 1");
	   
	   
	    pstmt.setString(1,e1);
	    pstmt.setString(2,p1);
	    pstmt.setString(3,ph1);
	    
	    System.out.println(pstmt + "<-- pstmt 2");
	    
	   	pstmt.executeUpdate();
	    
	    DBUtill.close(pstmt);
		DBUtill.close(conn);    
	%>
	<jsp:forward page="main.jsp" />
</body>
</html>