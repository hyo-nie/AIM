<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - 예매</title>

<jsp:include page="../inc/include.jsp" />
<script type="text/javascript">
	$(document).ready(function(){
		
	
	});
</script>




</head>
<body>
	<!-- 각종 요소 -->
	<!-- 상위 배너 -->
	<jsp:include page="../inc/topbanner.jsp" />
	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp" />


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<div id="loading" class="hidden"></div>



	



	<div id="divMinimap" class="screen_preview_con" style="display: none;">
		<div class="screen_info cineCont">
			<div class="smallScreen">
				<span class="title_screen1">SCREEN</span>
				<div class="minimap"></div>
			</div>
		</div>
	</div>


	<div id="sub_section">
		<div id="contents" class="contents_full contents_reserve" style="">
			<div class="wrap_reserve ">
				<h2 class="hidden">예매하기</h2>
				<div class="section_step_tit">
					<ul>
						<li class="step01 prev"><a href="#"><strong class="tit"><span>01</span><br>상영시간</strong>
							<div class="bx_con">
									<dl>
										<dt>선택한 영화 제목</dt>
										<dd>블랙 팬서: 와칸다 포에버(디지털)</dd>
										<dt>선택한 상영관</dt>
										<dd>강동 10관 레이저영사기</dd>
										<dt>선택한 상영 날짜</dt>
										<dd>2022-11-18 (금)</dd>
										<dt>선택한 시간</dt>
										<dd>13:50 ~ 16:41</dd>
									</dl>
								</div></a></li>
						<li class="step02 prev"><a href="#"><strong class="tit"><span>02</span><br>인원/좌석</strong>
							<div class="bx_con">
									<dl>
										<dt>선택한 인원</dt>
										<dd>성인2</dd>
										<dt>선택한 좌석</dt>
										<dd>L9, L10</dd>
									</dl>
								</div></a></li>
						<li class="step03 active"><a href="#"><strong class="tit"><span>03</span><br>결제</strong>
							<div class="bx_con">
									<dl>
										<dt>티켓금액</dt>
										<dd>30,000원</dd>
										<dt>할인금액</dt>
										<dd>0원</dd>
										<dt>총합계</dt>
										<dd>30,000원</dd>
									</dl>
								</div></a></li>
						<li><a href="#" style="cursor: default;"><strong
								class="tit"><span>04</span><br>결제완료</strong></a></li>
					</ul>
				</div>
				<div id="reserveStep01" class="section_step_con step01 ">
					<h3 class="hidden">상영시간</h3>
				</div>
				<div id="reserveStep02" class="section_step_con step02 ">
					<h3 class="hidden">인원/좌석</h3>
				</div>
				<div id="reserveStep03" class="section_step_con step03 active">
					<h3 class="hidden">결제</h3>
					<div class="article article_sum_infor">
						<div class="group_top">
							<h4 class="tit">예매정보</h4>
						</div>
						<div class="inner">
							<div class="movie_infor new2020">
								<span class="thm"><img
									src="https://caching.lottecinema.co.kr//Media/MovieFile/MovieImg/202211/18944_104_1.jpg"
									alt="블랙 팬서: 와칸다 포에버"></span><strong class="tit"><span
									class="ic_grade gr_12"></span>&nbsp;블랙 팬서: 와칸다 포에버(디지털)</strong>
								<dl class="dlist_infor">
									<dt>일시</dt>
									<dd>
										<strong>2022-11-18 (금) 13:50 ~ 16:41</strong>
									</dd>
									<dt>영화관</dt>
									<dd>강동 10관 레이저영사기 - 2D</dd>
									<dt>인원</dt>
									<dd>성인2</dd>
								</dl>
							</div>
							<div class="seat_infor">
								<dl class="dlist_infor">
									<dt>좌석</dt>
									<dd>
										<strong>L9, L10</strong>
									</dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="article article_pay_method">
						<div class="group_top">
							<h4 class="tit">결제수단</h4>
							<button type="button" class="btn_txt_reset">초기화</button>
						</div>
						<div class="inner">
							<div
								class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_1"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_1_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="group_discount" style="display: block;">
											<h3 class="tit_payment">할인/포인트</h3>
											<div class="tab_wrap3 reset selected">
												<div class="tab_tit case2">
													<ul>
														<li><button class="active">
																L.POINT <strong class="point">조회</strong>
															</button></li>
														<li><button class="">L.POINT 카드번호</button></li>
													</ul>
												</div>
											</div>
											<div class="wrap_coupon">
												<div class="bx_cate">
													<ul class="list_pay_item cate4">
														<li id="point_vip"><button class="">
																VIP/Friends<span class="txt_cnt">0</span>
															</button></li>
														<li id="point_admission"><button class="">
																관람권<span class="txt_cnt">0</span>
															</button></li>
														<li id="point_discount"><button class="">
																할인권<span class="txt_cnt">0</span>
															</button></li>
														<li class="mline" id="point_etc"><button class="">제휴포인트/할인</button></li>
													</ul>
												</div>
											</div>
											<div class="toggle_wrap no couplechk" style="display: none;"></div>
										</div>
										<div class="group_payment">
											<h5 class="tit_payment">최종 결제수단</h5>
											<div class="bx_cate">
												<ul class="list_pay_item cate6">
													<li><button type="button" class="cate1 ">신용카드</button></li>
													<li><button type="button" class="cate2 ">엘페이</button></li>
													<li><button type="button" class="cate3 ">간편결제</button></li>
													<li><button type="button" class="cate4 ty2 ">휴대폰</button></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div id="mCSB_1_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="article article_payment">
						<div class="group_top">
							<h4 class="tit">결제하기</h4>
						</div>
						<div class="inner">
							<div class="select_item_wrap">
								<div class="group_item active">
									<div class="bx_item">
										<input type="checkbox" id="chkSavingPoint" checked=""><label
											for="chkSavingPoint" class="ty2">L.POINT 적립</label>
										<div class="tooltip_box">
											<button class="ic_question">?</button>
											<div class="tooltip">
												<strong>L.POINT 적립 안내</strong>
												<ul class="list_txt">
													<li>ID적립은 로그인 ID로 자동 적립 됩니다.</li>
													<li>카드번호적립은 결제 후 LPOINT 카드 번호를 직접 입력하여, 적립이 가능합니다.</li>
													<li>L.PAY로 결제하시면, L.PAY 가입 시 인증한 L.POINT ID로 적립됩니다.</li>
													<li>롯데시네마 관람권 구매, 제휴 모바일 쿠폰사용에 대한 건은 포인트가 적립되지 않습니다.</li>
													<li>포인트별 적립내용은 다음과 같습니다.</li>
													<li>L.POINT : L.POINT 카드 또는 롯데 신용카드 번호 입력시 회원등급에 따라 차등
														적립 됩니다. 단, 미등록 카드번호 입력시 결제금액의 0.1%가 적립됩니다.</li>
												</ul>
												<button class="btn_close">닫기</button>
											</div>
										</div>
										<div class="area_rdo">
											<span><input type="radio" id="rdoSavingLPointId"
												value="ID" checked=""><label for="rdoSavingLPointId">ID적립</label></span><span><input
												type="radio" id="rdoSavingLPointNum" value="CARD"><label
												for="rdoSavingLPointNum">카드번호 적립</label></span>
										</div>
									</div>
								</div>
							</div>
							<div class="payment_sum_wrap">
								<dl>
									<dt>상품금액</dt>
									<dd>
										<strong>30,000</strong>원
									</dd>
								</dl>
								<dl>
									<dt>할인금액</dt>
									<dd>
										-<strong>0</strong>원
									</dd>
								</dl>
								<dl>
									<dt>결제금액</dt>
									<dd>
										총<strong>30,000</strong>원
									</dd>
								</dl>
								<a href="#none" class="btn_col1 btn_confirm">결제하기</a>
							</div>
						</div>
					</div>
				</div>
				<div id="reserveStep04" class="section_step_con step04 ">
					<h3 class="hidden">결제완료</h3>
				</div>
			</div>
		</div>
	</div>

	<!-- popup : 추가상품구매 -->
	<div id="layerAddprodbuy" class="layer_wrap layer_pay_addprodbuy_infor">
	</div>
	<!-- //popup : 추가상품구매 -->


	<div id="layerNoticePopup" class="layer_wrap layer_Combi_Notice">

	</div>

	<!-- //popup : confirm 창-->
	<div id="layerEventConfirm" class="layer_wrap layer_coupon_del">
		<strong class="hidden">레이어 팝업 시작</strong>
		<div class="layer_contents">
			<div class="bx_alert1 alert_type1"></div>
		</div>
		<div class="layer_footer">
			<ul class="btn_wrap"></ul>
		</div>
		<strong class="hidden txtTabIndex" tabindex="0">레이어 팝업 끝</strong>
	</div>


	<script src="/NLCHS/Scripts/common/modal.js"></script>
	<script src="/NLCHS/Content/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/NLCHS/Content/js/jquery.mask.min.js"></script>
	<script src="/NLCHS/Scripts/common/LcCommon.js?v=202211180102"></script>
	<script
		src="/NLCHS/Scripts/Dist/OrderSettlementEx.bundle.js?v=202211180102"></script>
	<script src="/NLCHS/Scripts/common/seat.js?v=202211180102"></script>


	<form id="settleBankForm" name="settleBankForm" action=""
		target="x_frame" method="POST">
		<input type="hidden" id="hdInfo" name="hdInfo" value=""> <input
			type="hidden" id="apiVer" name="apiVer" value=""> <input
			type="hidden" id="processType" name="processType" value=""> <input
			type="hidden" id="mercntId" name="mercntId" value=""> <input
			type="hidden" id="ordNo" name="ordNo" value=""> <input
			type="hidden" id="trDay" name="trDay" value=""> <input
			type="hidden" id="trTime" name="trTime" value=""> <input
			type="hidden" id="trPrice" name="trPrice" value=""> <input
			type="hidden" id="taxPrice" name="taxPrice" value=""> <input
			type="hidden" id="vatPrice" name="vatPrice" value=""> <input
			type="hidden" id="dutyFreePrice" name="dutyFreePrice" value="">
		<input type="hidden" id="productNm" name="productNm" value="">
		<input type="hidden" id="dutyFreeYn" name="dutyFreeYn" value="">
		<input type="hidden" id="shopNm" name="shopNm" value=""> <input
			type="hidden" id="cphoneNo" name="cphoneNo" value=""> <input
			type="hidden" id="email" name="email" value=""> <input
			type="hidden" id="callbackUrl" name="callbackUrl" value=""> <input
			type="hidden" id="cancelUrl" name="cancelUrl" value=""> <input
			type="hidden" id="regularpayYn" name="regularpayYn" value="">
		<input type="hidden" id="mercntParam1" name="mercntParam1" value="">
		<input type="hidden" id="mercntParam2" name="mercntParam2" value="">
		<input type="hidden" id="signature" name="signature" value="">
	</form>




	<div id="banner_reserve_section" class="banner_reserve_wrap">
		<div class="bx_lft">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_37&amp;adgroupid=adg_lottecinema_20221031_17&amp;adid=adi_lottecinema_20221031_17"
				target=""><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2022/Hyundaicard/Hyundaicard_160300.jpg"
				alt="상시 영화티켓 장당 6,000M포인트 사용 자세히보기"></a>
		</div>
		<div class="bx_rgt">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_37&amp;adgroupid=adg_lottecinema_20221031_50&amp;adid=adi_lottecinema_20221031_50"
				target="_blank"><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2022/Mp/Mp_160300.jpg"
				alt="현대해상 다이렉트 신규 자동차보험 30만원 이상 가입 시 3만원 롯데 상품권 지급"></a>
		</div>
	</div>
	<div id="banner_side_section" class="banner_side_wrap"></div>
	<div id="banner_section" class="banner_wrap">
		<div class="banner_01">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_34&amp;adgroupid=adg_lottecinema_20221108_19&amp;adid=adi_lottecinema_20221108_25"
				target=""><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2022/ST/1108/ST_980180.jpg"
				alt=""></a>
		</div>
		<div id="footerBanner" class="banner_type02"
			style="background-color: rgb(0, 92, 185); background-image: url(&quot;https://caching2.lottecinema.co.kr/lotte_image/2017/bg_01.jpg&quot;); background-repeat: repeat-x; background-position: 0px 0px;">
			<a
				href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_36&amp;adgroupid=adg_lottecinema_20221031_19&amp;adid=adi_lottecinema_20221031_19"
				target=""><img
				src="https://caching2.lottecinema.co.kr/lotte_image/2022/Hyundaicard/Hyundaicard_980240.jpg"
				alt="상시 영화티켓 장당 6,000M포인트 사용 자세히보기"></a>
		</div>
	</div>
	<div id="footer_section" class="footer">
		<div class="inner">
			<span class="f_logo"><img
				src="/NLCHS/Content/images/common/logo_footer.gif"
				alt="LOTTE CINEMA"></span>
			<ul class="f_menu">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/MemberClause"
					title="회원약관" target="_self">회원약관</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/IndividualInfomationHandlingPolicy"
					title="개인정보처리방침" target="_self"><strong>개인정보처리방침</strong></a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/EmailCollectionRefusal"
					title="이메일무단수집거부" target="_self">이메일무단수집거부</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/ElectronicManagementPolicy"
					title="영상정보처리기기 운영 및 관리방침" target="_self">영상정보처리기기 운영 및 관리방침</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point"
					title="L.POINT회원안내" target="_self">L.POINT회원안내</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Etc/AssignStandard"
					title="배정기준" target="_self">배정기준</a></li>
				<li><a
					href="http://www.lottecinema.co.kr/LCCS/Contents/employ/individuals.aspx"
					title="채용안내" target="_blank">채용안내</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/LCCS/Contents/ad/advertinquiry.aspx"
					title="광고/임대문의" target="_blank">광고/임대문의</a></li>
				<li><a href="http://www.lottecinema.co.kr/LCCS/index.aspx"
					title="기업정보" target="_blank">기업정보</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/LCCS/Contents/ethical/ethicsintroduce.aspx"
					title="사회적책임" target="_self">사회적책임</a></li>
			</ul>
			<div class="bx_address">
				<address>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</address>
				<span class="bar">고객센터 1544-8855</span><br>
				<span>대표이사 최병환</span><span class="bar">사업자등록번호 313-87-00979</span><span
					class="bar">통신판매업신고번호 제1184호</span><span class="bar">개인정보 보호
					최고 책임자 김무성</span>
			</div>
			<p class="copyright">COPYRIGHT© LOTTE CINEMA ALL RIGHT RESERVED.</p>
		</div>
		<div class="article_award">
			<div class="inner">
				<ul>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_NCSI7.PNG?v=22042601"
						alt="NCSI / NCSI 영화관부문 7년 연속 1위"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_kcsi.png?v=21020102"
						alt="KCSI 영화관부문 7년 연속 1위(총12회)"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_kssqi-11.png?v=22111001"
						alt="KS-SQI 영화관부문 11년 연속 1위(총14회)"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_brandcinema.png?v=21020101"
						alt="올해의 브랜드대상 영화관 부문 10년 연속 1위"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_greenstar.png?v=21020101"
						alt="그린스타 영화관 부문 4년 연속 1위"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_brandstar.png?v=21020101"
						alt="대한민국 브랜드 스타 영화관 부문 1위"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_familyship.png?v=21020101"
						alt="가족친화 인증기업 선정"></li>
					<li><img
						src="/NLCHS/Content/images/common/footer_award_winner.png?v=21020101"
						alt="소셜미디어 브랜드분야 WINNER 수상"></li>
				</ul>
			</div>
		</div>
	</div>











</body>







<!-- 약관 -->
<jsp:include page="../inc/footer.jsp" />


</body>
</html>