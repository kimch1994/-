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
<title>�Ѵ��� ����! �Խ�Ʈ�Ͽ콺</title>
<link rel="stylesheet" type="text/css" href="layout.css"/>
</head>
<div class="wrap"> 
<body>
	<header>
		<div class="left_top"> <a href="main.jsp" target="_self"> <img src="./image/logo.jpg" >  </a>
		 
		<span class="right"style="padding: 10px 30px;">
			<ul>
				<li style="float:left; list-style-type : none; margin:10px 10px 10px 10px; font-family:Nanum Brush Script; font-size:25px;"> <a href="login.jsp" targrt="_self">�α���</a></li>
				<li style="float:left; list-style-type : none; margin:10px 10px 10px 10px; font-family:Nanum Brush Script; font-size:25px;" > <a href="member.jsp" target="_self">ȸ������</a></li>
			</ul>
			<a style="margin: 10px 10px 10px -750px; font-size:70px; font-family: 'Nanum Pen Script', cursive;">�Ѵ��� ���غ���! </a>
    	</span>
    	</div>
    </header>
	<article>
		<h2 style="margin:10px 0px 10px 600px ; font: bold 1.6em 'Nanum Gothic', sans-serif; color: #fff; font-size: 35px; text-align:center;">������ �Խ�Ʈ �Ͽ콺</h2> 
			<div class="main"> 
				<div class="seoul">
				<a href="seoul.jsp" target="_self"><img src="./image/seoul.jpg"  style="border-radius:15px;" > </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">����</div>
				</div>
				<div class="Busan">
				<a href="busan.jsp" target="_self"><img src="./image/busan.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">�λ�</div>
				</div>
				<div class="incheon">
				<a href="incheon.jsp" target="_self"><img src="./image/incheon.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">��õ</div>
				</div>
				<div class="Jeju"> 
				<a href="jeju.jsp" target="_self"><img src="./image/jeju.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">����</div>
				</div>
				<div class="Gyeongju"> 
				<a href="Gyeongju.jsp" target="_self"><img src="./image/Gyeongju.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">����</div>
				</div>
				<div class="Daegu"> 
				<a href="daegu.jsp" target="_self"><img src="./image/Daegu.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">�뱸</div>
				</div>
				<div class="Daejeon">
				<a href="chun.jsp" target="_self"><img src="./image/chun.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">��õ</div>
				</div>
				<div class="Yeosu">
				<a href="yeosu.jsp" target="_self"><img src="./image/yeosu.jpg" style="border-radius:15px;"> </a>
				<div style=" opacity:0.8; background:black; margin: -19px 0px -19px 0px; color:#fff; font: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0 5px; min-height: 21px;line-height: 21px;">����</div>
				</div>
			</div>
			<h2 style="margin:-50px 0px 10px 80px; font: bold 1.6em 'Nanum Gothic', sans-serif; color: #fff; font-size: 35px">���� �α��ִ� �Խ�Ʈ�Ͽ콺</h2>
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
						 <div style="width:210px; height:40px; margin:35px 10px 10px 10px; font-family: 'KoPub Batang', serif;">���� : <%= name %> </div>
						 <div style="width:210px; height:40px; margin:10px 10px 10px 10px; font-family: 'KoPub Batang', serif;">��ȭ��ȣ : <%= content %></div>
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