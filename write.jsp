<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Ѵ��� ����! �Խ�Ʈ�Ͽ콺</title>
<link rel="stylesheet" type="text/css" href="board.css"/>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
</style>
<script language = "javascript"> // �ڹ� ��ũ��Ʈ ����
function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.name.value )   // form �� �ִ� name ���� ���� ��
   {
    alert( "�̸��� �����ּ���" ); // ���â ���
    form.name.focus();   // form �� �ִ� name ��ġ�� �̵�
    return;
   }
   
   if( !form.password.value )
   {
    alert( "��й�ȣ�� �����ּ���" );
    form.password.focus();
    return;
   }
   
  if( !form.title.value )
   {
    alert( "������ �����ּ���" );
    form.title.focus();
    return;
   }
 
  if( !form.memo.value )
   {
    alert( "������ �����ּ���" );
    form.memo.focus();
    return;
   }
 
  form.submit();
  }
 </script>
</head>
<div class="wrap"> 
<body>
	<header>
		<div class="left_top"> <a href="main.jsp" target="_self"> <img src="./image/logo.jpg" >  </a> 
    	</div>
    </header>
   	<table>
   	<form name=writeform method=post action="write_ok.jsp">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('image/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="image/table_left.gif" width="5" height="30" /></td>
      <td>�۾���</td>
      <td width="5"><img src="image/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">����</td>
      <td><input name="title" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">�̸�</td>
      <td><input name="name" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">��й�ȣ</td>
      <td><input name="password" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">����</td>
      <td><select name="local">
      <option value = "G �Խ�Ʈ�Ͽ콺">G �Խ�Ʈ�Ͽ콺</option>
      <option value = "�Ʒ��� �Ͽ콺">�Ʒ��� �Ͽ콺</option>
      <option value = "���� �Ͽ콺">���� �Ͽ콺</option>
      <option value = "�ް� �Ͽ콺">�ް� �Ͽ콺</option>
      <option value = "ĵ���� ȣ����">ĵ���� ȣ����</option>
      <option value = "���̺� �Ͽ콺">���̺� �Ͽ콺</option>
      <option value = "��� �Ͽ콺">��� �Ͽ콺</option>
      <option value = "��� �Ͽ콺">��� �Ͽ콺</option>
      <option value = "��� �Ͽ콺">��� �Ͽ콺</option>
      <option value = "ũ��� �Ͽ콺">ũ��� �Ͽ콺</option>
      <option value = "���ο� �Ͽ콺">���ο� �Ͽ콺</option>
      <option value = "�� �� �����Ͽ콺">�� �� �����Ͽ콺</option>
      <option value = "���� �Ͽ콺">���� �Ͽ콺</option>
      <option value = "���ؾ��� �Ͽ콺">���ؾ��� �Ͽ콺</option>
      <option value = "���� �Ͽ콺">���� �Ͽ콺</option>
      <option value = "�Ҹ� �Խ�Ʈ�Ͽ콺">�Ҹ� �Խ�Ʈ�Ͽ콺</option>
      <option value = "���� �Խ�Ʈ�Ͽ콺">���� �Խ�Ʈ�Ͽ콺</option>
      <option value = "ȭ�� �Ͽ콺">ȭ�� �Ͽ콺</option>
      <option value = "������ �Ͽ콺">������ �Ͽ콺</option>
      <option value = "���� �Ͽ콺">���� �Ͽ콺</option>
      <option value = "����Ÿ �Ͽ콺">����Ÿ �Ͽ콺</option>
      <option value = "�� �Խ�Ʈ�Ͽ콺">�� �Խ�Ʈ�Ͽ콺</option>
      <option value = "���� �Խ�Ʈ�Ͽ콺">���� �Խ�Ʈ�Ͽ콺</option>
      <option value = "�³� �Խ�Ʈ�Ͽ콺">�³� �Խ�Ʈ�Ͽ콺</option>
      <option value = "�轺 �Ͽ콺">�轺 �Ͽ콺</option>
      <option value = "���� �Ͽ콺">���� �Ͽ콺</option>
      <option value = "�踲����">�踲����</option>
      <option value = "���� �Ͽ콺">���� �Ͽ콺</option>
      <option value = "���� �� �Ͽ콺">���� �� �Ͽ콺</option>
      <option value = "����� �Ͽ콺">����� �Ͽ콺</option>
      <option value = "�� �Ͽ콺">�� �Ͽ콺</option>
      <option value = "���̸� �Ͽ콺">���̸� �Ͽ콺</option>
      </select>
      <select name="score">
      	<option value = "1">1</option>
      	<option value = "2">2</option>
      	<option value = "3">3</option>
      	<option value = "4">4</option>
      	<option value = "5">5</option>
      	<option value = "6">6</option>
      	<option value = "7">7</option>
      	<option value = "8">8</option>
      	<option value = "9">9</option>
      	<option value = "10">10</option>
      </select>
      </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">����</td>
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="���" OnClick="javascript:writeCheck();">
       <input type=button value="���" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
  </form>
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
			<h2 style="font-size:20px;  text-align: center; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">�Ѵ��� ��</h2>
			<br>
			<p style="font-size:15px;  text-align: center;"> ���ѹα� ������ �ִ� ��� �Խ�Ʈ�Ͽ콺�� �Ѵ��� ���Ͽ� ������ �� ��� �Խ�Ʈ�Ͽ콺�� ã�ƺ�����. </p>
			</div>
			<div class="sub2">
			<h2 style="font-size:20px; text-align: center;  font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">��ȸ���� �ʴ� ����</h2>
			<br>
			<p style="font-size:15px;  text-align: center;">���� �Խ�Ʈ�Ͽ콺�� ���Ͽ� �ڽ��� ���ϴ� �Խ�Ʈ�Ͽ콺�� �����Ͽ� ��ȸ���� ������ �˴ϴ�.</p>
			</div>
			<div class="sub3">
			<h2 style="font-size:20px; text-align: center;  font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif;">��ſ� ������ ����</h2>
			<br>
			<p style="font-size:15px;  text-align: center;">������ ������� �Ѵ��� ����! �Խ�Ʈ�Ͽ콺���� �ְ��� �Խ�Ʈ�Ͽ콺�� �����Ͽ����ϴ�.</p>
			</div>
			<div class="footer2"> 
				<div class="sns"> 
				SNS������ ���� �� �ֽ��ϴ�!
				<br>
				<br>
				<a href="https://section.blog.naver.com/BlogHome.nhn" target="_blank">
           		<img src="image/naver.jpg" height="32" alt="���̹�" style="margin:3px;">
       			</a>
       			<a href="https://www.youtube.com/" target="_blank">
           		<img src="image/youtube.jpg" height="32" alt="������" style="margin:3px;">
      			</a>
       			<a href="https://twitter.com/" target="_blank">
          		<img src="image/twitter.jpg" height="32" alt="Ʈ����" style="margin:3px;" >
       			</a>
       			<a href="https://www.facebook.com/" target="_blank">
           		<img src="image/fb.jpg" height="32" alt="���̽���" style="margin:3px;">
       			</a>
				</div>
				<div class="mobile">
				���� ����Ʈ�������� ����غ�����!
				<br>
				<br>
				<a href="https://play.google.com/store" target="_blank">
           		<img src="image/google.jpg" height="32" alt="����" style="margin:3px 5px;">
       			</a>
       			<a href="https://www.apple.com/kr/" target="_blank">
           		<img src="image/apple.jpg" height="32" alt="����" style="margin:3px 5px;">
      			</a>
				</div>
				<br>
				<br>
				<br>
				<br>
				<br>
				<hr>
				<div class="copyright">Copyright @ Chung ho Kim All rights reserved, </div>
				<div class="right_copyrigth">ȫ�� �̿��� ������ �� ����Ʈ�� ���þ����ϴ�.</div>
			</div>
			
		</div>
		
	</footer>
</div>
</body>

</html>