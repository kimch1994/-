<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="project.DBUtill"%>
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
   //id passwd가져오기
   String e1 = request.getParameter("email");
   String p1 = request.getParameter("password");
   ResultSet rs = null;
   Connection con = DBUtill.getMySQLConnection();
   PreparedStatement pstmt = null;
   String sql = "";
   try{
    sql = "select password from member where email=?";
     pstmt = con.prepareStatement(sql);
     pstmt.setString(1, e1);
    //4단계 실행 => rs
    rs = pstmt.executeQuery();
    //5단계 데이터가 있으면 아이디있음
    if(rs.next()){
     //id있음
     String dbPass=rs.getString("password");
     if(e1.equals("admin") && p1.equals("admin")){
    	 %>
    		 <script type="text/javascript">
      		 alert("관리자 모드입니다.");
             location.href="admin.jsp";
      		 </script>
      		
     }
      <%
     }
     if(p1.equals(dbPass)){
       //비밀번호비교 맞으면 세션값생성 "id"
      //    이동 
      session.setAttribute("email", e1); 
      %>
	<script type="text/javascript">
      alert("한눈에보자! 게스트하우스에 오신걸 환영합니다.");
      location.href="loginafter.jsp";
      </script>
	<%
     }
     else
     {
      %>
	<script type="text/javascript">
      alert("id 또는 비밀번호를 확인해주세요.");
      history.back();
      </script>
	<%
     }
    }else{
     %>
	<script type="text/javascript">
     alert("id 또는 비밀번호를 확인해주세요.");
     history.back();
     </script>
	<% 
    }
    
   }catch (Exception e) {
    e.printStackTrace();
   }
   %>
</body>
</html>