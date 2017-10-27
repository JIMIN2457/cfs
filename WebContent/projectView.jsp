<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>프로젝트 생성</h1>
	<hr color="red">
	<form action="projectInsert" id="proform" method="post"
		enctype="multipart/form-data">
		<div>
			<h3>프로젝트 제목</h3>
			<br> <input type="text" name="prosubject" value="" /><br>
			<p>
		</div>
		<div>
			<h3>프로젝트 대표 이미지</h3>
			<br> <input type="file" name="proimg" /><br>
			<p>
		</div>
		<div>
			<h3>프로젝트 요약</h3>
			<br> <input type="text" name="procontext" value="" /><br>
			<p>
		</div>
		<div>
			<h3>프로젝트 카테고리</h3>
			<br> <input type="text" name="procategory" value="" /><br>
			<p>
		</div>
		<div>
			<h3>프로젝트 페이지 주소</h3>
			<br> <input type="text" name="prourl" value="" /><br>
			<p>
		</div>
		<div>
			<h3>프로젝트 동영상</h3>
			<br> <input type="file" name="proavi" /><br>
			<p>
		</div>
		<div>
			<h3>프로젝트 마감일</h3>
			<br>
			<p>펀딩이 끝나는 마감일을 정해주세요.
			<h5></h5>
			<br>
			<p>
				오늘로부터 <input type="text" value="1" name="num" /> 일 뒤인<input
					type="text" name="proenddate" value="<%=request.getParameter("enddate")%>" /> 에 마감합니다.<br>
			<p>
		</div>
	</form>
</body>
</html>