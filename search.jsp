<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height:100%">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Ѵ��� ����! �Խ�Ʈ�Ͽ콺</title>
<script type="text/javascript">
	function LOGIN() {
		if (!document.LogIn.phone.value) {
			alert("�ڵ��� ��ȣ�� ��Ȯ�� �Է����ּ���.");
			return false;
		}
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

    .wrapper { width:100%; height:100%; background-image:url(./image/back.jpg); background-position:center; font-family: '����';}
    .main { padding-top:148px;}
    .logo { width:430px; margin:0 auto -10px; cursor:pointer;}
    .logo img { width:400px; height:150px;}
    
    .login_box { width:337px; height:400px; padding: 45px 44px 38px 44px; margin: 0 auto; background-color: #fff; opacity: 0.8; 
                 border-radius:5px; border: 1px solid #ebebeb;}
    .login_box .input_login { border-bottom: 2px solid #c4c5c4; padding: 20px 0 9px 0;}
    .login_box .input_login input { width: 100%; color: #828180; font-size: 15px; border:none; font-family:inherit;}
    .login_box .check { color: #000; font-size: 14px; padding: 9px 0 15px 0; font-family: '����';}
    
    .login_box  .login input { width:100%; height:55px; background-color:#00a6de; color:#fff; font-size:16px; 
                               padding:17px 0 16px; border:0; cursor:pointer; font-family:'����';}

    .login_box  .fb_login input { width:100%; height:55px; background-color:#556d9c; color:#fff;  font-size:16px; 
                                  padding:17px 0 16px; border:0; margin-top:40px; cursor:pointer; font-family:'����';}

    .login_box  .kakao_login input { width:100%; height:55px; background-color:#b2ae40; color:#fff; font-size:16px; 
                                     padding:17px 0 16px; border:0; margin-top:10px; cursor:pointer; font-family:'����';}

    
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
             <form method="post"  action="member_search.jsp"  name="LogIn" onsubmit="return LOGIN()">
            <div style="text-align:center; font: bold 1.5em 'Helvetica Neue', Helvetica, Arial, sans-serif;">���� ã��</div>
            <br>
            <br>
                <div class="input_login">
                    <input type="text" name="phone" placeholder="�ڵ�����ȣ�� �Է��ϼ���">
                </div>
                <br>
                <br>
                <div class="login">
                    <input type="submit" name="Login"  value="ã��" id="Login">
                </div>
                </form>
                <br>
                <div class="fb_login">
                    <hr>
                    <a style="font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif;">�Ѵ��� ����! �Խ�Ʈ�Ͽ콺���� ������ ��� �Ͽ콺�� ã�� ������ ��ܺ�����.</a>
                </div>
                <div class="kakao_login">
                    <ul style="font: bold 1em 'Helvetica Neue', Helvetica, Arial, sans-serif; text-align:center;">
                    <hr>
			    		<li>-��ſ� ������ ����-</li>
                		<li>���� ��������</li>
						<li>��ȸ���� ����</li>
						<li>���� ����</li>
					</ul>
                </div>
                <div class="last">
                    <div class="join" ><a href="member.jsp" style="text-decoration:none; margin:0px 77px 0px 77px;">���� ȸ���� �ƴϽŰ���?</a></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>