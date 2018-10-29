<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>대구, 한눈에 보자! 게스트하우스</title>
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
				<li style="float:left; list-style-type : none; margin:5px 10px 10px 100px; font-family:Nanum Brush Script; font-size:25px;"> <a><%=e1 %> 님 반갑습니다.</a></li>
			</ul>
				<a href="list.jsp" targrt="_self" style="margin:0px 0px 0px 170px; font-family:Nanum Brush Script; font-size:25px; text-decoration: none;">자유게시판</a>
				<form name="logout" method="post" action="logout.jsp">
				<input type="submit" value="로그아웃" style="margin:-25px 10px 10px 270px;">
				</form>
    	</span>
    	</div>
    </header>
    <article>
    	<div style="width:100%; height:1100px;"> <!-- 아티클 중간 크기  -->
    		<h2 style="margin:10px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px; width:500px; height:40px;">대구</h2>
    		<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen"> <iframe src="daegu1.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe> <p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;">
    		대구광역시는 대한민국 동남부 내륙에 위치한 광역시이다. 동쪽으로 경상북도 경산시, 영천시, 서쪽으로 고령군, 성주군, 북쪽으로 군위군, 칠곡군, 남쪽으로는 청도군, 경상남도 창녕군과 인접한다. 팔공산과 비슬산 등 높은 산으로 둘러싸인 분지 지형으로 인해 대한민국에서 가장 기온이 높은 편에 속하는 도시이며, 대구 특수형 기후 지역으로 분류된다. 조선시대에는 경상 감영 소재지로서 영남 지방의 중심지였다.</p></div>
    		<h3 style="float:right; margin:-280px 280px 10px 0px; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px;">대구의 게스트 하우스</h3>
    		
    		<div style="width: 570px; height: 1100px; float: right; margin: -238px 10px 0px 0px;">
    		<div style="width: 570px; height: 275px; background:#00aef0;">
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/daegu/be.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.gguest.com" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">베스타 하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 대구에 위치한 베스타 대구 게스트하우스는 이월드에서 1km 거리에 있으며, 무료 WiFi를 완비하고 있습니다. 모든 객실은 공용 욕실을 갖추고 있습니다.  </div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./daegu/b1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./daegu/b2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./daegu/b3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./daegu/b4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./daegu/b5.jpg" style="border:5px solid lightgray;"></div>
    			
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/daegu/pan.jpg"><p style="margin:10px;flaot:left;"><a href="http://arohaguest.alltheway.kr"  style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">판 게스트하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 판 게스트하우스는 경상감영공원에서 도보로 3분, 대구역(지하철 1호선)에서 도보로 5분 거리에 있으며, 레스토랑과 무료 Wi-Fi를 제공합니다. 기숙사형 객실과 한식 객실에는 냉난방 시설이 완비되어 있으며, 욕실은 공용입니다. </div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./daegu/p1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./daegu/p2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./daegu/p3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./daegu/p4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./daegu/p5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/daegu/ha.jpg"><p style="margin:10px;flaot:left;"><a href="http://visionguesthouse.kr/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">해피 게스트하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 해피 하우스는 대구에 위치하고, 무료 Wi-Fi와 주방을 갖춘 아파트를 제공합니다. 아파트에 발코니, 평면 TV, 욕조 또는 샤워 시설이 완비된 전용 욕실이 있습니다. 전자레인지와 주전자도 마련되어 있습니다.  
    			</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./daegu/h1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./daegu/h2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./daegu/h3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./daegu/h4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./daegu/h5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/daegu/on.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.hugahaus.com/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">온나 게스트하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 대구에 위치한 온나 게스트하우스는 이월드에서 2.7km 거리에 있으며, 에어컨이 완비된 객실을 보유하고 있습니다. 숙소 전역에 무료 Wi-Fi가 제공됩니다. 구내 바에서 음료를 즐겨 보십시오. 객실마다 공용 욕실이 마련되어 있습니다.  </div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./daegu/o1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./daegu/o2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./daegu/o3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./daegu/o4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./daegu/o5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		
    		</div>
    		
    		<h2 style="margin:120px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">최고의 맛집</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen"> 
    	<iframe src="daegu2.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> 대구하면 대부분 막창을 떠올린다. 하지만 대구에는 10대 먹거리가 있다. 따로국밥 복어불고기 뭉티기 동인동 찜갈비 누른국수 납작만두 소막창구이 야끼우동 무침회 논메기매운탕이 있다.
    	</div>
   		<h2 style="margin:78px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">유명 관광지</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen"> 
    	<iframe src="daegu3.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> 음악을 좋아하는 사람이면 대구는 가수 김광석의 고향인 것을 알 수있다. 김광석다시그리기길, 과거의 향수를 느낄수 있는 대구도시철도 , 대구를 한눈에 볼 수 있는 83타워 , 테마파크인 이월드가 있다. </p>
    	</div> 
    	</div>
    </article>
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