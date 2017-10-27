<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
 *{margin:0 auto;}
</style>
<title>회원가입 폼</title>
</head>
<body>
<div style="height: 80%; width: 20%; border:1px solid pink;">	
	<div>
		<label for="user_fullname"
			style="color: rgb(117, 117, 117); font-size: 13px;">아이디</label><br>
		<input type="text" id="userId" autocomplete="username" placeholder="사용하실 아이디를 입력해주세요"><br>
		<input type="button" id="checkEmail" value="중복체크하기">
	</div><!-- 아이디 입력칸 -->

	<div>
		<label for="user_fullname"
			style="color: rgb(117, 117, 117); font-size: 13px;">이름</label><br>
		<input type="text" id="fullName" placeholder="사용하실 이름을 입력해주세요">
	</div>
	<p><!-- 이름 입력칸 -->
	
	<div>
		<label for="user_login"
			style="color: rgb(117, 117, 117); font-size: 13px;">이메일 주소</label><br>
		<input type="email" id="email" placeholder="이메일 주소를 입력해주세요"><br> 
		<input type="email" id="checkEmail" placeholder="이메일 주소를 확인합니다"> 
		<span style="font-size: 0.9em; color: rgb(250, 100, 98);"></span>
	</div>
	<p><!-- 이메일 입력칸 -->
	
	<div style="margin-bottom: 10px;">
		<label for="user_password"style="color: rgb(117, 117, 117); font-size: 13px;">비밀번호</label><br>
		<input type="password" id="password" placeholder="비밀번호를 입력해주세요"><br>
		<input type="password" id="checkPassWord" placeholder="비밀번호를 확인합니다">
		<span style="font-size: 0.9em; color: rgb(250, 100, 98);"></span>
		<span style="font-size: 0.9em; color: rgb(250, 100, 98);"></span>
	</div>
	<p><!-- 비밀번호 입력칸 -->
	<p style="text-align: center; font-size: 13px;">
	<span style="color: rgb(117, 117, 117);">아래 버튼을 눌러 </span>
	<a target="_blank" href="#" style="font-weight: 600;">이용약관</a>
	<span style="color: rgb(117, 117, 117);">에 동의합니다.</span></p>
	
	<button type="submit" label="가입하기" style="margin: 0px; height: 45px;">가입하기</button>
</div>
		
		
	
</body>
</html>