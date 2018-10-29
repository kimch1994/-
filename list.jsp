<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="javafx.util.converter.DateStringConverter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import="project.DBUtill"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한눈에 보자! 게스트하우스</title>
<link rel="stylesheet" type="text/css" href="board.css"/>
<%
	final int ROWSIZE = 10;
	final int BLOCK = 5;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int start = (pg*ROWSIZE) - (ROWSIZE-1);
	int end = (pg*ROWSIZE);
	
	int allPage = 0;
	
	int startPage = ((pg-1)/BLOCK*BLOCK)+1;
	int endPage = ((pg-1)/BLOCK*BLOCK)+BLOCK;

%>
</head>
<div class="wrap"> 
<body>
	<header>
		<div class="left_top"> <a href="loginafter.jsp" target="_self"> <img src="./image/logo.jpg" >  </a> 
    	</div>
    </header>
    <%
      request.setCharacterEncoding("euc-kr");
   %>
   	<%
	int total = 0;
	
	try {
		Connection conn = DBUtill.getMySQLConnection();
		Statement stmt = conn.createStatement();
		Statement stmt1 = conn.createStatement();
		String sql = "";
		
		String sqlCount = "SELECT COUNT(*) FROM board";
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()){
			total = rs.getInt(1);
		}
		
		int sort=1;
		String sqlSort = "SELECT NUM from board order by ref desc, step asc";
		rs = stmt.executeQuery(sqlSort);
	
		
		while(rs.next()){
			int stepNum = rs.getInt(1);
			sql = "UPDATE board SET STEP2=" + sort + " where NUM=" +stepNum;
		 	stmt1.executeUpdate(sql);
		 	sort++;
		}
		
		allPage = (int)Math.ceil(total/(double)ROWSIZE);
		
		if(endPage > allPage) {
			endPage = allPage;
		}
		
		out.print("총 게시물 : " + total + "개");
		
		String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT, INDENT from board where STEP2 >="+start + " and STEP2 <= "+ end +" order by step2 asc";
		rs = stmt.executeQuery(sqlList);
		
		
		
%>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('image/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="image/table_left.gif" width="5" height="30" /></td>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
   <td width="7"><img src="image/table_right.gif" width="5" height="30" /></td>
  </tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  </tr>
<%
	 	} else {
	 		
		while(rs.next()) {
			int idx = rs.getInt(1);
			String name = rs.getString(2);
			String title = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
			int indent = rs.getInt(6);
			
			Date date = new Date();
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
			String year = (String)simpleDate.format(date);
			String yea = time.substring(0,10);
		
%>
<tr height="25" align="center">
	<td>&nbsp;</td>
	<td><%=idx %></td>
	<td align="left">
	<% 
		
	for(int j=0;j<indent;j++){
%>		&nbsp;&nbsp;&nbsp;<%
	}
	if(indent!=0){
%>		<img src='image/reply_icon.gif' />
<%
	}
%>
	<a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=title %></a>
<%
	if(year.equals(yea)){
%>
			<img src='image/new.jpg' />
<%
		} 
%>
	</td>
	<td align="center"><%=name %></td>
	<td align="center"><%=yea %></td>
	<td align="center"><%=hit %></td>
	<td>&nbsp;</td>
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
<% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
//	out.println( e.toString() );
}
%>
 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr>
	<td align="center">
		<%
			if(pg>BLOCK) {
		%>
			<a href="list.jsp?pg=1">◀◀</a>
			<a href="list.jsp?pg=<%=startPage-1%>">◀</a>
		<%
			}
		%>
		
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b><%=i %></b></u>
		<%
				}else{
		%>
					<a href="list.jsp?pg=<%=i %>"><%=i %></a>
		<%
				}
			}
		%>
		
		<%
			if(endPage<allPage){
		%>
			<a href="list.jsp?pg=<%=endPage+1%>">▶</a>
			<a href="list.jsp?pg=<%=allPage%>">▶▶</a>
		<%
			}
		%>
		</td>
		</tr>
		  <tr align="center">
   <td><input type=button value="글쓰기" OnClick="window.location='write.jsp'"></td>
  </tr>
 </table>
</body>
	<footer>
		<div class="footer">
			<div class="sub1">
			<h2 style="font-size:20px;  text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">한눈에 비교</h2>
			<br>
			<p style="font-size:15px;  text-align: center;"> 대한민국 전국에 있는 모든 게스트하우스를 한눈에 비교하여 마음에 쏙 드는 게스트하우스를 찾아보세요. </p>
			</div>
			<div class="sub2">
			<h2 style="font-size:20px; text-align: center;  font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">후회하지 않는 선택</h2>
			<br>
			<p style="font-size:15px;  text-align: center;">여러 게스트하우스를 비교하여 자신이 원하는 게스트하우스를 선택하여 후회없는 여행이 됩니다.</p>
			</div>
			<div class="sub3">
			<h2 style="font-size:20px; text-align: center;  font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">즐거운 여행의 시작</h2>
			<br>
			<p style="font-size:15px;  text-align: center;">수많은 사람들이 한눈에 보자! 게스트하우스에서 최고의 게스트하우스를 경험하였습니다.</p>
			</div>
			<div class="footer2"> 
				<div class="sns"> 
				SNS에서도 만날 수 있습니다!
				<br>
				<br>
				<a href="https://section.blog.naver.com/BlogHome.nhn" target="_blank">
           		<img src="image/naver.jpg" height="32" alt="네이버" style="margin:3px;">
       			</a>
       			<a href="https://www.youtube.com/" target="_blank">
           		<img src="image/youtube.jpg" height="32" alt="유투브" style="margin:3px;">
      			</a>
       			<a href="https://twitter.com/" target="_blank">
          		<img src="image/twitter.jpg" height="32" alt="트위터" style="margin:3px;" >
       			</a>
       			<a href="https://www.facebook.com/" target="_blank">
           		<img src="image/fb.jpg" height="32" alt="페이스북" style="margin:3px;">
       			</a>
				</div>
				<div class="mobile">
				이제 스마트폰에서도 사용해보세요!
				<br>
				<br>
				<a href="https://play.google.com/store" target="_blank">
           		<img src="image/google.jpg" height="32" alt="구글" style="margin:3px 5px;">
       			</a>
       			<a href="https://www.apple.com/kr/" target="_blank">
           		<img src="image/apple.jpg" height="32" alt="애플" style="margin:3px 5px;">
      			</a>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<hr>
				<div class="copyright">Copyright @ Chung ho Kim All rights reserved, </div>
				<div class="right_copyrigth">홍보 이외의 문제는 본 사이트와 관련없습니다.</div>
			</div>
			
		</div>
		
	</footer>
</div>
</body>

</html>