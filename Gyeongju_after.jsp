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
    		<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen"> <iframe src="Gyeongju1.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe> <p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;">
    		���ֽô� ���ѹα� ���ϵ� �����ο� �ִ� ���̴�. �Ŷ��� �Ǳ� �ʱ���� �Ŷ� ������� �����, �ݼ� ������ �پ��ϰ� �ҷ����� 992�� ���� �Ŷ��� ��������. ������ �̸��� '����'�� �Ҹ� ���� 935���̴�. ���� ����, �踲�� ������ �ٲ���ٰ� ���� �ô뿡 �ٽ� ���ַ� �ٲ������ ���� ������ ������ ������ �ߴ�.</p></div>
    		<h3 style="float:right; margin:-280px 280px 10px 0px; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px;">������ �Խ�Ʈ �Ͽ콺</h3>
    		
    		<div style="width: 570px; height: 1100px; float: right; margin: -238px 10px 0px 0px;">
    		<div style="width: 570px; height: 275px; background:#00aef0;">
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/gyeongju/g.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.gguest.com" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">���� �Խ�Ʈ�Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ���� ���������� ������ 5�� �Ÿ��� ���� ��ġ�� �ڶ��ϴ� ���� �Խ�Ʈ�Ͽ콺�� WiFi, ������ �� ��ǰ �����Ҹ� ��� ����� �����մϴ�. ������ ������ �������� ��Ŀ�� ���߰� ������, ��ǿ��� ������� ������̾ ��ġ�Ǿ� �ֽ��ϴ�.  </div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./gyeongju/g1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./gyeongju/g2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./gyeongju/g3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./gyeongju/g4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./gyeongju/g5.jpg" style="border:5px solid lightgray;"></div>
    			
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/gyeongju/h.jpg"><p style="margin:10px;flaot:left;"><a href="http://arohaguest.alltheway.kr"  style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">ȭ�� �Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ȭ�� �Խ�Ʈ�Ͽ콺�� ���ֿ��忡�� 6km �Ÿ��� ��ġ�� ���� �ü��Դϴ�. ȭ�� �Խ�Ʈ�Ͽ콺�� �������� ���Ǹ� ���� ������, ���� ���鵵���� ������̾ �����ϸ�, ���� ������ ���� WiFi�� �Ϻ��ϰ� �ֽ��ϴ�. 
    			 </div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./gyeongju/h1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./gyeongju/h2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./gyeongju/h3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./gyeongju/h4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./gyeongju/h5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/gyeongju/c.jpg"><p style="margin:10px;flaot:left;"><a href="http://visionguesthouse.kr/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">������ �Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ������ ���� ���� �αٿ� ��ġ�� ������ �Խ�Ʈ�Ͽ콺�� ���� ���� �� �����丮 ��Ÿ�� ������ ��� ���߰� ������, �� �������� ���� WiFi�� �����մϴ�. ���� �ѽ� ������ ���� �����Ǹ�, ������ �뿩�� �߰� ������� �����մϴ�. 
    			</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./gyeongju/c1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./gyeongju/c2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./gyeongju/c3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./gyeongju/c4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./gyeongju/c5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/gyeongju/gg.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.hugahaus.com/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">���� �Ͽ콺</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> ���� WiFi, ������ �뿩 ���񽺿� ������ ���� ������ �����ϴ� ���� �Խ�Ʈ �Ͽ콺�� ���� ���������� ������ �� 5�� �Ÿ��� �ֽ��ϴ�. ���ǿ� �������� �Ϻ�Ǿ� ������, ���� ��ǿ��� ���� �ü��� ������̾ ����Ǿ� �ֽ��ϴ�.  </div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./gyeongju/gg1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./gyeongju/gg2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./gyeongju/gg3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./gyeongju/gg4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./gyeongju/gg5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		
    		</div>
    		
    		<h2 style="margin:120px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">�ְ��� ����</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen"> 
    	<iframe src="Gyeongju2.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> ������ �԰Ÿ��� �������� ��ǥ���̴�. ���� �λ�� �񱳵Ǵ� �и��� �ſ� �����ϴ�. ���� ���ֻ��� �湫����� ���ְ� �ڶ��ϴ� �԰Ÿ� �߿� �ϳ��̴�.
    	</div>
   		<h2 style="margin:78px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">���� ������</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen"> 
    	<iframe src="Gyeongju3.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> ���ִ� �������� �ſ� ���� �����̴�. �� �Ŷ� �ô��� ����� �������ִ� ���������� ����. ��ǥ������ �ұ���� �ѿ������� ��ǥ���̴�. </p>
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