<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����, �Ѵ��� ����! �Խ�Ʈ�Ͽ콺</title>
<link rel="stylesheet" type="text/css" href="Submain.css"/>
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
@import url(//fonts.googleapis.com/earlyaccess/kopubbatang.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumbrushscript.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
@import url(//fonts.googleapis.com/earlyaccess/jejuhallasan.css);
@import url(//fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);
</style>
</head>
<div class="wrap">
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String e1 = (String) session.getAttribute("email");
		
	%>
	<header>
		<div class="left_top"> <a href="loginafter.jsp" target="_self"> <img src="./image/logo.jpg" >  </a> 
		<span class="right"style="padding: 10px 30px;">
			<ul>
				<li style="float:left; list-style-type : none; margin:5px 10px 10px 100px; font-family:Nanum Brush Script; font-size:25px;"> <a><%=e1 %> �� �ݰ����ϴ�.</a></li>
			</ul>
				<a href="list.jsp" targrt="_self" style="margin:0px 0px 0px 170px; font-family:Nanum Brush Script; font-size:25px; text-decoration: none;">�����Խ���</a>
				<form name="logout" method="post" action="logout.jsp">
				<input type="submit" value="�α׾ƿ�" style="margin:-25px 10px 10px 270px;">
				</form>
    	</span>
    	</div>
    </header>
    <article>
    	<div style="width:100%; height:1100px;"> <!-- ��ƼŬ �߰� ũ��  -->
    		<h2 style="margin:10px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px; width:500px; height:40px;">����</h2>
    		<div style="width:605px; height:238px; background:blue;  border:5px solid lightgreen; "> <iframe src="seoul1.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe> <p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;">
    		����Ư���ô� ���ѹα��� �������� �ִ� �����̴�. ������ ù ������ ���ʼ��̾���, ��� ���� �����̾�����, ������ ������ �� ���ķ� ������� ��������, ���� ������ ����, �����ιΰ�ȭ��, 
    		��������������ɺα���û, ���ѹα��� ��ġ����������ȸ����ȭ�� �߽��� ������ �ؿԴ�. ���� ���� �Ÿ��� 36.78 km, ���� ���� �Ÿ��� 30.3 km�̸�, ���̴� 605.25 km���̴�.</p></div>
    		<h3 style="float:right; margin:-280px 280px 10px 0px; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px;">������ �Խ�Ʈ �Ͽ콺</h3>
    		
    		<div style="width: 570px; height: 1100px; float: right; margin: -238px 10px 0px 0px;">
    		<div style="width: 570px; height: 275px; background:#00aef0;">
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/G.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.gguest.com" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">G �Խ�Ʈ�Ͽ콺</a> </p></div>  
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ���¿��� ��ġ�� �Խ�Ʈ�Ͽ콺�� ��, ���� ��� ���� 10~20�� �Ÿ��� �ְ��� ��ҿ� ��ġ��. �Ͽ콺�� ������ �ܱ��� ��Ÿ���̸� ������ �����̹��ø� �ּ����� ������ �Խ�Ʈ�Ͽ콺�̴�. ���� ��,�ܱ��� STAFF�� �׽� ������̹Ƿ� ����� �庮�� ������ �ʰ� ������ ���� �ִٴ� ���� �����̴�.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/g1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/g2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/g3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/g4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/g5.jpg" style="border:5px solid lightgray;"></div>
    			
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/aroha.jpg"><p style="margin:10px;flaot:left;"><a href="http://arohaguest.alltheway.kr"  style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">�Ʒ��� �Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ����ö���� ����ö 1ȣ���� �����ϴ� ���￪ ��ó�� ��ġ�ϰ������� ���빮��õ ����, N ���� Ÿ�� �� �� ����Ÿ��� ���� ���� ���� ��Ұ� ���� ��ġ�� �ִ�. ���� ������ ������� �̱����� ������ �ִ� ��Ÿ���� �����̸� �ֱٿ� ���𵨸��� �Ǿ� ������ �����⸦ �����ش�. ���� �ٸ� �Խ�Ʈ �Ͽ콺�� �ٸ����� ������ �������ش�.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/a1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/a2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/a3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/a4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/a5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/vi.jpg"><p style="margin:10px;flaot:left;"><a href="http://visionguesthouse.kr/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">���� �Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ������ ������ �Խ�Ʈ�Ͽ콺�� ��ǿ� ��ġ�� �� �Խ�Ʈ �Ͽ콺 �ְ������νð��� �ǳ����׸���� ��Ȱ�� ǰ���� �޸��մϴ�. ���� �������� �������� �Խǻ��� ���� �����̹��ø� �����ָ� �ֺ� �������δ� ��ǷԵ�����, ��2�Ե������,�Ե���ȭ��,���̸���,����ȣ�� ���� �ֽ��ϴ�.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/b1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/b2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/b3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/b4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/b5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/hue.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.hugahaus.com/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">�ް� �Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> �����/����뿡�� ���� ����� �Խ�Ʈ�Ͽ콺 �̸� �ֺ��� ���а����� ���� ���̶� ���л����� ���ư� ������ ���� �� ������ �ֺ� 30�� �Ÿ� ������ ���� �������� �ִ�. �����ڰ� ��õ�ϴ� ������ �� ������ ķ�۽��� ���ƺ��� ķ�۽� ������ ��õ�Ѵ�. ���� ���ѹα� ������ ������� ȫ�� ������� ��ġ�Ѵ�.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/h1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/h2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/h3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/h4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/h5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		
    		</div>
    		
    		<h2 style="margin:120px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">�ְ��� ����</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen;"> 
    	<iframe src="seoul2.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> ������ ���� ������ ���ĵ��� ���ִ� ���̸� ���¿�,ȫ���� ���� �����̵��� ���� �ٴϴ� �Ÿ������� �ؿ� ���Ķ��� ���� �� �������� �����Ÿ��ȿ��� ���� ������ �� �� ���ִ� ���� �����̴�. ��ǥ���� �������δ�
    	</div>
   		<h2 style="margin:78px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">���� ������</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen;"> 
    	<iframe src="seoul3.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> ������ ������ ���� �ձõ��� �������� ���� ������ �������� ���� ���� �ִ�. </p>
    	</div> 
    	</div>
    </article>
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