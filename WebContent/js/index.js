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
			});
		}
	});
	
	$(".note").animate({
		width:40+"%"
	}, function(){
		$(".note").children("span").fadeIn();
		$("#leftIcon").fadeIn();
	});
	
	$(".note").children("img").attr("alt", "helperOn");
	
	$(".note").on("click", function(){
		if($(this).children("img").attr("alt") == "helperOn"){
			if($(this).is(":animated")){return false;}else{
				$(this).stop().animate({
					width:140
				}, 1000);
				
				$("#leftIcon").fadeOut(800);
				$(this).children("span").stop().fadeOut();
				$(this).children("img").attr("alt", "helperOff");
				
				$(this).children("span").html("<span>안녕하십니까?</span> <br /> <span>저는 당신을 도와줄 &lt빵빵덕> 입니다!</span> <br /> <span>문제가 발생한다면 해결할 수 있게 도와드리겠습니다!</span>");
			}
		}else{
			if($(this).is(":animated")){return false;}else{
				$(this).stop().animate({
					width:40+"%"
				}, function(){
					$("#leftIcon").fadeIn(1000);
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
			
			$("#leftIcon").fadeOut(800);
			$(".note").children("span").stop().fadeOut();
			$(".note").children("img").attr("alt", "helperOff");
		}
	});
	
	$("#menu > li").click(function(){
		if($(".myInfo").is(":animated")){return false;}else{
			$("#loginButton").stop().fadeOut(300);
			$(".myInfo > span").stop().fadeOut(300);
			$("#rightIcon").stop().fadeOut(800);
			
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
			
			$("#leftIcon").fadeOut(800);
			$(".note").children("span").stop().fadeOut();
			$(".note").children("img").attr("alt", "helperOff");
		}
	});
});