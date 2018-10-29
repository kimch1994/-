<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>서울, 한눈에 보자! 게스트하우스</title>
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
    		<h2 style="margin:10px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px; width:500px; height:40px;">서울</h2>
    		<div style="width:605px; height:238px; background:blue;  border:5px solid lightgreen; "> <iframe src="seoul1.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe> <p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;">
    		서울특별시는 대한민국의 수도이자 최대 도시이다. 백제의 첫 수도인 위례성이었고, 고려 때는 남경이었으며, 조선의 수도가 된 이후로 현재까지 대한제국, 일제 강점기 조선, 조선인민공화국, 
    		재조선미육군사령부군정청, 대한민국의 정치·경제·사회·문화의 중심지 역할을 해왔다. 동서 간의 거리는 36.78 km, 남북 간의 거리는 30.3 km이며, 넓이는 605.25 km²이다.</p></div>
    		<h3 style="float:right; margin:-280px 280px 10px 0px; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px;">서울의 게스트 하우스</h3>
    		
    		<div style="width: 570px; height: 1100px; float: right; margin: -238px 10px 0px 0px;">
    		<div style="width: 570px; height: 275px; background:#00aef0;">
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/G.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.gguest.com" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">G 게스트하우스</a> </p></div>  
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 이태원에 위치한 게스트하우스로 명동, 강남 모든 지역 10~20분 거리의 최고의 장소에 위치함. 하우스의 느낌은 외국식 스타일이며 개인의 프라이버시를 최선으로 생각한 게스트하우스이다. 또한 내,외국인 STAFF가 항시 대기중이므로 언어의 장벽을 느끼지 않고 여행을 즐길수 있다는 것이 장점이다.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/g1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/g2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/g3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/g4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/g5.jpg" style="border:5px solid lightgray;"></div>
    			
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    		<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/aroha.jpg"><p style="margin:10px;flaot:left;"><a href="http://arohaguest.alltheway.kr"  style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">아로하 하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 공항철도와 지하철 1호선이 교차하는 서울역 근처에 위치하고있으며 남대문노천 시장, N 서울 타워 및 명동 쇼핑타운과 같은 쇼핑 관광 명소가 많이 위치해 있다. 또한 객실의 분위기는 이국적인 느낌을 주는 스타일의 객실이며 최근에 리모델링이 되어 쾌적한 분위기를 보여준다. 또한 다른 게스트 하우스와 다른점은 조식을 제공해준다.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/a1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/a2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/a3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/a4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/a5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/vi.jpg"><p style="margin:10px;flaot:left;"><a href="http://visionguesthouse.kr/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">비젼 하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 원룸텔 형식의 게스트하우스로 잠실에 위치한 이 게스트 하우스 최고급자재로시공한 실내인테리어로 생활의 품격을 달리합니다. 또한 원룸텔의 느낌으로 입실생의 개인 프라이버시를 지켜주며 주변 관광지로는 잠실롯데월드, 제2롯데월드몰,롯데백화점,신촌먹자,석촌호수 등이 있습니다.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/b1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/b2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/b3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/b4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/b5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		<hr>
    		<div style="width: 570px; height: 275px; background:#00aef0;"> 
    			<br>
    			<div style="width:150px; height:150px; margin:0px 15px -10px 15px; border:5px solid lightgray"><img src="./house/seoul//1/hue.jpg"><p style="margin:10px;flaot:left;"><a href="http://www.hugahaus.com/" style="text-decoration:none; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff;">휴가 하우스</a></p></div>
    			<div style="width:370px; height:150px; margin:-160px -30px 30px 180px; background:#00aef0; border:5px solid lightpink; font-family: 'KoPub Batang', serif;"> 고려대/경희대에서 가장 가까운 게스트하우스 이며 주변에 대학가들이 많은 곳이라 대학생으로 돌아간 느낌을 받을 수 있으며 주변 30분 거리 안으로 많은 관광지가 있다. 관리자가 추천하는 여행은 각 대학의 캠퍼스를 돌아보는 캠퍼스 여행을 추천한다. 또한 대한민국 최초의 수목원인 홍릉 수목원이 위치한다.</div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-73px 0px 0px 30px; "> <img src="./seoul/h1.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 110px; "> <img src="./seoul/h2.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 190px; "> <img src="./seoul/h3.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 270px; "> <img src="./seoul/h4.jpg" style="border:5px solid lightgray;"></div>
    			<div class="sample_image" style="width:50px; height:50px; margin:-50px 0px 0px 350px; "> <img src="./seoul/h5.jpg" style="border:5px solid lightgray;"></div>
    		</div>
    		
    		</div>
    		
    		<h2 style="margin:120px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">최고의 맛집</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen;"> 
    	<iframe src="seoul2.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> 서울은 여러 지방의 음식들이 모여있는 곳이며 이태원,홍대등과 같은 젊은이들이 많이 다니는 거리에서는 해외 음식또한 접해 볼 수있으며 가까운거리안에서 많은 음식을 맛 볼 수있는 좋은 지역이다. 대표적인 음식으로는
    	</div>
   		<h2 style="margin:78px 10px 10px ; font: bold 1.3em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #fff; font-size: 30px">유명 관광지</h2>
    	<div style="width:605px; height:238px; background:blue; border:5px solid lightgreen;"> 
    	<iframe src="seoul3.html" width="605px" height="238px" frameborder="0" scrolling="no"> </iframe>
    	<p style="margin:10px; font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; color: #222;"> 서울은 과거의 조선 왕궁들이 모여있으며 과거 조선의 유적지를 많이 볼수 있다. </p>
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