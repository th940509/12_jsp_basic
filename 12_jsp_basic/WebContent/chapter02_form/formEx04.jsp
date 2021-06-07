<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form연습</title>
</head>
<body>

	<form method="post" action="formEx04Pro.jsp">
		<fieldset>
  			<legend>비회원 주문 정보 입력</legend>
  			<p><img src="../img/notebook.PNG" alt="노트북 사진" width="500" height="300"></p>
  			
  			<p>
				합리적인 비용의 강력한 비즈니스 성능<br>
				ThinkPad L13 노트북은 10세대 인텔®코어™프로세서, <br>
				SSD, DDR4 메모리 그리고 초고속 WiFi 6를 탑재하여 강력한 고성능을 발휘합니다. <br>
				슬림하고 가벼운 무게의 이 33.78cm (13.3형) 비즈니스 노트북을 블랙 혹은 실버 색상으로 만나보세요. <br>
				빈틈없는 보안과 프라이버시 보호 기능, 고속 충전 기술까지 비즈니스에 필요한 모든 요소를 갖추었습니다.<br> 				 
  			</p>
  			<span style="color: red">가격 : 750,000</span>
  			<hr>
  			<p><label for="name"><span style="color:red">* </span>이름 : </label><input type="text"  id="name" name="name" autofocus></p>
  			<p><label for="contact"><span style="color:red">* </span> 연락처 : </label><input type="text" id="contact" name="contact" placeholder="-를 붙여서 입력하세요"></p>
  			<p><label for="email"> <span style="color:red">* </span>이메일 : </label>
  				<input type="text" id="email" name="email" size="15">
  				<small><span style="color:red">이메일 주소가 틀리면 배송관련정보를 받으실 수 없습니다.</span></small>	
  			</p>
		    <p>
         		주문모델 : 
	         	<select name="modelName">
	            	<option value="IdeaPad">IdeaPad</option>
	            	<option value="Yoga">Yoga 5세대</option>
	            	<option value="ThinkPad">ThinkPad</option>
	         	</select>
		   	</p>   
          	<p>
		        구매수량 :
		        <input type="radio" name="quantity" value="1" checked>1개&nbsp;
		        <input type="radio" name="quantity" value="2">2개&nbsp;
		        <input type="radio" name="quantity" value="3">3개&nbsp;
		        <input type="radio" name="quantity" value="4">4개
	        </p>
	        <p>
				<input type="checkbox" name="agreeSafeCare" value="y"> 안심케어 서비스
	        </p>
	        <p>
	        	주문시 요청 사항<br>
	        	<textarea cols="50" rows="10" name="requestInfo" placeholder="상세히 기록해 주세요."> </textarea>
	        </p>
	        
	        <p>
	        	 <input type="checkbox" name="agreePrivateInform" value="y"> 개인정보 수집 동의 <span style="color:red">* </span>
	        </p>
	        <p>
	        	<input type="submit" value="구매하기">
	        	<input type="reset" value="다시쓰기">
	        </p>
         </fieldset>
	</form>
</body>
</html>