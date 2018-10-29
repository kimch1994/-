<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="project.DBUtill"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here1234111231231</title>
</head>
<body>
	<%
      request.setCharacterEncoding("euc-kr");
   %>
	<%
   //id passwd가져오기
   String e1 = request.getParameter("phone");
   ResultSet rs = null;
   Connection con = DBUtill.getMySQLConnection();
   PreparedStatement pstmt = null;
   String sql = "";
   try{
	   sql = "select email,password from member where phone=?";
	     pstmt = con.prepareStatement(sql);
	     pstmt.setString(1, e1);
	     rs = pstmt.executeQuery();
	     if(rs.next()){
	         //id있음
	         String dbem=rs.getString("email");
	         String dbPass=rs.getString("password");
	         System.out.println(dbem + dbPass);
	         
	         %>
				<script type="text/javascript">
      			alert("이메일 : <%=dbem%> 비밀번호 : <%=dbPass%> 입니다.");
      			location.href="login.jsp";
      			</script>
      		<%
	}else{
		%>
		<script type="text/javascript">
      			alert("일치하는 정보가 없습니다.");
      			history.back();
      			</script>
       <% 
	}
	 }catch(Exception e){ 
	   e.printStackTrace(); 	 
   } 
	%>
</body>
</html>