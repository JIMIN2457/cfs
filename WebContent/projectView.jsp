<%@page import="java.util.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="/fullPage/jquery.fullPage.css" />
<link rel="stylesheet" type="text/css"
	href="/fullPage/examples/examples.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
<script type="text/javascript"
	src="/fullPage/vendors/jquery.easings.min.js"></script>

<script type="text/javascript"
	src="/fullPage/fullpage.dragAndMove.limited.min.js"></script>
<script type="text/javascript"
	src="/fullPage/jquery.fullpage.extensions.min.js?v=2"></script>
<script type="text/javascript">
	$(function() {
		$("#num").keyup(
				function() {
					if ($(this).val() == "" || $(this).val() == "0") {
						var date = new Date();
						$("#proenddate").val(
								date.getFullYear() + "-"
										+ (date.getMonth() + 1) + "-"
										+ date.getDate());
						return;
					} else if (parseInt($(this).val()) > 60
							|| $(this).val() == "1") {
						$(this).val(1);
						var date = new Date();
						$("#proenddate").val(
								date.getFullYear() + "-"
										+ (date.getMonth() + 1) + "-"
										+ (date.getDate() + 1));
						return;
					}
					var date = new Date();
					date.setDate(date.getDate() + parseInt($("#num").val()));
					$("#proenddate").val(
							date.getFullYear() + "-" + (date.getMonth() + 1)
									+ "-" + date.getDate());
				});//날짜 계산

		$("#num").blur(
				function() {
					if ($(this).val() == "" || $(this).val() == "0") {
						$("#num").val("1");
						var date = new Date();
						$("#proenddate").val(
								date.getFullYear() + "-"
										+ (date.getMonth() + 1) + "-"
										+ (date.getDate() + 1));
						return;
					}
					var date = new Date();
					date.setDate(date.getDate() + parseInt($("#num").val()));
					$("#proenddate").val(
							date.getFullYear() + "-" + (date.getMonth() + 1)
									+ "-" + date.getDate());
				});

		$("#proprice").blur(function() {

		});
	})
</script>

<%!public static String getdate(int mountdate) {
		//mountdate = 해당 숫자만큼 더해진 날짜를 반환
		DecimalFormat df = new DecimalFormat("00");
		Calendar calendar = Calendar.getInstance();

		calendar.add(calendar.DATE, mountdate);
		String year = Integer.toString(calendar.get(Calendar.YEAR)); //년도를 구한다
		String month = df.format(calendar.get(Calendar.MONTH) + 1); //달을 구한다
		String day = df.format(calendar.get(Calendar.DATE)); //날짜를 구한다
		String date = year + "-" + month + "-" + day; //8자리 숫자★
		return date;
	}%>
	<style>
		*{margin: 0 auto; padding: 0;}
	
		div{
			background-color: highlight;
			border: solid;
			width: 50%;
			height: 60%;
		}
	</style>
</head>
<body>
	<h1 align="center">프로젝트 생성</h1>
	
	<form action="projectInsert" id="proform" method="post"
		enctype="multipart/form-data">
		<div>
			<h3>프로젝트 제목</h3>
			<input type="text" name="prosubject" value="" /><br>
		</div>
		<br>
		<div>
			<h3>프로젝트 대표 이미지</h3>
			<input type="file" name="proimg" id="proimg"/><br>
		</div>
		<br>
		<div>
			<h3>프로젝트 요약</h3>
			<input type="text" name="procontext" value="" /><br>
		</div>
		<br>
		<div>
			<h3>프로젝트 카테고리</h3>
			<input type="text" name="procategory" value="" /><br>
		</div>
		<br>
		<div>
			<h3>프로젝트 페이지 주소</h3>
			<input type="text" name="prourl" value="" /><br>
		</div>
		<br>
		<div>
			<h3>프로젝트 동영상</h3>
			<input type="file" name="proavi" /><br>
		</div>
		<br>
		<div>
			<h3>목표 금액</h3>
			<input type="text" name="proprice" value="" />원<br>
		</div>
		<br>
		<div>
			<h3>프로젝트 마감일</h3>
			<h5>펀딩이 끝나는 마감일을 정해주세요.</h5>
				오늘로부터 <input type="text" value="1" name="num" id="num" /> 일 뒤인<input
					type="text" name="proenddate" id="proenddate"
					value="<%=getdate(1) + ""%>" /> 에 마감합니다.<br>
			<p>
		</div>
	</form>
</body>
</html>