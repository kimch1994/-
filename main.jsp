<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
<%@ page import="project.DBUtill"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
@import url('https://fonts.googleapis.com/css?family=Vollkorn+SC');
</style>
<meta http-equiv="X_UA_Compatible" content="chrome=1; charset=EUC-KR">
<title>한눈에 보자! 게스트하우스</title>
<link rel="stylesheet" type="text/css" href="layout.css"/>
</head>
<div class="wrap"> 
<body>
	<header>
		<div class="left_top"> <a href="main.jsp" target="_self"> <img src="./image/logo.jpg" >  </a>
		 
		<span class="right"style="padding: 10px 30px;">
			<ul>
				<li style="float:left; list-style-type : none; margin:10px 10px 10px 10px; font-family:Nanum Brush Script; font-size:25px;"> <a href="login.jsp" targrt="_self">로그인</a></li>
				<li style="float:left; list-style-type : none; margin:10px 10px 10px 10px; font-family:Nanum Brush Script; font-size:25px;" > <a href="member.jsp" target="_self">회원가입</a></li>
			</ul>
			<a style="margin: 10px 10px 10px -750px; font-size:70px; font-family: 'Nanum Pen Script', cursive;">한눈에 비교해보자! </a>
    	</span>
    	</div>
    </header>
	<article>
		<h2 style="margin:10px 0px 10px 600px ; font: bold 1.6em 'Nanum Gothic', sans-serif; color: #fff; font-size: 35px; text-align:center;">지역별 게스트 하우스</h2> 
			<div class="main"> 
				<div class="seoul">
				<a href="seoul.jsp" target="_self"><img src="./image/seoul.jpg"  style="border-radius:15px;" > </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">서울</div>
				</div>
				<div class="Busan">
				<a href="busan.jsp" target="_self"><img src="./image/busan.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">부산</div>
				</div>
				<div class="incheon">
				<a href="incheon.jsp" target="_self"><img src="./image/incheon.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">인천</div>
				</div>
				<div class="Jeju"> 
				<a href="jeju.jsp" target="_self"><img src="./image/jeju.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">제주</div>
				</div>
				<div class="Gyeongju"> 
				<a href="Gyeongju.jsp" target="_self"><img src="./image/Gyeongju.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">경주</div>
				</div>
				<div class="Daegu"> 
				<a href="daegu.jsp" target="_self"><img src="./image/Daegu.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">대구</div>
				</div>
				<div class="Daejeon">
				<a href="chun.jsp" target="_self"><img src="./image/chun.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">춘천</div>
				</div>
				<div class="Yeosu">
				<a href="yeosu.jsp" target="_self"><img src="./image/yeosu.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">여수</div>
				</div>
			</div>
			<h2 style="margin:-50px 0px 10px 80px; font: bold 1.6em 'Nanum Gothic', sans-serif; color: #fff; font-size: 35px">지금 인기있는 게스트하우스</h2>
			<div class="lating">
			<%
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		

		try {
			con = DBUtill.getMySQLConnection();
			sql = "select local,image,site,name,content from img order by score desc limit 3";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				String local=rs.getString("local");
				String image=rs.getString("image");
				String site=rs.getString("site");
				String name=rs.getString("name");
				String content=rs.getString("content");
				String check = image;
				System.out.println(local);
				System.out.println(check);
		%>
				<div style="margin:10px 10px 10px 10px; font-family:'Jeju Hallasan', sans-serif; font-size:20px;"> <%=local%></div>
					<div style="width:250px; height:150px; margin:17px 0px 0px 30px;"> <a href="<%=site%>"> <img src="<%=check%>" style="border-radius:20px;"> </a> </div>
					<div style="width:260px; height:150px; float:right; margin:-150px 15px 10px 10px; border:1px dashed blue; border-radius:20px;"> 
						 <div style="width:210px; height:40px; margin:35px 10px 10px 10px; font-family: 'KoPub Batang', serif;">지역 : <%= name %> </div>
						 <div style="width:210px; height:40px; margin:10px 10px 10px 10px; font-family: 'KoPub Batang', serif;">전화번호 : <%= content %></div>
					</div>
		<% 
			}

		} catch (Exception e) {
			out.println(e.toString());
			e.printStackTrace();
		} finally {
			//if(pstmt != null) pstmt.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();

			
		}
	%>
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