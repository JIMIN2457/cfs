<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="//ajax.googleapis.com">
    <link rel="dns-prefetch" href="//code.jquery.com">
    <link rel="dns-prefetch" href="//cdnjs.cloudflare.com">
    <link rel="dns-prefetch" href="//connect.facebook.net">
    <link rel="dns-prefetch" href="//fbstatic-a.akamaihd.net">
    <link rel="dns-prefetch" href="//s3-ap-northeast-1.amazonaws.com">
    <link rel="dns-prefetch" href="//www.youtube.com">
    <link rel="dns-prefetch" href="//www.google-analytics.com">

    <meta charset="utf-8">
    
    <meta http-equiv="x-ua-compatible" content="ie=edge">
<script type="text/javascript"
	src="https://bam.nr-data.net/1/877a8005ff?a=3971240&amp;v=1044.a6554e7&amp;to=dllfFxNcD1tXEB9IVVBSVgYSHA1SRQ%3D%3D&amp;rst=905&amp;ref=https://tumblbug.com/ink_3505/pledge&amp;ap=378&amp;be=451&amp;fe=880&amp;dc=522&amp;perf=%7B%22timing%22:%7B%22of%22:1509092523234,%22n%22:0,%22u%22:434,%22ue%22:434,%22f%22:4,%22dn%22:4,%22dne%22:4,%22c%22:4,%22ce%22:4,%22rq%22:5,%22rp%22:430,%22rpe%22:433,%22dl%22:442,%22di%22:522,%22ds%22:522,%22de%22:564,%22dc%22:879,%22l%22:879,%22le%22:884%7D,%22navigation%22:%7B%7D%7D&amp;jsonp=NREUM.setToken"></script>
<script src="https://js-agent.newrelic.com/nr-1044.min.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/all.js"></script>
<script type="text/javascript" async=""
	src="https://cdn.astronomer.io/analytics.js/v1/jMrtLL6v6xXmMGP7h/analytics.min.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","errorBeacon":"bam.nr-data.net","licenseKey":"877a8005ff","applicationID":"3971240","transactionName":"dllfFxNcD1tXEB9IVVBSVgYSHA1SRQ==","queueTime":0,"applicationTime":378,"ttGuid":"","agentToken":null,"agent":"","extra":""}</script>
<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(2),u=e(3),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}finally{f.emit("fn-end",[c.now()],t)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now()])}},{}],2:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],3:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],4:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=m(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){v[e]=m(e).concat(n)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(t)}function g(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var v={},y={},b={on:l,emit:t,get:w,listeners:m,context:n,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(2),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=h.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+h.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===d.readyState&&i()}function i(){f("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),f=e("handle"),c=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1044.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=n.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),f("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link
	href="https://d1pqmsyqo4bi9.cloudfront.net/assets/app-d66e59f8efdc4bdb8362c947589107f7.css"
	media="screen" rel="stylesheet" type="text/css">
    <title>나의 작은 갤러리 명화뱃지 밀어주기 :: 텀블벅</title>

    <meta content="authenticity_token" name="csrf-param">
<meta content="Ir+9+/CxmCDDJ7Sg4jfQLQRBrj7MoM5lxNC4eLbpyhM="
	name="csrf-token">
    <link href="https://tumblbug.com/ink_3505/pledge" rel="canonical">

    <link
	href="https://d1pqmsyqo4bi9.cloudfront.net/assets/favicon-b594df9b14d52e12c4e12c4714d0539c.png"
	rel="shortcut icon" type="image/png">
    <link
	href="https://d1pqmsyqo4bi9.cloudfront.net/assets/ios_57-ae293c21544c4068bfc297ed55261d45.png"
	rel="apple-touch-icon" type="image/png">
    <link
	href="https://d1pqmsyqo4bi9.cloudfront.net/assets/ios_72-c357a2c60562ceb45f3b1728a0d08fc0.png"
	rel="apple-touch-icon" type="image/png">
    <link
	href="https://d1pqmsyqo4bi9.cloudfront.net/assets/ios_114-a8b60854060da6f9ffa2c404aeaf02b1.png"
	rel="apple-touch-icon" type="image/png">    

    <script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script
	src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js"></script>
    <script
	src="https://d1pqmsyqo4bi9.cloudfront.net/assets/pledges-045f772d6da164a5d18104825eca031b.js"
	type="text/javascript"></script>
    
    <script type="text/javascript">
        analytics.identify("48ce3576-7ce8-4f08-a9ba-d06bd97f3ae1", {
          email: "quswo123@naver.com",
          name: "변재"
        });
    </script>

    <meta property="og:site_name" content="tumblbug">
    <meta property="og:title" content="나의 작은 갤러리 명화뱃지">
    <meta property="og:url" content="https://tumblbug.com/ink_3505">
    <meta property="og:description"
	content="고흐의 작품 '별이빛나는 밤'과 '꽃피는 아몬드 나무'의 아름다움을 담아낸 금속뱃지입니다.">
    <meta property="og:type" content="tumblbug:project">
    <meta property="og:image"
	content="https://tumblbug-pci.imgix.net/2e13088e2d6b5c2b08fde0d10c085084684a72d6/1bfbadf25c344e4fbe2a1779f9e55405ddfc22c6/757ae76d6609595cb0d0f5ea28e331c11ced9c63/e8885b78-95d8-40a4-89f0-921ae50f5953.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=84df06d18bac3454ba49abc3949f570a">
    <meta property="og:image:width" content="620">
    <meta property="og:image:height" content="465">

    <meta name="twitter:site" content="tumblbug">
    <meta name="twitter:title" content="나의 작은 갤러리 명화뱃지">
    <meta name="twitter:description"
	content="고흐의 작품 '별이빛나는 밤'과 '꽃피는 아몬드 나무'의 아름다움을 담아낸 금속뱃지입니다.">
    <meta name="twitter:image:src"
	content="https://tumblbug-pci.imgix.net/2e13088e2d6b5c2b08fde0d10c085084684a72d6/1bfbadf25c344e4fbe2a1779f9e55405ddfc22c6/757ae76d6609595cb0d0f5ea28e331c11ced9c63/e8885b78-95d8-40a4-89f0-921ae50f5953.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=84df06d18bac3454ba49abc3949f570a">
    <meta name="twitter:url" content="https://tumblbug.com/ink_3505">
    <meta name="twitter:card" content="summary_large_image">
  <style type="text/css">
.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

.fb_link img {
	border: none
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_dialog {
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reset .fb_dialog_legacy {
	overflow: visible
}

.fb_dialog_advanced {
	padding: 10px;
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px
}

.fb_dialog_content {
	background: #fff;
	color: #333
}

.fb_dialog_close_icon {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon {
	top: 5px;
	left: 5px;
	right: auto
}

.fb_dialog_padding {
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_loader {
	background-color: #f6f7f9;
	border: 1px solid #606060;
	font-size: 24px;
	padding: 20px
}

.fb_dialog_top_left, .fb_dialog_top_right, .fb_dialog_bottom_left,
	.fb_dialog_bottom_right {
	height: 10px;
	width: 10px;
	overflow: hidden;
	position: absolute
}

.fb_dialog_top_left {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 0;
	left: -10px;
	top: -10px
}

.fb_dialog_top_right {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 -10px;
	right: -10px;
	top: -10px
}

.fb_dialog_bottom_left {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 -20px;
	bottom: -10px;
	left: -10px
}

.fb_dialog_bottom_right {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 -30px;
	right: -10px;
	bottom: -10px
}

.fb_dialog_vert_left, .fb_dialog_vert_right, .fb_dialog_horiz_top,
	.fb_dialog_horiz_bottom {
	position: absolute;
	background: #525252;
	filter: alpha(opacity = 70);
	opacity: .7
}

.fb_dialog_vert_left, .fb_dialog_vert_right {
	width: 10px;
	height: 100%
}

.fb_dialog_vert_left {
	margin-left: -10px
}

.fb_dialog_vert_right {
	right: 0;
	margin-right: -10px
}

.fb_dialog_horiz_top, .fb_dialog_horiz_bottom {
	width: 100%;
	height: 10px
}

.fb_dialog_horiz_top {
	margin-top: -10px
}

.fb_dialog_horiz_bottom {
	bottom: 0;
	margin-bottom: -10px
}

.fb_dialog_iframe {
	line-height: 0
}

.fb_dialog_content .dialog_title {
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden {
	-webkit-transform: none;
	height: 100%;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	left: 0;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered {
	width: auto;
	height: auto;
	min-height: initial;
	min-width: initial;
	background: none
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
	background: none
}

.loading.centered #fb_dialog_loader_close {
	color: #fff;
	display: block;
	padding-top: 20px;
	clear: both;
	font-size: 18px
}

#fb-root #fb_dialog_ipad_overlay {
	background: rgba(0, 0, 0, .45);
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	top: 0;
	width: 100%;
	min-height: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden {
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe {
	visibility: hidden
}

.fb_dialog_content .dialog_header {
	-webkit-box-shadow: white 0 1px 1px -1px inset;
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA),
		to(#2C4987));
	border-bottom: 1px solid;
	border-color: #1d4088;
	color: #fff;
	font: 14px Helvetica, sans-serif;
	font-weight: bold;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table {
	-webkit-font-smoothing: subpixel-antialiased;
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left {
	font-size: 12px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right {
	font-size: 12px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button {
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6),
		color-stop(.5, #355492), to(#2A4887));
	border: 1px solid #29487d;
	-webkit-background-clip: padding-box;
	-webkit-border-radius: 3px;
	-webkit-box-shadow: rgba(0, 0, 0, .117188) 0 1px 1px inset,
		rgba(255, 255, 255, .167969) 0 1px 0;
	display: inline-block;
	margin-top: 3px;
	max-width: 85px;
	line-height: 18px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input {
	border: none;
	background: none;
	color: #fff;
	font: 12px Helvetica, sans-serif;
	font-weight: bold;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center {
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #555;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer {
	background: #f6f7f9;
	border: 1px solid #555;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close {
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
	visibility: hidden
}

#fb_dialog_loader_spinner {
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-repeat: no-repeat;
	background-position: 50% 50%;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner { 0%{
	transform: rotate(0deg)
}

100%{
transform
:rotate(360deg)
}
}
.fb_iframe_widget {
	display: inline-block;
	position: relative
}

.fb_iframe_widget span {
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe {
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span,
	.fb_iframe_widget_fluid_desktop iframe {
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe {
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift {
	z-index: 1
}

.fb_hide_iframes iframe {
	position: relative;
	left: -10000px
}

.fb_iframe_widget_loader {
	position: relative;
	display: inline-block
}

.fb_iframe_widget_fluid {
	display: inline
}

.fb_iframe_widget_fluid span {
	width: 100%
}

.fb_iframe_widget_loader iframe {
	min-height: 32px;
	z-index: 2;
	zoom: 1
}

.fb_iframe_widget_loader .FB_Loader {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat;
	height: 32px;
	width: 32px;
	margin-left: -16px;
	position: absolute;
	left: 50%;
	z-index: 4
}
</style>
</head>
</head>

<body style="">
    <!-- <div data-react-class="PledgeForm"
		data-react-props="{&quot;creatorName&quot;:&quot;잉크&quot;,&quot;projectUuid&quot;:&quot;75656fff-f91d-4159-8593-b07f45463d05&quot;,&quot;projectCategoryName&quot;:&quot;제품디자인&quot;,&quot;projectPermalink&quot;:&quot;ink_3505&quot;,&quot;projectTitle&quot;:&quot;나의 작은 갤러리 명화뱃지&quot;,&quot;projectEndDate&quot;:&quot;2017-11-17T23:59:59+09:00&quot;,&quot;rewards&quot;:[{&quot;id&quot;:111120376,&quot;addressNeeded&quot;:true,&quot;description&quot;:&quot;우체국등기배송비+포장비 포함 서베이작성부탁드립니다.&quot;,&quot;money&quot;:15000,&quot;limit&quot;:null,&quot;backersCount&quot;:39,&quot;delivered&quot;:false,&quot;expectedDeliveryDate&quot;:&quot;2018-01-08T00:00:00+09:00&quot;,&quot;deliveredAt&quot;:null,&quot;isForAdultOnly&quot;:false,&quot;uuid&quot;:&quot;32643737-0d9f-4690-93c0-508c2491f4db&quot;,&quot;items&quot;:[{&quot;id&quot;:&quot;ebc5d615-0bbc-4bf2-bed6-9a0aa18f4938&quot;,&quot;title&quot;:&quot;명화뱃지&quot;,&quot;quantity&quot;:1}]},{&quot;id&quot;:111120375,&quot;addressNeeded&quot;:true,&quot;description&quot;:&quot;우체국등기배송비+포장비 포함 서베이작성부탁드립니다.&quot;,&quot;money&quot;:27500,&quot;limit&quot;:null,&quot;backersCount&quot;:70,&quot;delivered&quot;:false,&quot;expectedDeliveryDate&quot;:&quot;2018-01-08T00:00:00+09:00&quot;,&quot;deliveredAt&quot;:null,&quot;isForAdultOnly&quot;:false,&quot;uuid&quot;:&quot;5e734b38-75d6-4c34-be26-73c1aa21f6cd&quot;,&quot;items&quot;:[{&quot;id&quot;:&quot;ebc5d615-0bbc-4bf2-bed6-9a0aa18f4938&quot;,&quot;title&quot;:&quot;명화뱃지&quot;,&quot;quantity&quot;:2}]},{&quot;id&quot;:111120374,&quot;addressNeeded&quot;:true,&quot;description&quot;:&quot;우체국등기배송비+포장비 포함 서베이작성부탁드립니다.&quot;,&quot;money&quot;:40000,&quot;limit&quot;:null,&quot;backersCount&quot;:21,&quot;delivered&quot;:false,&quot;expectedDeliveryDate&quot;:&quot;2018-01-08T00:00:00+09:00&quot;,&quot;deliveredAt&quot;:null,&quot;isForAdultOnly&quot;:false,&quot;uuid&quot;:&quot;8fb443eb-b538-4ad1-84b3-82fe7f8f5f69&quot;,&quot;items&quot;:[{&quot;id&quot;:&quot;ebc5d615-0bbc-4bf2-bed6-9a0aa18f4938&quot;,&quot;title&quot;:&quot;명화뱃지&quot;,&quot;quantity&quot;:3}]},{&quot;id&quot;:111120373,&quot;addressNeeded&quot;:true,&quot;description&quot;:&quot;우체국등기배송비+포장비 포함 서베이작성부탁드립니다.&quot;,&quot;money&quot;:52500,&quot;limit&quot;:null,&quot;backersCount&quot;:0,&quot;delivered&quot;:false,&quot;expectedDeliveryDate&quot;:&quot;2018-01-08T00:00:00+09:00&quot;,&quot;deliveredAt&quot;:null,&quot;isForAdultOnly&quot;:false,&quot;uuid&quot;:&quot;ac7f16c3-730c-432a-a1f3-7be36332bf84&quot;,&quot;items&quot;:[{&quot;id&quot;:&quot;ebc5d615-0bbc-4bf2-bed6-9a0aa18f4938&quot;,&quot;title&quot;:&quot;명화뱃지&quot;,&quot;quantity&quot;:4}]},{&quot;id&quot;:111120372,&quot;addressNeeded&quot;:true,&quot;description&quot;:&quot;우체국등기배송비+포장비 포함 서베이작성부탁드립니다.&quot;,&quot;money&quot;:65000,&quot;limit&quot;:null,&quot;backersCount&quot;:0,&quot;delivered&quot;:false,&quot;expectedDeliveryDate&quot;:&quot;2018-01-08T00:00:00+09:00&quot;,&quot;deliveredAt&quot;:null,&quot;isForAdultOnly&quot;:false,&quot;uuid&quot;:&quot;568f157f-291e-43f2-ba0c-6c7d8e71f967&quot;,&quot;items&quot;:[{&quot;id&quot;:&quot;ebc5d615-0bbc-4bf2-bed6-9a0aa18f4938&quot;,&quot;title&quot;:&quot;명화뱃지&quot;,&quot;quantity&quot;:5}]},{&quot;id&quot;:111120371,&quot;addressNeeded&quot;:true,&quot;description&quot;:&quot;우체국등기배송비+포장비 포함 서베이작성부탁드립니다.&quot;,&quot;money&quot;:77500,&quot;limit&quot;:null,&quot;backersCount&quot;:2,&quot;delivered&quot;:false,&quot;expectedDeliveryDate&quot;:&quot;2018-01-08T00:00:00+09:00&quot;,&quot;deliveredAt&quot;:null,&quot;isForAdultOnly&quot;:false,&quot;uuid&quot;:&quot;29dfcf3e-c21b-4c58-a7a7-289f28777152&quot;,&quot;items&quot;:[{&quot;id&quot;:&quot;ebc5d615-0bbc-4bf2-bed6-9a0aa18f4938&quot;,&quot;title&quot;:&quot;명화뱃지&quot;,&quot;quantity&quot;:6}]}],&quot;initialPledgeAmount&quot;:null,&quot;initialLastPaymentMethodNumbers&quot;:&quot;7154&quot;,&quot;initialBankName&quot;:&quot;국민카드&quot;,&quot;initialPaymentType&quot;:0,&quot;initialIsLoggedIn&quot;:true,&quot;initialIsAdult&quot;:false,&quot;initialPhoneNumber&quot;:&quot;01020189340&quot;,&quot;initialPreviousAddresses&quot;:[],&quot;initialSelectedRewardId&quot;:null}">
		<div> -->
		<div>
			<header>
			<div ></div>
			<div >
				<div >
					<h1>
						<span >나의 작은 갤러리 명화뱃지</span><span></span>
						<span>프로젝트 밀어주기</span>
					</h1>
					<ul></ul>
				</div>
			</div></header>
			<div>
				<div ></div>
				<h2 >단계별 후원자 특전</h2>
				<div >
					<input type="radio" name="pledge[reward_id]" id="0" value="0"><label for="0">
					<div>
						<h3>
							<span >1,000</span><span>원 이상 밀어주시는 분께</span><span>드리는 특전</span>
						</h3>
							<span><input id="0"
								type="tel" name="pledge[money]" min="1000" max="10000000"
								value="1,000"><span>원</span><a></a><span>더 많이 입력하실 수 있습니다</span></span>
						</div>
						<div>
							<span>선물을 선택하지 않고, 밀어만 줍니다</span>
						</div>
						<div></div></label>
				</div>
				<div>
					<input type="radio" id="111120371"
						value="111120371"><labelfor="111120371"><div>
							<h3>
								<span>77,500</span><span>원 이상 밀어주시는 분께</span><span>드리는 특전</span>
							</h3>
							<span><input id="111120371" type="tel"min="77500" max="10000000" value="77,500">
							<span>원</span><a></a>
							<span>더 많이 입력하실 수 있습니다</span></span>
						</div>
						<div>
							<span>우체국등기배송비+포장비 포함 서베이작성부탁드립니다.</span>
							<ul>
								<li ><span>명화뱃지</span>
								<span>(×</span><span>6</span><span>)</span>
								</li>
							</ul>
						</div>
						<div>
							<span>2</span><span>명이 선택하였습니다</span><br>
							<span>예상 전달일: 2018년 1월 8일</span>
						</div></label>
				</div>
				
				<div>
					<input type="radio" id="111120371"
						value="111120371"><labelfor="111120371"><div>
							<h3>
								<span>77,500</span><span>원 이상 밀어주시는 분께</span><span>드리는 특전</span>
							</h3>
							<span><input id="111120371" type="tel"min="77500" max="10000000" value="77,500">
							<span>원</span><a></a>
							<span>더 많이 입력하실 수 있습니다</span></span>
						</div>
						<div>
							<span>우체국등기배송비+포장비 포함 서베이작성부탁드립니다.</span>
							<ul>
								<li ><span>명화뱃지</span>
								<span>(×</span><span>6</span><span>)</span>
								</li>
							</ul>
						</div>
						<div>
							<span>2</span><span>명이 선택하였습니다</span><br>
							<span>예상 전달일: 2018년 1월 8일</span>
						</div></label>
				</div>
				
				<div>
					<input type="radio" id="111120371"
						value="111120371"><labelfor="111120371"><div>
							<h3>
								<span>77,500</span><span>원 이상 밀어주시는 분께</span><span>드리는 특전</span>
							</h3>
							<span><input id="111120371" type="tel"min="77500" max="10000000" value="77,500">
							<span>원</span><a></a>
							<span>더 많이 입력하실 수 있습니다</span></span>
						</div>
						<div>
							<span>우체국등기배송비+포장비 포함 서베이작성부탁드립니다.</span>
							<ul>
								<li><span>명화뱃지</span>
								<span>(×</span><span>6</span><span>)</span>
								</li>
							</ul>
						</div>
						<div>
							<span>2</span><span>명이 선택하였습니다</span><br>
							<span>예상 전달일: 2018년 1월 8일</span>
						</div></label>
				</div>
			</div>
		</div>
	</div>
</body>
</html>