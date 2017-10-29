<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!--
	// 메인 페이지
	// 담당 : 박지민
-->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>CFS : EXIT</title>
	
	<c:set var="path" value="${pageContext.request.contextPath}" scope="application" />
	
	<link rel="stylesheet" type="text/css" href="${path}/fullPage/jquery.fullPage.css" />
	<link rel="stylesheet" type="text/css" href="${path}/fullPage/examples/examples.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
	<script type="text/javascript" src="${path}/fullPage/vendors/jquery.easings.min.js"></script>
	
	<%-- <script type="text/javascript" src="${path}/fullPage/fullpage.dragAndMove.limited.min.js"></script> --%>
	<script type="text/javascript" src="${path}/fullPage/jquery.fullpage.extensions.min.js?v=2"></script>
	
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<script src="${path}/js/index.js"></script>

	<script type="text/javascript">
	$(document).ready(function() {
		initNormal();

		var commonOptions = {
			anchors: ['Page1', 'Page2', 'Page3', 'Page4', 'page5'],
			menu: '#menu',
			dragAndMove: true,
			dragAndMoveKey: 'YWx2YXJvdHJpZ28uY29tX0EyMlpISmhaMEZ1WkUxdmRtVT0wWUc=',
			slidesNavigation: true
		};

		function initNormal(){
			$('#myContainer').fullpage({
				anchors: ['Page1', 'Page2', 'Page3', 'Page4', 'page5'],
				menu: '#menu',
				dragAndMove: true,
				dragAndMoveKey: 'YWx2YXJvdHJpZ28uY29tX0EyMlpISmhaMEZ1WkUxdmRtVT0wWUc=',
				offsetSections: false,
				slidesNavigation: true,
				scrollOverflow: false
			});
		}

		function initAutoScrollingFalse(){
			commonOptions['scrollBar'] = false;
			commonOptions['autoScrolling'] = false;
			console.log(commonOptions);
			$('#myContainer').fullpage(commonOptions);
		}

		function initScrollBarTrue(){
			commonOptions['scrollBar'] = true;
			commonOptions['autoScrolling'] = true;
			console.log(commonOptions);
			$('#myContainer').fullpage(commonOptions);
		}

		$(document).on('click', '#turnAutoScrollingOn', function(e){
			e.preventDefault();
			$(this).addClass('active').siblings().removeClass('active');
			keepInPlace();
			initNormal();
		});

		$(document).on('click', '#turnAutoScrollingOff', function(e){
			e.preventDefault();
			$(this).addClass('active').siblings().removeClass('active');
			keepInPlace();
			initAutoScrollingFalse();
		});

		$(document).on('click', '#turnScrollBarOn', function(e){
			e.preventDefault();
			$(this).addClass('active').siblings().removeClass('active');
			keepInPlace();
			initScrollBarTrue();
		});

		function keepInPlace(){
			var activeSectionIndex = $('.fp-section.active').index();
    		var activeSlideIndex = $('.fp-section.active').find('.slide.active').index();
			$.fn.fullpage.destroy('all');
			 //setting the active section as before
			$('.section').eq(activeSectionIndex).addClass('active');
		}
	});
	</script>
	
	<style>
		*{
			margin: 0 auto;
			padding: 0;
			outline: none;
		}
	
		body:before {
			content: "";
			position: fixed;
			left: 0;
			right: 0;
			z-index: -1;
			
			display: block;
			background-image: url("images/slide1.jpg");
			background-size : cover;
			width: 100%;
			height: 100%;
			
			-webkit-filter: blur(5px);
			-moz-filter: blur(5px);
			-o-filter: blur(5px);
			-ms-filter: blur(5px);
			filter: blur(5px);
		}
	
		#actions{
			position:fixed;
			top: 73px;
			left: 30px;
			z-index: 99999;
		}
		#actions li{
			background: rgba(0,0,0,0.8);
			padding: 7px;
			margin: 2px;
			color: #ccc;
			display: inline-block;
			cursor: pointer;
		}
		#actions li:hover{
			color: #fff;
			background: #81A140;
		}
		#actions li.active{
			background: rgba(255, 255, 0, 0.79);
			color: #333;
		}
		
		#menu{
			display: none;
		}
		
		.myInfo{
			position:fixed;
			z-index:99;
			color: #fff;
			font-size: 14px;
			right: 40px;
			top: 40px;
			width: 140px;
			background: rgba(0,0,0,0.3);
			padding:20px;
			display: none;
		}	
		
		.myInfo button{
			float: right;
		}
		
		.myInfo span > form{
			width: 530px;
			float: right;
			position: absolute;
			right: 150px;
			font-size: 18px;
		}
		
		.myInfo span > form > span{
			width: 100%;
		}
		
		.myInfo label{
			width: 100px;
			height: 40px;
			padding: 8px 3px;
			text-align: center;
			line-height: 40px;
		}
		
		.myInfo input{
			width: 300px;
			height: 40px;
			padding: 3px 15px;
			color: black;
			border-radius: 30px;
			border: none;
		}
		
		.myInfo img{
			cursor: pointer;
			position: relative;
		}
		
		.note{
			position:fixed;
			z-index:99;
			color: #fff;
			font-size: 14px;
			left: 40px;
			bottom: 40px;
			width: 140px;
			background: rgba(0,0,0,0.3);
			padding:20px;
			cursor: pointer;
			display: none;
		}
		
		.note > span{
			float: left;
			position: absolute;
			top: 35px;;
			left: 150px;
			font-size: 18px;
			display: none;
		}
		
		#section1{
			height: 100%;
			background-color: rgba(255, 255, 255, 0.5);
		}
		
		#section2{
			text-align: center;
			color: black;
		}
		
		#section2:before {
			content: "";
			position: fixed;
			left: 0;
			right: 0;
			z-index: -1;
			
			display: block;
			background-image: url("/images/fundingBackground.png");
			background-size : cover;
			width: 100%;
			height: 100%;
			
			-webkit-filter: blur(3px);
			-moz-filter: blur(3px);
			-o-filter: blur(3px);
			-ms-filter: blur(3px);
			filter: blur(3px);
		}
		
		#section2 div span{
			width: 25%;
			height: 100%;
			margin: 0 4.16%;
			float: left;
			border-radius: 30px;
			background-color: rgba(255, 255, 255, 0.7);
			transition: 0.3s;
		}
		
		#section2 div span div p{
			padding: 3px 50px;
			font-size: 20px;
		}
		
		#section3{
			height: 100%;
			background-color: rgba(255, 255, 255, 0.3);
			text-align: center;
			color: black;
		}
		
		#section3 div span{
			width: 25%;
			height: 100%;
			margin: 0 4.16%;
			float: left;
			border-radius: 30px;
			background-color: rgba(255, 255, 255, 0.7);
			transition: 0.3s;
		}
		
		#section3 div span div p{
			padding: 3px 50px;
			font-size: 20px;
		}
		
		#section4{
			height: 100%;
			background-color: rgba(0, 0, 0, 0.3);
			text-align: center;
			color: white;
		}
		
		#section4 div span{
			width: 25%;
			height: 100%;
			margin: 0 4.16%;
			float: left;
			border-radius: 30px;
			background-color: rgba(0, 0, 0, 0.5);
			transition: 0.3s;
		}
		
		#section4 div span div p{
			padding: 3px 50px;
			font-size: 20px;
		}
		
		#section5{
			height: 100%;
			background-color: rgba(255, 255, 255, 0.3);
			text-align: center;
			color: black;
		}
		
		#section5 div span{
			width: 25%;
			height: 100%;
			margin: 0 4.16%;
			float: left;
			border-radius: 30px;
			background-color: rgba(255, 255, 255, 0.7);
			transition: 0.3s;
		}
		
		#section5 div span div p{
			padding: 3px 50px;
			font-size: 20px;
		}
	</style>

</head>

<body>

<ul id="menu">
	<li data-menuanchor="Page1"><a href="#Page1" alt="page1" title="메인으로">메인으로</a></li>
	<li data-menuanchor="Page2"><a href="#Page2" alt="page2" title="펀딩소개">펀딩소개</a></li>
	<li data-menuanchor="Page3"><a href="#Page3" alt="page3" title="시작하기">시작하기</a></li>
	<li data-menuanchor="Page4"><a href="#Page4" alt="page4" title="성공사례">성공사례</a></li>
	<li data-menuanchor="page5"><a href="#page5" alt="page5" title="회사정보">회사정보</a></li>
</ul>

<div class="myInfo">
	<buttom style="display:none" id="sign"> <img style="float: right" id="join" class="img-thumbnail" width="100" height="100" src="${path}/images/joinButton.png" title="회원가입" /> </buttom>
	<img style="float: right" id="login" class="img-thumbnail" width="100" height="100" src="${path}/images/loginButton.png" title="로그인" />
	
	<span style="display: none">
		<form action="login" method="post">
			<button style="border: none; border-radius: 3px" type="submit"> <img style="float: right" id="loginButton" class="img-thumbnail" width="100" height="100" src="${path}/images/loginButton.png" title="로그인" /> </button>
		
			<span>
				<label>아이디</label>
				<input id="id" name="id" type="text" placeholder="아이디를 입력해주세요." />
			</span>
			
			<span>
				<label>비밀번호</label>
				<input id="password" name="password" type="password" placeholder="비밀번호를 입력해주세요." />
			</span>
		</form>
	</span>
	
	<img style="display: none" id="rightIcon" style="float: left;" width="50" height="100" src="${path}/images/rightIcon.png" title="접어두기" />
</div>

<div id="myContainer">
	<div class="section" id="section1">
		<img width="90%" src="${path}/images/slide3.png" alt="CFS : EXIT" />
	</div>
	
	<div class="section" id="section2">
		<div style="width: 80%; height: 600px; position: relative; left: 10%">
			<div style="position: absolute; top: -120px; left: 33.33%;">
				<h1 style="font-size: 48px; font-weight: bold;">크라우드 펀딩 소개하기</h1>
			</div>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding1.png" alt="funding1" title="프로젝트 올리기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">프로젝트 올리기</h1>
				</div>
				
				<div>
					<p>
						창작 아이디어를 소개하는 프로젝트를 만듭니다.
						후원자들에게 금액별 특별한 선물을 약속합니다.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding2.png" alt="funding2" title="펀딩 진행하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">펀딩 진행하기</h1>
				</div>
				
				<div>
					<p>
						정해진 기간동안 후원자를 모으기 위해 열심히 홍보합니다.
						목표 금액을 달성해야만 후원금을 받을 수 있습니다.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding3.png" alt="funding3" title="만들고 보답하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">만들고 보답하기</h1>
				</div>
				
				<div>
					<p>
						전달받은 후원금으로 창작에 돌입합니다.
						틈틈히 진척사항을 알리고, 약속한 선물을
						전달하면 프로젝트가 끝납니다.
					</p>
				</div>
			</span>
		</div>
	</div>
	
	<div class="section" id="section3">
		<div style="width: 80%; height: 600px; position: relative; left: 10%">
			<div style="position: absolute; top: -120px; left: 33.33%;">
				<h1 style="font-size: 48px; font-weight: bold;">크라우드 펀딩 시작하기</h1>
			</div>
		
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding1.png" alt="funding1" title="프로젝트 올리기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">프로젝트 올리기</h1>
				</div>
				
				<div>
					<p>
						창작 아이디어를 소개하는 프로젝트를 만듭니다.
						후원자들에게 금액별 특별한 선물을 약속합니다.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding2.png" alt="funding2" title="펀딩 진행하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">펀딩 진행하기</h1>
				</div>
				
				<div>
					<p>
						정해진 기간동안 후원자를 모으기 위해 열심히 홍보합니다.
						목표 금액을 달성해야만 후원금을 받을 수 있습니다.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding3.png" alt="funding3" title="만들고 보답하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">만들고 보답하기</h1>
				</div>
				
				<div>
					<p>
						전달받은 후원금으로 창작에 돌입합니다.
						틈틈히 진척사항을 알리고, 약속한 선물을
						전달하면 프로젝트가 끝납니다.
					</p>
				</div>
			</span>
		</div>
	</div>
	
	<!-- <div class="section" id="section3">
		<div class="slide" id="slide11">
			<di class="intro">
				<h1>Drag And Move</h1>
				<p>
					Use `dragAndMove: true` or the options `fingersOnly`, `mouseOnly`, `horizontal`, `vertical
				</p>
			</di>
		</div>
		
		<div class="slide" id="slide12">
			
		</div>
		<div class="slide" id="slide13"><h1>Slide 1.3</h1></div>
	</div> -->
	
	<div class="section" id="section4">
		<div style="width: 80%; height: 600px; position: relative; left: 10%">
			<div style="position: absolute; top: -120px; left: 33.33%;">
				<h1 style="font-size: 48px; font-weight: bold;">크라우드 펀딩 성공사례</h1>
			</div>
		
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding1.png" alt="funding1" title="프로젝트 올리기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold; color: #CCD1FF">창작자</h1>
				</div>
				
				<div>
					<p>
						평소 몰두했던 작업이나 구상만 하던 창작 아이디어를 
						본격적인 단계로 발전시킬 기회로 삼아보세요.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding2.png" alt="funding2" title="펀딩 진행하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold; color: #B8F3B8;">브랜드</h1>
				</div>
				
				<div>
					<p>
						초기 비용이나 재고 부담 없이 새로운 제품이나 
						서비스를 론칭하고 코어 팬 베이스를 확보하세요.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding3.png" alt="funding3" title="만들고 보답하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold; color: #FFA9B0;">캠페인</h1>
				</div>
				
				<div>
					<p>
						임팩트 있는 캠페인을 통해 사회적 이슈를 
						지속가능한 참여와 후원으로 전환시켜보세요.
					</p>
				</div>
			</span>
		</div>
	</div>
	
	<div class="section" id="section5">
		<div style="width: 80%; height: 600px; position: relative; left: 10%">
			<div style="position: absolute; top: -120px; left: 33.33%;">
				<h1 style="font-size: 48px; font-weight: bold;">크라우드 펀딩 회사정보</h1>
			</div>
		
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding1.png" alt="funding1" title="프로젝트 올리기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">프로젝트 올리기</h1>
				</div>
				
				<div>
					<p>
						창작 아이디어를 소개하는 프로젝트를 만듭니다.
						후원자들에게 금액별 특별한 선물을 약속합니다.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding2.png" alt="funding2" title="펀딩 진행하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">펀딩 진행하기</h1>
				</div>
				
				<div>
					<p>
						정해진 기간동안 후원자를 모으기 위해 열심히 홍보합니다.
						목표 금액을 달성해야만 후원금을 받을 수 있습니다.
					</p>
				</div>
			</span>
			
			<span>
				<div>
					<img style="width: 50%; margin: 20px 0" src="${path}/images/funding3.png" alt="funding3" title="만들고 보답하기" />
				</div>
				
				<div>
					<h1 style="margin: 30px 0; font-weight: bold">만들고 보답하기</h1>
				</div>
				
				<div>
					<p>
						전달받은 후원금으로 창작에 돌입합니다.
						틈틈히 진척사항을 알리고, 약속한 선물을
						전달하면 프로젝트가 끝납니다.
					</p>
				</div>
			</span>
		</div>
	</div>
</div>

<div class="note">
	<img style="float: left;" id="helper" class="img-thumbnail img-responsive" width="100" height="100" src="${path}/images/helper.jpg" alt="helperOff" title="빵빵덕" />
	
	<span>
		<span>안녕하십니까?</span> <br />
		<span>저는 당신을 도와줄 &lt빵빵덕> 입니다!</span> <br />
		<span>문제가 발생한다면 해결할 수 있게 도와드리겠습니다!</span>
	</span>
	
	<img id="leftIcon" style="float: right; display: none;" width="50" height="100" src="${path}/images/leftIcon.png" alt="helperClose" title="접어두기" />
</div>

</body>

<script>
	$("#login").hover(function(){
		$(this).attr("src", "${path}/images/loginText.png");
	}, function(){
		$(this).attr("src", "${path}/images/loginButton.png");
	});
	
	$("#loginButton").hover(function(){
		$(this).attr("src", "${path}/images/loginText.png");
	}, function(){
		$(this).attr("src", "${path}/images/loginButton.png");
	});
	
	$("#join").hover(function(){
		$(this).attr("src", "${path}/images/joinText.png");
	}, function(){
		$(this).attr("src", "${path}/images/joinButton.png");
	});

	$("#section3 > div > span").hover(function(){
		$(this).css({
			"color" : "#fff",
			"background-color" : "rgba(0, 0, 0, 0.5)",
			"cursor" : "pointer"
		});
		
		$(this).children("div").children("img").attr("src", "${path}/images/rightGo.png");
		
		var alt = $(this).children("div").children("img").attr("alt");
		
		if(alt == "funding1"){
			$(this).append("<div class='moveHelp' style='width: 25%; position: absolute; bottom: 30px'> <p> <b>클릭시 프로젝트 생성하기</b> </p> </div>");
		}else if(alt == "funding2"){
			$(this).append("<div class='moveHelp' style='width: 25%; position: absolute; bottom: 30px'> <p> <b>클릭시 진행중인 프로젝트 보기</b> </p> </div>");
		}else if(alt == "funding3"){
			$(this).append("<div class='moveHelp' style='width: 25%; position: absolute; bottom: 30px'> <p> <b>클릭시 마감된 프로젝트 보기</b> </p> </div>");
		}
	}, function(){
		$(this).css({
			"color" : "#000",
			"background-color" : "rgba(255, 255, 255, 0.7)",
			"cursor" : "default"
		});
		
		var alt = $(this).children("div").children("img").attr("alt");
		
		if(alt == "funding1"){
			$(this).children("div").children("img").attr("src", "${path}/images/funding1.png");
		}else if(alt == "funding2"){
			$(this).children("div").children("img").attr("src", "${path}/images/funding2.png");
		}else if(alt == "funding3"){
			$(this).children("div").children("img").attr("src", "${path}/images/funding3.png");
		}
		
		$(".moveHelp").remove();
	});
	
	$("#section4 > div > span").hover(function(){
		$(this).css({
			"color" : "#000",
			"cursor" : "pointer"
		});
		
		$(this).children("div").children("h1").css({"color" : "#000"});
		
		$(this).children("div").children("img").attr("src", "${path}/images/rightGoBlack.png");
		
		var alt = $(this).children("div").children("img").attr("alt");
		
		if(alt == "funding1"){
			$(this).css({"background-color" : "rgba(204, 209, 255, 0.9)"});
			$(this).append("<div class='moveHelp' style='width: 25%; position: absolute; bottom: 30px'> <p> <b>클릭시 창작자 성공사례 보기</b> </p> </div>");
		}else if(alt == "funding2"){
			$(this).css({"background-color" : "rgba(184, 243, 184, 0.9)"});
			$(this).append("<div class='moveHelp' style='width: 25%; position: absolute; bottom: 30px'> <p> <b>클릭시 브랜드 성공사례 보기</b> </p> </div>");
		}else if(alt == "funding3"){
			$(this).css({"background-color" : "rgba(255, 169, 176, 0.9)"});
			$(this).append("<div class='moveHelp' style='width: 25%; position: absolute; bottom: 30px'> <p> <b>클릭시 캠페인 성공사례 보기</b> </p> </div>");
		}
	}, function(){
		$(this).css({
			"color" : "#fff",
			"background-color" : "rgba(0, 0, 0, 0.5)",
			"cursor" : "default"
		});
		
		var alt = $(this).children("div").children("img").attr("alt");
		
		if(alt == "funding1"){
			$(this).children("div").children("h1").css({"color" : "#CCD1FF"});
			$(this).children("div").children("img").attr("src", "${path}/images/funding1.png");
		}else if(alt == "funding2"){
			$(this).children("div").children("h1").css({"color" : "#B8F3B8"});
			$(this).children("div").children("img").attr("src", "${path}/images/funding2.png");
		}else if(alt == "funding3"){
			$(this).children("div").children("h1").css({"color" : "#FFA9B0"});
			$(this).children("div").children("img").attr("src", "${path}/images/funding3.png");
		}
		
		$(".moveHelp").remove();
	});
</script>

</html>
