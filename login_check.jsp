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
   //id passwd��������
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
    //4�ܰ� ���� => rs
    rs = pstmt.executeQuery();
    //5�ܰ� �����Ͱ� ������ ���̵�����
    if(rs.next()){
     //id����
     String dbPass=rs.getString("password");
     if(e1.equals("admin") && p1.equals("admin")){
    	 %>
    		 <script type="text/javascript">
      		 alert("������ ����Դϴ�.");
             location.href="admin.jsp";
      		 </script>
      		
     }
      <%
     }
     if(p1.equals(dbPass)){
       //��й�ȣ�� ������ ���ǰ����� "id"
      //    �̵� 
      session.setAttribute("email", e1); 
      %>
	<script type="text/javascript">
      alert("�Ѵ�������! �Խ�Ʈ�Ͽ콺�� ���Ű� ȯ���մϴ�.");
      location.href="loginafter.jsp";
      </script>
	<%
     }
     else
     {
      %>
	<script type="text/javascript">
      alert("id �Ǵ� ��й�ȣ�� Ȯ�����ּ���.");
      history.back();
      </script>
	<%
     }
    }else{
     %>
	<script type="text/javascript">
     alert("id �Ǵ� ��й�ȣ�� Ȯ�����ּ���.");
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