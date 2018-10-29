<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/h1";
	String id = "root";
	String pass = "k1234";
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
	try {
		Connection conn = DriverManager.getConnection(url, id, pass);
		Statement stmt = conn.createStatement();
		String sql = "SELECT USERNAME, TITLE, MEMO, TIME, HIT FROM board WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
			String name = rs.getString(1);
			String title = rs.getString(2);
			String memo = rs.getString(3);
			String time = rs.getString(4);  
			int hit = rs.getInt(5);
			hit++;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한눈에 보자! 게스트하우스</title>
<link rel="stylesheet" type="text/css" href="board.css" />

</head>
<div class="wrap">
	<body>
		<header>
		<div class="left_top">
			<a href="main.jsp" target="_self"> <img src="./image/logo.jpg">
			</a>
		</div>
		</header>
		<table>
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr
							style="background: url('image/table_mid.gif') repeat-x; text-align: center;">
							<td width="5"><img src="image/table_left.gif" width="5"
								height="30" /></td>
							<td>내 용</td>
							<td width="5"><img src="image/table_right.gif" width="5"
								height="30" /></td>
						</tr>
					</table>
					<table width="413">
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">글번호</td>
							<td width="319"><%=idx%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">조회수</td>
							<td width="319"><%=hit%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">이름</td>
							<td width="319"><%=name%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">작성일</td>
							<td width="319"><%=time%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">제목</td>
							<td width="319"><%=title%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0"></td>
							<td width="399" colspan="2" height="200"><%=memo%>
						</tr>
						<%
							sql = "UPDATE board SET HIT=" + hit + " where NUM=" + idx;
									stmt.executeUpdate(sql);
									rs.close();
									stmt.close();
									conn.close();
								}
							} catch (SQLException e) {
							}
						%>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr height="1" bgcolor="#82B5DF">
							<td colspan="4" width="407"></td>
						</tr>
						<tr align="center">
							<td width="0">&nbsp;</td>
							<td colspan="2" width="399"><input type=button value="글쓰기"
								OnClick="window.location='write.jsp'"> 
								<input type=button value="답글" OnClick="window.location='reply.jsp?idx=<%=idx%>&pg=<%=pg%>'"> 
								<input type=button value="목록" OnClick="window.location='list.jsp?pg=<%=pg%>'">
								<input type=button value="수정" OnClick="window.location='modify.jsp?idx=<%=idx%>&pg=<%=pg%>'"> 
								<input type=button value="삭제" OnClick="window.location='delete.jsp?idx=<%=idx%>&pg=<%=pg%>'">
							<td width="0">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div style="width:500px; height:400px; background:white; margin:-400px 10px 10px 600px; font-family: 'Noto Sans KR', sans-serif; background:#00aef0;">
     <ul>
     	<li style="list-style-type: none; text-align: center; font-size:40px;">공지 사항</li>
		<hr>
		<br>
     	<li style="list-style-type: none; text-align: center; font-size:18px;">본 게시판은 리뷰 및 정보를 공유하는데 목적이 있습니다.</li>
     	<br>
     	<li style="list-style-type: none; text-align: center;">상업적 홍보를 금지합니다.</li>
     	<li style="list-style-type: none; text-align: center;">특정 게스트하우스를 비하시 제재를 당합니다.</li>
     	<li style="list-style-type: none; text-align: center;">본인의 관점에서 느낀 그대로를 적어주세요.</li>
     	<li style="list-style-type: none; text-align: center;">본 게시글에 대한 모든 일은 본인 책임입니다.</li>
     	<li style="list-style-type: none; text-align: center;">이름은 본인의 실명을 입력해주세요.</li>
     	<li style="list-style-type: none; text-align: center;">관리자에 의해 글이 삭제될 수도 있습니다.</li>
     	<li style="list-style-type: none; text-align: center;">본 사이트는 게시글에 대한 법적 책임이 없습니다.</li>	
     	<br>
     	<hr>
     	<li style="list-style-type: none; text-align: center; font-size:25px;">본 사이트는 홍보 이외의 모든 문제에 대한 책임이 없습니다.</li>
     </ul>
 </div>
	</body>
	<footer>
	<div class="footer">
		<div class="sub1">
			<h2
				style="font-size: 20px; text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">한눈에
				비교</h2>
			<br>
			<p style="font-size: 15px; text-align: center;">대한민국 전국에 있는 모든
				게스트하우스를 한눈에 비교하여 마음에 쏙 드는 게스트하우스를 찾아보세요.</p>
		</div>
		<div class="sub2">
			<h2
				style="font-size: 20px; text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">후회하지
				않는 선택</h2>
			<br>
			<p style="font-size: 15px; text-align: center;">여러 게스트하우스를 비교하여
				자신이 원하는 게스트하우스를 선택하여 후회없는 여행이 됩니다.</p>
		</div>
		<div class="sub3">
			<h2
				style="font-size: 20px; text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">즐거운
				여행의 시작</h2>
			<br>
			<p style="font-size: 15px; text-align: center;">수많은 사람들이 한눈에 보자!
				게스트하우스에서 최고의 게스트하우스를 경험하였습니다.</p>
		</div>
		<div class="footer2">
			<div class="sns">
				SNS에서도 만날 수 있습니다! <br> <br> <a
					href="https://section.blog.naver.com/BlogHome.nhn" target="_blank">
					<img src="image/naver.jpg" height="32" alt="네이버"
					style="margin: 3px;">
				</a> <a href="https://www.youtube.com/" target="_blank"> <img
					src="image/youtube.jpg" height="32" alt="유투브" style="margin: 3px;">
				</a> <a href="https://twitter.com/" target="_blank"> <img
					src="image/twitter.jpg" height="32" alt="트위터" style="margin: 3px;">
				</a> <a href="https://www.facebook.com/" target="_blank"> <img
					src="image/fb.jpg" height="32" alt="페이스북" style="margin: 3px;">
				</a>
			</div>
			<div class="mobile">
				이제 스마트폰에서도 사용해보세요! <br> <br> <a
					href="https://play.google.com/store" target="_blank"> <img
					src="image/google.jpg" height="32" alt="구글"
					style="margin: 3px 5px;">
				</a> <a href="https://www.apple.com/kr/" target="_blank"> <img
					src="image/apple.jpg" height="32" alt="애플" style="margin: 3px 5px;">
				</a>
			</div>
			<br> <br> <br> <br> <br>
			<hr>
			<div class="copyright">Copyright @ Chung ho Kim All rights
				reserved,</div>
			<div class="right_copyrigth">홍보 이외의 문제는 본 사이트와 관련없습니다.</div>
		</div>

	</div>

	</footer>
</div>
</body>

</html>