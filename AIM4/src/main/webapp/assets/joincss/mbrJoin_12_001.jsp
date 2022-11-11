<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>L.POINT</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="stylesheet"
	href="/resources/css/common.css?date=20211221000001">
<link rel="stylesheet"
	href="/resources/css/component.css?date=20211221000001">
<link rel="stylesheet"
	href="/resources/css/resize.css?date=20211221000001">
<link rel="stylesheet"
	href="/resources/css/swiper.min.css?date=20200428000001">
<script src='/resources/js/lib/jquery-1.12.3.min.js'></script>
<script src='/resources/js/lib/serialize.object.js'></script>
<script src='/resources/js/lib/json2.js'></script>
<script src='/resources/js/lib/CryptoJS.js'></script>
<script type="text/javascript" charset="utf-8"
	src="/resources/js/common.js?date=20220624"></script>
<script src="/resources/js/common-ui.js?date=20220107000001"></script>
<script src="/resources/js/common-string.js?date=20220315"></script>
<script src="/resources/js/common-channel.js?date=20211221000001"></script>
<script src="/resources/js/common-message.js"></script>
<script src='/resources/js/util.js'></script>
<script src="/resources/js/common-cookie-notice.js"></script>
<script src="/resources/js/af/itraceraf.cfg.js?date=20200521"></script>
<script src="/resources/js/af/itraceraf.min.js?date=20200521"></script>
<script src="/resources/js/af/swfobject-min.js"></script>
<script src="/resources/js/lib/swiper.min.js"></script>
<script src="/resources/js/ua.parser.min.js"></script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="/resources/polyfill/reset-ie8fix.css">
<script src="/resources/polyfill/happybrowser.js"></script>
<script src="/resources/polyfill/IE9.js"></script>
<script src="/resources/polyfill/html5shiv.js"></script>
<![endif]-->

<script type="text/javascript">
	if (window.console == undefined) {
		console = {
			log : function() {
			}
		};
	};
	//초기화 데이터(from 서버)
	Common
			.init(
					'eyJmbHdObyI6InNmbDl1VlFZS0giLCJha1NyblZkdFZhbHVlIjoicCt4SG9uK0dJOHI4RkdZV09QSHBpM3ArNGJSN3FXTnpRYTZOazNpbFRoSVx1MDAzZCJ9.L3VONFpkVWN5UmE2UEY5MitTcWNVVi9udVdqdHlFRDJJdVVoTEU5T0E5MXNzTy9ncnJMeDRrMFJCc3B1Q05PRFovK3Z5ZGNWYjY1TjlSYjhqYkQ2LzlmUmNSSU5hSTdtK3IyR3VtN3pnZXlJcklkNVRkbzJLbGJHYlhaelU4NFdMV2JBY1BvQ2JhM3RjMEtEY0FMbEk0cENWbW5YKzhaRXg2SGRlc2lIeU1wQTc5SHNNTlIvallHV0ZBTGFac0VJSW5zNTR6aUtFQ1lXT2lmTHNFZWxKQ3hpczIxVnNwN2NTS3RFTmQ4NWJWRVhhaVJzd3JTVGF3SFBBVkwzdzhSektXdXg1UWl0N2lqUzlnMjBuWVdRVWJpVktwSzdDajBkZVRjT2k1aE8zOGllbm1uaHdLKzBDREZtOUlkc2YxdmRURDg3UGh1ZjB6RXE4SGlCRnhDTUJGckI2VVNhbTJsZ0xBRExseU4vOThONFBvWFRKSVZlQlA1dDBzRjVCSHZNa1NKT1dUVXJkQWpORG04aE5GVWNlVW9raTB5ZnBPL01hcGx1RGxFMzl5U3VlUmtkc0hocFNSeU1WTTYvYmdxTHBMejROWVUrVndiS1l6elk1NlE4TkllRnNWNHBJN09nOUd1dzNZeUs4WlB6T1lMa1dTMjhTbC9qdmRJTy9CeEZKUlVaMUxyQ3ZtWWdCQU40bU50aXZtK1YyVjlJUUZRL2IxNklEbE96M2ppblZuM0YwcEJ3OGgvVEFpbVc0Y1RGd2FUTUEvc085SU91Z3BlUE56TENlb1ZSV1NpR0VxWFo0U1E2S2Uwb0JLRUNXcDBrQjRjUHArNURFUXRwdnhTcnNualRTTlBRVVRqdTZXdHdFTTNhQTNaNFR6dnRFUlZnUEIrWjlheFgxTmN5MUlBWWF1MEtUbWFMV3djTWtzeUl4a2NmODBzdTg3UTVuS3JMNWNSSGl1STh6NTgxMy9zNXc4eGRBZm5XTThQOXJ5S2N3TU1YODIxZ0trNHJwUHhacC9EZGsraGNpQnJETW9MZGgwb2dHUzh3RXIvVGFpUzZOQjdsWk96dUVRUGNUeTBhS1FJZGg5MHNHQ3BIaXR2ajRTSXRnN2N0L3FLNE9JaXNaVTc5VFRHc3luaUxtQTlPV3RDSmw5STk4R3p3M3pQMzhJMVFRY1NQL01rZDZvcHZEdlJ5RkNtcnEyS3VYckZ3dnlCRlY5M21NNjU0cVJOV2JQZzdsS085RUNnVCt4NmdMMkh2d0pQWnYwQjRQZm16',
					"N");

	var langCode = Common.getChannelData().langCode; // 언어코드
	/*
	document.oncontextmenu=function(e){if(e !== undefined ){return false;}}
	document.onselectstart=function(e){if(e !== undefined ){return false;}}
	document.ondragstart=function(e){if(e !== undefined ){return false;}}
	
	//우측 클릭 방지
	document.onmousedown = function (e){
	   if(e !== undefined && e.button == 2){
		   return false;
	   }
	};
	 */
</script>

</head>
<body id="KOR" data-device="0" oncontextmenu='return false'
	onselectstart='return false' ondragstart='return false'>
	<!-- KOR / ENG / JPN / CHN-CN / CHN-TW -->



	<!-- header -->
	<div id="mast-head">
		<div class="container">
			<h1 class="bi">
				<!-- <a href="https://www.lpoint.com/" onclick="return fnWindowOpen(this.href);" target="_blank"><img src="/resources/images/common/bi-lpoint.png" alt="L.POINT"></a> -->

				<a href="https://www.lpoint.com/"
					onclick="return fnWindowOpen(this.href);" target="_blank"><img
					src="/resources/images/common/bi-lpoint-new.png" alt="L.POINT"></a>
				<a href="#" onclick="return fnWindowOpen(this.href);"
					target="_blank" class="__none"><img
					src="/resources/images/common/img_MEMBERS.png"
					alt="Partnership LOGO" id="ccoLogo" /></a>
			</h1>

			<div class="language __none">
				<button type="button" class="ui-toggle">Language</button>
				<button type="button" onclick="fnChangeLocale('en')">English</button>
				<button type="button" onclick="fnChangeLocale('zh_cn')">简体字</button>
				<button type="button" onclick="fnChangeLocale('zh_tw')">繁體字</button>
				<button type="button" onclick="fnChangeLocale('ja')">日本語</button>


				<button type="button" onclick="fnChangeLocale('vi')">Tiếng
					Việt</button>
			</div>
		</div>
	</div>
	<!-- //header -->

	<!-- mast body -->
	<div id="mast-body">
		<div class="container">
			<!-- toparea -->
			<div class="toparea">
				<h2 class="title">
					회원가입
					<!-- 회원가입 -->
				</h2>
				<div class="step __1">
					<div class="step-desc">
						필수 약관에<br>동의해주세요:)
						<!-- 필수 약관에<br>동의해주세요:) -->
					</div>
				</div>
			</div>
			<!-- //toparea -->

			<!-- contents -->
			<div class="contents">
				<!-- 약관 -->
				<div id="member-terms" class="section __half __opt-in">
					<h3 class="subject __underline">
						<em>약관<!-- 약관 --></em>
					</h3>
					<div class="ui-check __toggle">
						<input type="checkbox" id="terms-all-check"
							data-trigger="#member-terms"> <label
							for="terms-all-check">전체동의<!-- 전체동의 --></label>
					</div>

					<div class="section __opt-in __opt-wrap" id="div-prv"></div>

					<div class="description __high">
						<p class="__point-color">
							선택약관에 동의하지 않으셔도 회원가입이 가능합니다.
							<!-- 선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실 수 있습니다. -->
						</p>
						<p>
							L.POINT 선택약관에 동의하지 않으시면 L.POINT 모든 제휴사에서 회원 혜택이 제한됩니다.<br>
							1) 롯데백화점 MVG 등 제휴사 회원등급 선정 및 추가포인트 적립 대상에서 제외<br> 2) 롯데마트 등
							쿠폰 지급 대상에서 제외<br> 3) 모든 제휴사 이벤트 당첨대상에서 제외<br> 4) 롯데ON
							L.stamp 적립 및 리워드 대상에서 제외
							<!-- L.POINT선택약관에 동의하시면 DM쿠폰발송, 백화점MVG선정 등 다양한 혜택을 경험하실 수 있습니다. -->
						</p>
					</div>
				</div>
				<!-- //약관 -->

				<!-- btn -->
				<div class="btn-area __center">
					<button type="button" class="ui-button __square-large __black"
						onclick="fnClose();">
						취소
						<!-- 취소 -->
					</button>
					<button type="button"
						class="ui-button __square-large __point-color" id="delaychk"
						onclick="fnCheckAgree('/exView/join/mbrJoin_13_001');">
						다음
						<!-- 다음 -->
					</button>
				</div>
			</div>
			<!-- //contents -->
		</div>
	</div>
	<!-- //mast body -->

	<form name="formBack" action="" id="formBack" method="post"></form>
	<form name="formNext" id="formNext" method="post">
		<input type="hidden" id="prvAgList" name="prvAgList" value="" /> <input
			type="hidden" id="resultData" name="resultData" value="" />
	</form>
	<form name="formError" action="mbrJoinS0601" id="formError"
		method="post"></form>
	<script src="/resources/js/join-agreement.js"></script>
	<script>
		$(document).ready(
				function() {
					fnPageTitle(I18n.getMessage('pg.title.mbrJoinS8003')); //약관동의 < 회원가입 < L.POINT

					var frnYn = Common.getChannelData().frnYn;
					var ccoSiteNo = Common.getChannelData().ccoSiteNo; // 제휴사 사이트 코드

					var param = {
						'ccoSiteNo' : ccoSiteNo,
						'frnYn' : frnYn
					};
					fnCallApi("/exBiz/join/esyMbrJoin_12_001", param,
							'fnEsyMbrJoinPsynCallBack'); // 간편 회원 가입가능 여부 확인

				});

		function fnEsyMbrJoinPsynCallBack(data) {
			$('#resultData').val(JSON.stringify(data));

			if (data.rspClac == 'S') {
				var ccoNo = Common.getChannelData().ccoNo;
				var onlCstTpC = Common.getChannelData().onlCstTpC;
				var frnYn = Common.getChannelData().frnYn;

				var param = {
					'ccoNo' : ccoNo, // 제휴사 번호
					'mbPrvInqDc' : '1', // 멤버스약관조회구분코드
					'ccoPrvInqDc' : '1', // 제휴사약관조회구분코드
					'onlCstTpC' : onlCstTpC, // 온라인고객유형코드
					'frnYn' : frnYn
				// 외국인여부  
				};

				// 약관 기준 정보 조회
				getAgreeData(param);

			} else if (data.rspClac == 'E') {
				fnNext('/exView/join/mbrJoin_08_004');

			} else if (data.rspClac == 'A') {
				alert(I18n.getMessage('ch.join.alt.'.concat(data.rspC
						.concat(data.rspDtc)))); // 검증 리턴 코드별 안내 메세지

			}
		}
	</script>


	<!-- Footer -->
	<div id="mast-foot">
		<div class="container">
			<div class="utility">
				<div class="item">
					<a href="http://www.lottemembers.com/">회사소개<!-- 회사소개 --></a>
				</div>
				<div class="item">
					<a href="https://m.lpoint.com/app/center/LWDE100100.do">고객센터<!-- 고객센터 --></a>
				</div>
				<div class="item">
					<a href="https://m.lpoint.com/app/center/LWDD100100.do">이용약관<!-- 이용약관 --></a>
				</div>
				<div class="item">
					<a href="https://m.lpoint.com/app/center/LWDD100100.do?popup=4"><em
						class="__point-color">개인정보처리방침<!-- 개인정보처리방침 --></em></a>
				</div>
			</div>
			<div class="com-address">
				<address>
					<span>서울시 중구 통일로 2길 16 AIA타워 14층<!-- 서울시 중구 통일로 2길 16 AIA타워 14층 --></span>
					<span>회사명 롯데멤버스(주)<!-- 회사명 롯데멤버스(주) --></span> <span>대표이사
						전형식<!-- 대표이사 강승하 -->
					</span> <span>사업자등록번호 104-86-58491<!-- 사업자등록번호 104-86-58491 --></span> <span>고객센터
						1899-8900<!-- 고객센터 1899-8900 -->
					</span>
				</address>
			</div>
			<div class="copyright">© LOTTE MEMBERS CO.,LTD.</div>
			<div class="friendly">
				<div class="site-linker">
					<button type="button" role="button" class="">
						Service Site
						<!-- Service Site -->
					</button>
					<ul>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="https://www.lpoint.com">L.POINT<!-- L.POINT --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="https://www.lpay.com">L.pay<!-- L.pay --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="https://www.lime-in.co.kr">라임<!-- 라임 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="https://partners.lpoint.com">L.POINT 파트너스<!-- L.POINT 파트너스 --></a></li>
					</ul>
				</div>
				<div class="site-linker">
					<button type="button" role="button">
						Family Site
						<!-- Family Site -->
					</button>
					<ul>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotte.co.kr">롯데그룹<!-- 롯데그룹 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lottetown.com">롯데타운<!-- 롯데타운 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotte.com/">롯데닷컴<!-- 롯데닷컴 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lottemart.com/">롯데마트<!-- 롯데마트 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.vic-market.com/vicmarket/main.do">롯데빅마켓<!-- 롯데빅마켓 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.toysrus.co.kr/to/main.do">토이저러스<!-- 토이저러스 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lottesuper.co.kr/">롯데슈퍼<!-- 롯데슈퍼 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotteimall.com/main/Index.jsp">롯데홈쇼핑<!-- 롯데홈쇼핑 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.7-eleven.co.kr/">바이더웨이<!-- 바이더웨이 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.7-eleven.co.kr/">세븐일레븐<!-- 세븐일레븐 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.himart.co.kr/">하이마트<!-- 하이마트 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.fujifilm.co.kr/">한국후지필름<!-- 한국후지필름 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lohbs.co.kr/main.do">LOHB's<!-- LOHB's --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.ellotte.com/">롯데백화점<!-- 롯데백화점 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://kr.lottedfs.com/main">롯데면세점<!-- 롯데면세점 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lottefitin.com">롯데피트인<!-- 롯데피트인 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://gimpoairport.lottemall.co.kr">롯데몰 김포공항점<!-- 롯데몰 김포공항점 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lwt.co.kr">롯데월드몰<!-- 롯데월드몰 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://store.lotteshopping.com/handler/Main-Start?subBrchCd=021&amp;gubun=2">롯데영플라자<!-- 롯데영플라자 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://store.lotteshopping.com/handler/Main-Start?subBrchCd=057">롯데아울렛<!-- 롯데아울렛 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://store.lotteshopping.com/handler/Main-Start?subBrchCd=054&amp;gubun=1">롯데프리미엄아울렛<!-- 롯데프리미엄아울렛 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.mujikorea.net/">무인양품<!-- 무인양품 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.uniqlo.kr/">유니클로<!-- 유니클로 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotteria.com/">롯데리아<!-- 롯데리아 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.angelinus.co.kr/">엔제리너스커피<!-- 엔제리너스커피 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.tgif.co.kr/">T.G.I FRIDAY'S<!-- T.G.I FRIDAY'S --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.natuur.co.kr/">나뚜루POP<!-- 나뚜루POP --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.krispykreme.co.kr/">크리스피크림도넛<!-- 크리스피크림도넛 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.boulangerie.co.kr/">보네스뻬<!-- 보네스뻬 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lottecinema.co.kr/">롯데시네마<!-- 롯데시네마 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotteworld.com/">롯데월드 어드벤처<!-- 롯데월드 어드벤처 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotteworld.com/aquarium/index.asp">롯데월드
								아쿠아리움<!-- 롯데월드 아쿠아리움 -->
						</a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lotteworld.com/waterpark/index.asp">롯데 워터파크<!-- 롯데 워터파크 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.giantsclub.com/">롯데자이언츠<!-- 롯데자이언츠 --></a></li>
						<li><a target="_blank"
							onclick="return fnWindowOpen(this.href);" title="새 창"
							href="http://www.lottejtb.com/">롯데제이티비<!-- 롯데제이티비 --></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

</body>
</html>