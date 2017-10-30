/**
 * 메인 페이지 스크립트
 * 담당 : 박지민
 */

$(document).ready(function(){	
	$("#menu").fadeIn(1000);
	$(".myInfo").fadeIn(1000);
	$(".note").fadeIn(1000);
	
	$(".myInfo").children("img").attr("alt", "loginOn");
	
	$(".myInfo, .note").hover(function(){
		$(this).css({"background" : "rgba(0,0,0,0.6)"});
	}, function(){
		$(this).css({"background" : "rgba(0,0,0,0.3)"});
	});
	
	$("#rightIcon").on("click", function(){
		if($(".myInfo").is(":animated")){return false;}else{
			$("#loginButton").stop().fadeOut(300);
			$(".myInfo > span").stop().fadeOut(300);
			$(this).stop().fadeOut(800);
			$("#moveRightIcon").css({"display" : "none"});
			
			$(".myInfo").stop().animate({
				width:140
			}, 1000, function(){
				$("#sign").stop().fadeOut(0);
				$("#login").stop().fadeIn(0);
			});
		}
	});
	
	$(".myInfo").on("click", function(){
		if($(this).is(":animated")){return false;}else{			
			$("#login").stop().fadeOut();
			$("#loginButton").stop().fadeIn();
			
			$(this).stop().animate({
				width:40+"%"
			}, function(){
				$("#sign").stop().fadeIn(1000);
				$(".myInfo > span").stop().fadeIn(1000);
				$("#rightIcon").stop().fadeIn(1000);
				$("#moveRightIcon").stop().fadeIn(1000);
			});
		}
	});
	
	$(".note").animate({
		width:40+"%"
	}, function(){
		$(".note").children("span").stop().fadeIn();
		$("#leftIcon").stop().fadeIn();
		$("#moveLeftIcon").stop().fadeIn();
	});
	
	$(".note").children("img").attr("alt", "helperOn");
	
	$(".note").on("click", function(){
		if($(this).children("img").attr("alt") == "helperOn"){
			if($(this).is(":animated")){return false;}else{
				$(this).stop().animate({
					width:140
				}, 1000);
				
				$("#leftIcon").stop().fadeOut(800);
				$("#moveLeftIcon").css({"display" : "none"});
				$(this).children("span").stop().fadeOut();
				$(this).children("img").attr("alt", "helperOff");
				
				if($(".note > span > span:nth-child(1)").text() == "처음 방문하셨습니까?"){
					
				}else{
					$(this).children("span").html("<span>안녕하십니까?</span> <br /> <span>저는 당신을 도와줄 &lt빵빵덕> 입니다!</span> <br /> <span>문제가 발생한다면 해결할 수 있게 도와드리겠습니다!</span>");
				}
			}
		}else{
			if($(this).is(":animated")){return false;}else{
				$(this).stop().animate({
					width:40+"%"
				}, function(){
					$("#leftIcon").stop().fadeIn(1000);
					$("#moveLeftIcon").css({"display" : "block"});
					$(this).children("span").stop().fadeIn(1000);
				});
				
				$(this).children("img").attr("alt", "helperOn");
			}
		}
	});
	
	$("body").on("mousewheel", function(event){
		// console.log(event.originalEvent.wheelDelta);		
		if($(".myInfo").is(":animated")){return false;}else{
			$("#loginButton").stop().fadeOut(300);
			$(".myInfo > span").stop().fadeOut(300);
			$("#rightIcon").stop().fadeOut(800);
			$("#moveRightIcon").css({"display" : "none"});
			
			$(".myInfo").stop().animate({
				width:140
			}, 1000, function(){
				$("#sign").stop().fadeOut(0);
				$("#login").stop().fadeIn(0);
			});
		}
		
		if($(".note").is(":animated")){return false;}else{
			$(".note").stop().animate({
				width:140
			}, 1000);
			
			$("#leftIcon").stop().fadeOut(800);
			$("#moveLeftIcon").stop().fadeOut(800);
			$(".note").children("span").stop().fadeOut();
			$(".note").children("img").attr("alt", "helperOff");
			
			$(".note").children("span").html("<span>안녕하십니까?</span> <br /> <span>저는 당신을 도와줄 &lt빵빵덕> 입니다!</span> <br /> <span>문제가 발생한다면 해결할 수 있게 도와드리겠습니다!</span>");
		}
		
		if($(".modal").is(":animated")){return false;}else{
			$(".modal").stop().animate({
				top: "-100%"
			}, 500);
		}
	});
	
	$("#menu > li").click(function(){
		if($(".note").is(":animated")){return false;}else{
			if($("#joinModal").is(":animated")){return false;}else{
				$("#joinModal").stop().animate({
					top:"-100%"
				}, 500);
			}
		}
		
		if($(".myInfo").is(":animated")){return false;}else{
			$("#loginButton").stop().fadeOut(300);
			$(".myInfo > span").stop().fadeOut(300);
			$("#rightIcon").stop().fadeOut(800);
			$("#moveRightIcon").stop().fadeOut(800);
			$("#leftIcon").stop().fadeOut(800);
			$("#moveLeftIcon").stop().fadeOut(800);
			
			$(".myInfo").stop().animate({
				width:140
			}, 1000, function(){
				$("#sign").stop().fadeOut(0);
				$("#login").stop().fadeIn(0);
			});
		}
		
		if($(".note").is(":animated")){return false;}else{
			$(".note").stop().animate({
				width:140
			}, 1000);
			
			$("#leftIcon").stop().fadeOut(800);
			$("#moveLeftIcon").css({"display" : "none"});
			$(".note").children("span").stop().fadeOut();
			$(".note").children("img").attr("alt", "helperOff");
			
			$(".note").children("span").html("<span>안녕하십니까?</span> <br /> <span>저는 당신을 도와줄 &lt빵빵덕> 입니다!</span> <br /> <span>문제가 발생한다면 해결할 수 있게 도와드리겠습니다!</span>");
		}
	});
	
	$("#join").click(function(){
		if($("#joinModal").is(":animated")){return false;}else{
			$("#joinModal").stop().animate({
				top: "0"
			}, 500);
		}
		
		if($(".note").is(":animated")){return false;}else{
			$(".note").stop().animate({
				width:40+"%"
			}, function(){
				$("#leftIcon").stop().fadeIn(1000);
				$("#moveLeftIcon").css({"display" : "block"});
				$(".note").children("span").stop().fadeIn(1000);
			});
			
			$(".note").children("img").attr("alt", "helperOn");
			
			$(".note").children("span").html("<span>처음 방문하셨습니까?</span> <br /> <span>회원가입을 위해 요구하는 사항을 채워주세요!</span> <br /> <span>궁금하신 점이 있다면 물음표를 클릭해주세요.</span>");
		}
	});
	
	function closeMove(){
		$("#joinCloseUp").stop().animate({
			top:"-100px",
			opacity: "0"
		}, 1000, function(){
			$("#joinCloseUp").css({"top" : "0", "opacity" : "1"});
			closeMove();
		});
	}
	
	$("#joinClose").hover(function (){
		closeMove();
	}, function(){
		$("#joinCloseUp").stop();
		$("#joinCloseUp").css({"top" : "0", "opacity" : "1"});
	});
	
	$("#joinClose").click(function(){
		if($(".note").is(":animated")){return false;}else{
			if($("#joinModal").is(":animated")){return false;}else{
				$("#joinModal").stop().animate({
					top:"-100%"
				}, 500);
			}
			
			$(".note").stop().animate({
				width:140
			}, 1000);
			
			$("#leftIcon").stop().fadeOut(800);
			$("#moveLeftIcon").css({"display" : "none"});
			$(".note").children("span").stop().fadeOut();
			$(".note").children("img").attr("alt", "helperOff");
			
			$(".note").children("span").html("<span>안녕하십니까?</span> <br /> <span>저는 당신을 도와줄 &lt빵빵덕> 입니다!</span> <br /> <span>문제가 발생한다면 해결할 수 있게 도와드리겠습니다!</span>");
		}
	});
	
	function right(){
		if($("#moveRightIcon").is(":animated")){return false;}else{
			$("#moveRightIcon").stop().animate({
				left:"20%",
				opacity: "0"
			}, 1000, function(){
				$("#moveRightIcon").css({"left" : "3%", "opacity" : "1"});
				right();
			});
		}
	}
	
	$("#rightIcon").hover(function (){
		right();
	}, function(){
		$("#moveRightIcon").stop();
		$("#moveRightIcon").css({"left" : "3%", "opacity" : "1"});
	});
	
	function left(){
		if($("#moveLeftIcon").is(":animated")){return false;}else{
			$("#moveLeftIcon").stop().animate({
				right:"20%",
				opacity: "0"
			}, 1000, function(){
				$("#moveLeftIcon").css({"right" : "3%", "opacity" : "1"});
				left();
			});
		}
	}
	
	$(".note").hover(function (){
		left();
	}, function(){
		$("#moveLeftIcon").stop();
		$("#moveLeftIcon").css({"right" : "3%", "opacity" : "1"});
	});
});