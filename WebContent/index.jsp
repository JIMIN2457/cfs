<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Crowd Funding System</title>
	<meta name="Resource-type" content="Document" />
	
	<link rel="stylesheet" type="text/css" href="/fullPage/jquery.fullPage.css" />
	<link rel="stylesheet" type="text/css" href="/fullPage/examples/examples.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.3/jquery.min.js"></script>
	<script type="text/javascript" src="/fullPage/vendors/jquery.easings.min.js"></script>
	
	<script type="text/javascript" src="/fullPage/fullpage.dragAndMove.limited.min.js"></script>
	<script type="text/javascript" src="/fullPage/jquery.fullpage.extensions.min.js?v=2"></script>
	
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	$(document).ready(function() {
		initNormal();

		var commonOptions = {
			anchors: ['Page1', 'Page2', 'Page3', 'Page4'],
			menu: '#menu',
			dragAndMove: true,
			dragAndMoveKey: 'YWx2YXJvdHJpZ28uY29tX0EyMlpISmhaMEZ1WkUxdmRtVT0wWUc=',
			slidesNavigation: true
		};

		function initNormal(){
			$('#myContainer').fullpage({
				anchors: ['Page1', 'Page2', 'Page3', 'Page4'],
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
		*{margin: 0 auto; padding: 0;}
	
		body{
			background-image: url("/images/slide1.jpg");
			background-size: 100%;
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
		.note{
			position:fixed;
			z-index:99;
			color: #fff;
			font-size: 14px;
			left: 40px;
			bottom: 80px;
			width: 40%;
			background: rgba(0,0,0,0.3);
			padding:20px;
		}
		
		.note img{
			float: left;
		}
		
		.note > span{
			height: 100%;
			float: left;
			padding: 0 20px;
			font-size: 18px;
		}
		
		#section1{
			background-image: url("/images/slide2.jpg");
			background-size: 100%;
		}
	</style>

</head>
<body>

<ul id="menu">
	<li data-menuanchor="Page1"><a href="#Page1">메인</a></li>
	<li data-menuanchor="Page2"><a href="#Page2">소개</a></li>
	<li data-menuanchor="Page3"><a href="#Page3">테스트</a></li>
	<li data-menuanchor="Page4"><a href="#Page4">테스트</a></li>
</ul>

<ul class="preview-extensions-menu">
	<li class="preview-more-extensions"><a href="http://alvarotrigo.com/fullPage/extensions/">More extensions</a></li><!--
	--><li class="preview-buy-extension"><a href="https://gum.co/fullpageDragAndMove">Download extension</a></li>
</ul>

<div id="myContainer">

	<div class="section" id="section1">
		
	</div>
	
	<div class="section" data-percentage="60" id="section2">
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
	</div>
	<div class="section" id="section3">
		<div class="slide"><h1>Slide 3.1</h1></div>
		<div class="slide"><h1>Slide 3.2</h1></div>
		<div class="slide"><h1>Slide 3.3</h1></div>
		<div class="slide"><h1>Slide 3.4</h1></div>
	</div>
	<div class="section" id="section4"><h1>Section 4</h1></div>
</div>

<div class="note">
	<img class="img-thumbnail" width="100" height="100" src="/images/helper.jpg" alt="helper" />
	
	<span>
		<span>안녕하십니까?</span> <br />
		<span>저는 당신을 도와줄 빵빵덕 입니다!</span>
	</span>
</div>

<input type="hidden" id="_4" value="3" />

</body>
</html>
