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
<title>�Ѵ��� ����! �Խ�Ʈ�Ͽ콺</title>
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
							<td>�� ��</td>
							<td width="5"><img src="image/table_right.gif" width="5"
								height="30" /></td>
						</tr>
					</table>
					<table width="413">
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">�۹�ȣ</td>
							<td width="319"><%=idx%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">��ȸ��</td>
							<td width="319"><%=hit%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">�̸�</td>
							<td width="319"><%=name%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">�ۼ���</td>
							<td width="319"><%=time%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="76">����</td>
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
							<td colspan="2" width="399"><input type=button value="�۾���"
								OnClick="window.location='write.jsp'"> 
								<input type=button value="���" OnClick="window.location='reply.jsp?idx=<%=idx%>&pg=<%=pg%>'"> 
								<input type=button value="���" OnClick="window.location='list.jsp?pg=<%=pg%>'">
								<input type=button value="����" OnClick="window.location='modify.jsp?idx=<%=idx%>&pg=<%=pg%>'"> 
								<input type=button value="����" OnClick="window.location='delete.jsp?idx=<%=idx%>&pg=<%=pg%>'">
							<td width="0">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div style="width:500px; height:400px; background:white; margin:-400px 10px 10px 600px; font-family: 'Noto Sans KR', sans-serif; background:#00aef0;">
     <ul>
     	<li style="list-style-type: none; text-align: center; font-size:40px;">���� ����</li>
		<hr>
		<br>
     	<li style="list-style-type: none; text-align: center; font-size:18px;">�� �Խ����� ���� �� ������ �����ϴµ� ������ �ֽ��ϴ�.</li>
     	<br>
     	<li style="list-style-type: none; text-align: center;">����� ȫ���� �����մϴ�.</li>
     	<li style="list-style-type: none; text-align: center;">Ư�� �Խ�Ʈ�Ͽ콺�� ���Ͻ� ���縦 ���մϴ�.</li>
     	<li style="list-style-type: none; text-align: center;">������ �������� ���� �״�θ� �����ּ���.</li>
     	<li style="list-style-type: none; text-align: center;">�� �Խñۿ� ���� ��� ���� ���� å���Դϴ�.</li>
     	<li style="list-style-type: none; text-align: center;">�̸��� ������ �Ǹ��� �Է����ּ���.</li>
     	<li style="list-style-type: none; text-align: center;">�����ڿ� ���� ���� ������ ���� �ֽ��ϴ�.</li>
     	<li style="list-style-type: none; text-align: center;">�� ����Ʈ�� �Խñۿ� ���� ���� å���� �����ϴ�.</li>	
     	<br>
     	<hr>
     	<li style="list-style-type: none; text-align: center; font-size:25px;">�� ����Ʈ�� ȫ�� �̿��� ��� ������ ���� å���� �����ϴ�.</li>
     </ul>
 </div>
	</body>
	<footer>
	<div class="footer">
		<div class="sub1">
			<h2
				style="font-size: 20px; text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">�Ѵ���
				��</h2>
			<br>
			<p style="font-size: 15px; text-align: center;">���ѹα� ������ �ִ� ���
				�Խ�Ʈ�Ͽ콺�� �Ѵ��� ���Ͽ� ������ �� ��� �Խ�Ʈ�Ͽ콺�� ã�ƺ�����.</p>
		</div>
		<div class="sub2">
			<h2
				style="font-size: 20px; text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">��ȸ����
				�ʴ� ����</h2>
			<br>
			<p style="font-size: 15px; text-align: center;">���� �Խ�Ʈ�Ͽ콺�� ���Ͽ�
				�ڽ��� ���ϴ� �Խ�Ʈ�Ͽ콺�� �����Ͽ� ��ȸ���� ������ �˴ϴ�.</p>
		</div>
		<div class="sub3">
			<h2
				style="font-size: 20px; text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">��ſ�
				������ ����</h2>
			<br>
			<p style="font-size: 15px; text-align: center;">������ ������� �Ѵ��� ����!
				�Խ�Ʈ�Ͽ콺���� �ְ��� �Խ�Ʈ�Ͽ콺�� �����Ͽ����ϴ�.</p>
		</div>
		<div class="footer2">
			<div class="sns">
				SNS������ ���� �� �ֽ��ϴ�! <br> <br> <a
					href="https://section.blog.naver.com/BlogHome.nhn" target="_blank">
					<img src="image/naver.jpg" height="32" alt="���̹�"
					style="margin: 3px;">
				</a> <a href="https://www.youtube.com/" target="_blank"> <img
					src="image/youtube.jpg" height="32" alt="������" style="margin: 3px;">
				</a> <a href="https://twitter.com/" target="_blank"> <img
					src="image/twitter.jpg" height="32" alt="Ʈ����" style="margin: 3px;">
				</a> <a href="https://www.facebook.com/" target="_blank"> <img
					src="image/fb.jpg" height="32" alt="���̽���" style="margin: 3px;">
				</a>
			</div>
			<div class="mobile">
				���� ����Ʈ�������� ����غ�����! <br> <br> <a
					href="https://play.google.com/store" target="_blank"> <img
					src="image/google.jpg" height="32" alt="����"
					style="margin: 3px 5px;">
				</a> <a href="https://www.apple.com/kr/" target="_blank"> <img
					src="image/apple.jpg" height="32" alt="����" style="margin: 3px 5px;">
				</a>
			</div>
			<br> <br> <br> <br> <br>
			<hr>
			<div class="copyright">Copyright @ Chung ho Kim All rights
				reserved,</div>
			<div class="right_copyrigth">ȫ�� �̿��� ������ �� ����Ʈ�� ���þ����ϴ�.</div>
		</div>

	</div>

	</footer>
</div>
</body>

</html>