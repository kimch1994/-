<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한눈에 보자! 게스트하우스</title>
<script type="text/javascript">
	function check() {
		
		if (!document.member.email.value) {
			alert("이메일을 입력하세요.");
			return false;
		} 
		if (!document.member.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		if (!document.member.password_check.value) {
			alert("비밀번호를 한번 더 입력하세요.");
			return false;
		}
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.member.password.value != document.member.password_check.value) {
			alert("동일한 비밀번호가 아닙니다.");
			return false;
		}
		if (!document.member.phone.value) {
			alert("핸드폰 번호를 입력해주세요.");
			return false;
		}
		alert("회원가입을 축하합니다. 메인으로 이동합니다.");
	}
</script>
<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
    display: block;
}
body {
    line-height: 1;
}
ol, ul {
    list-style: none;
}
blockquote, q {
    quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
 
 
    html, body { height:100%; margin:0px; padding:0px; }

    .wrapper { width:100%; height:100%; background-image:url(./image/back.jpg); background-position:center; font-family: '돋움';}
    .main { padding-top:148px;}
    .logo { width:430px; margin:0 auto -10px; cursor:pointer;}
    .logo img { width:400px; height:150px;}
    
    .login_box { width:337px; height:400px; padding: 45px 44px 38px 44px; margin: 0 auto; background-color: #fff; opacity: 0.8; 
                 border-radius:5px; border: 1px solid #ebebeb;}
    .login_box .input_login { border-bottom: 2px solid #c4c5c4; padding: 20px 0 9px 0;}
    .login_box .input_login input { width: 100%; color: #828180; font-size: 15px; border:none; font-family:inherit;}
    .login_box .check { color: #000; font-size: 14px; padding: 9px 0 15px 0; font-family: '돋움';}
    
    .login_box  .login input { width:100%; height:55px; background-color:#00a6de; color:#fff; font-size:16px; 
                               padding:17px 0 16px; border:0; cursor:pointer; font-family:'돋움';}

    .login_box  .fb_login input { width:100%; height:55px; background-color:#556d9c; color:#fff;  font-size:16px; 
                                  padding:17px 0 16px; border:0; margin-top:40px; cursor:pointer; font-family:'돋움';}

    .login_box  .kakao_login input { width:100%; height:55px; background-color:#b2ae40; color:#fff; font-size:16px; 
                                     padding:17px 0 16px; border:0; margin-top:10px; cursor:pointer; font-family:'돋움';}

    
    .login_box .last { width:100%; margin-top:10px; border-top:1px solid #ebebeb; padding-top:20px;}
    .login_box .last .join { float:left;}
    .login_box .last .search { float:right;}
    .login_box .last .join a { color:#00a6de;}
    .login_box .last .search a { color:#626262;} 
</style>
</head>
<body>
    <div class="wrapper">
        <div class="main">
            <div class="logo">
            <a href="main.jsp"><img src="./image/logo2.png"> </a>
            </div>
            <div class="login_box">
             <form method="post"  action="member_save.jsp"  name="member" onsubmit="return check()">
            <div style="text-align:center; font: bold 1.5em 'Helvetica Neue', Helvetica, Arial, sans-serif;">회원 가입</div>
            <br>
            <br>
                <div class="input_login">
                    <input type="text" name="email" placeholder="이메일을 입력하세요">
                </div>
                <div class="input_login">
                    <input type="password" name="password" placeholder="비밀번호를 입력하세요">
                </div>
                <div class="input_login">
                    <input type="password" name="password_check" placeholder="다시 한번 입력하세요">
                </div>
                <div class="input_login">
                    <input type="text" name="phone" placeholder="핸드폰번호를 입력하세요">
                </div>
                <br>
                <br>
                <div class="login">
                    <input type="submit" value="회원가입" >
                </div>
                </form>
                <div class="fb_login">
                </div>
                <div class="kakao_login">
                </div>
                <div class="last">
                    <div class="join" ><a href="search.jsp" style="text-decoration:none; margin:0px 77px 0px 77px;">혹시 계정이 있으신가요?</a></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>