<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>한눈에 보자! 게스트하우스</title>
<link rel="stylesheet" type="text/css" href="board.css"/>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
</style>
<script language = "javascript"> // 자바 스크립트 시작
function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.name.value )   // form 에 있는 name 값이 없을 때
   {
    alert( "이름을 적어주세요" ); // 경고창 띄움
    form.name.focus();   // form 에 있는 name 위치로 이동
    return;
   }
   
   if( !form.password.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.password.focus();
    return;
   }
   
  if( !form.title.value )
   {
    alert( "제목을 적어주세요" );
    form.title.focus();
    return;
   }
 
  if( !form.memo.value )
   {
    alert( "내용을 적어주세요" );
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
      <td>글쓰기</td>
      <td width="5"><img src="image/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">이름</td>
      <td><input name="name" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <td><input name="password" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">평점</td>
      <td><select name="local">
      <option value = "G 게스트하우스">G 게스트하우스</option>
      <option value = "아로하 하우스">아로하 하우스</option>
      <option value = "비젼 하우스">비젼 하우스</option>
      <option value = "휴가 하우스">휴가 하우스</option>
      <option value = "캔버스 호스텔">캔버스 호스텔</option>
      <option value = "웨이브 하우스">웨이브 하우스</option>
      <option value = "써니 하우스">써니 하우스</option>
      <option value = "허니 하우스">허니 하우스</option>
      <option value = "허브 하우스">허브 하우스</option>
      <option value = "크라운 하우스">크라운 하우스</option>
      <option value = "올인원 하우스">올인원 하우스</option>
      <option value = "송 포 쉐어하우스">송 포 쉐어하우스</option>
      <option value = "예하 하우스">예하 하우스</option>
      <option value = "유앤아이 하우스">유앤아이 하우스</option>
      <option value = "마로 하우스">마로 하우스</option>
      <option value = "소리 게스트하우스">소리 게스트하우스</option>
      <option value = "경주 게스트하우스">경주 게스트하우스</option>
      <option value = "화랑 하우스">화랑 하우스</option>
      <option value = "차차랑 하우스">차차랑 하우스</option>
      <option value = "꿀잠 하우스">꿀잠 하우스</option>
      <option value = "베스타 하우스">베스타 하우스</option>
      <option value = "판 게스트하우스">판 게스트하우스</option>
      <option value = "해피 게스트하우스">해피 게스트하우스</option>
      <option value = "온나 게스트하우스">온나 게스트하우스</option>
      <option value = "잭스 하우스">잭스 하우스</option>
      <option value = "에그 하우스">에그 하우스</option>
      <option value = "계림산장">계림산장</option>
      <option value = "봄엔 하우스">봄엔 하우스</option>
      <option value = "여수 인 하우스">여수 인 하우스</option>
      <option value = "빅오쇼 하우스">빅오쇼 하우스</option>
      <option value = "곰 하우스">곰 하우스</option>
      <option value = "모이리 하우스">모이리 하우스</option>
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
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록" OnClick="javascript:writeCheck();">
       <input type=button value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
  </form>
 </table>
 <div style="width:500px; height:400px; background:white; margin:-400px 10px 10px 600px; font-family: 'Noto Sans KR', sans-serif; background:#00aef0;">
     <ul>
     	<li style="list-style-type: none; text-align: center; font-size:40px;">공지 사항</li>
		<hr>
		<br>
     	<li style="list-style-type: none; text-align: center; font-size:18px;">본 게시판은 리뷰 및 정보를 공유하는데 목적이 있습니다.</li>
     	<br>
     	<li style="list-style-type: none; text-align: center;">상업적 홍보를 금지합니다.</li>
     	<li style="list-style-type: none; text-align: center;">특정 게스트하우스를 비하시 제재를 당합니다.</li>
     	<li style="list-style-type: none; text-align: center;">본인의 관점에서 느낀 그대로를 적어주세요.</li>
     	<li style="list-style-type: none; text-align: center;">본 게시글에 대한 모든 일은 본인 책임입니다.</li>
     	<li style="list-style-type: none; text-align: center;">이름은 본인의 실명을 입력해주세요.</li>
     	<li style="list-style-type: none; text-align: center;">관리자에 의해 글이 삭제될 수도 있습니다.</li>
     	<li style="list-style-type: none; text-align: center;">본 사이트는 게시글에 대한 법적 책임이 없습니다.</li>	
     	<br>
     	<hr>
     	<li style="list-style-type: none; text-align: center; font-size:25px;">본 사이트는 홍보 이외의 모든 문제에 대한 책임이 없습니다.</li>
     </ul>
 </div>

</body>
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