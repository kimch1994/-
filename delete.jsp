<%@page import="java.util.Date"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="javafx.util.converter.DateStringConverter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Ѵ��� ����! �Խ�Ʈ�Ͽ콺</title>
<link rel="stylesheet" type="text/css" href="board.css" />
<script language="javascript">
	// �ڹ� ��ũ��Ʈ ����

	function deleteCheck() {
		var form = document.deleteform;

		if (!form.password.value) {
			alert("��й�ȣ�� �����ּ���");
			form.password.focus();
			return;
		}
		form.submit();
	}
</script>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	int pg = Integer.parseInt(request.getParameter("pg"));
%>
</head>
<div class="wrap">
	<body>
		<header>
		<div class="left_top">
			<a href="loginafter.jsp" target="_self"> <img src="./image/logo.jpg">
			</a>
		</div>
		</header>
		<table>
		<form name=deleteform method=post action="delete_ok.jsp?idx=<%=idx%>&pg=<%=pg%>">
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr
							style="background: url('image/table_mid.gif') repeat-x; text-align: center;">
							<td width="5"><img src="image/table_left.gif" width="5"
								height="30" /></td>
							<td>����</td>
							<td width="5"><img src="image/table_right.gif" width="5"
								height="30" /></td>
						</tr>
					</table>
					<table>
						<tr>
							<td>&nbsp;</td>
							<td align="center">��й�ȣ</td>
							<td><input name="password" type="password" size="50"
								maxlength="100"></td>
							<td>&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4"></td>
						</tr>
						<tr height="1" bgcolor="#82B5DF">
							<td colspan="4"></td>
						</tr>
						<tr align="center">
							<td>&nbsp;</td>
							<td colspan="2"><input type=button value="����" OnClick="javascript:deleteCheck();"> <input
								type=button value="���" OnClick="javascript:history.back(-1);">
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
			</form>
		</table>
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