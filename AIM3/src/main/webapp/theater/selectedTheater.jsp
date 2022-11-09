<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>









</head>
<body>
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />
	<!-- 상위 배너 -->
	<jsp:include page="../inc/topbanner.jsp" />
<%-- 	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp" /> --%>
<body>

	<div id="contents"
		class="contents_theater_detail area__movingbar litype2">
		<!-- tranform -->
		<ul class="tab_wrap outer actionmovingbar">
			<li class="active"><button type="button" class="tab_tit"
					style="width: 50%; left: 0%;">
					<span>상영시간표</span>
				</button>
				<div class="tab_con ty5" id="timeTable" style="zoom: 1;">
					<h4 class="hidden">상영시간표</h4>
					<div class="date_select_wrap datetheaterWrap" padding="300 0 0 0;">
						<div class="slide_wrap slide_reserve_date_wide">
							<ul class="owl-carousel owl-loaded owl-drag">
								<div class="owl-stage-outer">
									<div class="owl-stage"
										style="transform: translate3d(0px, 0px, 0px); transition: all 0.6s ease 0s; width: 1881px;">
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><strong class="month">11월</strong><span
												class="date"><label><input type="radio"
														name="radioDate1" checked=""><strong>9</strong><em>오늘</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>10</strong><em>목</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>11</strong><em>금</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date sat"><label><input
														type="radio" name="radioDate1"><strong>12</strong><em>토</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date sun"><label><input
														type="radio" name="radioDate1"><strong>13</strong><em>일</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>14</strong><em>월</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>15</strong><em>화</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>16</strong><em>수</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>17</strong><em>목</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date"><label><input
														type="radio" name="radioDate1"><strong>18</strong><em>금</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date sat"><label><input
														type="radio" name="radioDate1"><strong>19</strong><em>토</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date sun"><label><input
														type="radio" name="radioDate1"><strong>20</strong><em>일</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>21</strong><em>월</em></label></span></li>
										</div>
										<div class="owl-item active" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>22</strong><em>화</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>23</strong><em>수</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>24</strong><em>목</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>25</strong><em>금</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date sat disabled"><label><input
														type="radio" name="radioDate1"><strong>26</strong><em>토</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date sun disabled"><label><input
														type="radio" name="radioDate1"><strong>27</strong><em>일</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>28</strong><em>월</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>29</strong><em>화</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>30</strong><em>수</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><strong class="month">12월</strong><span
												class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>1</strong><em>목</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>2</strong><em>금</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date sat disabled"><label><input
														type="radio" name="radioDate1"><strong>3</strong><em>토</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date sun disabled"><label><input
														type="radio" name="radioDate1"><strong>4</strong><em>일</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>5</strong><em>월</em></label></span></li>
										</div>
										<div class="owl-item" style="width: 67.143px;">
											<li class="item"><span class="date disabled"><label><input
														type="radio" name="radioDate1"><strong>6</strong><em>화</em></label></span></li>
										</div>
									</div>
								</div>
								<div class="owl-nav">
									<button type="button" role="presentation"
										class="owl-prev disabled">
										<span aria-label="Previous">‹</span>
									</button>
									<button type="button" role="presentation" class="owl-next">
										<span aria-label="Next">›</span>
									</button>
								</div>
								<div class="owl-dots disabled"></div>
							</ul>
						</div>
					</div>
					<div class="movie_grade_wrap">
						<span class="txt_grade gr_all">전체 관람가</span><span
							class="txt_grade gr_12">만 12세 이상 관람가</span><span
							class="txt_grade gr_15">만 15세 이상 관람가</span><span
							class="txt_grade gr_18">청소년 관람불가</span>
						<button type="button" class="btn_txt_notice" title="레이어팝업 열기">관람등급안내</button>
					</div>
					<div
						class="timeScroll mCustomScrollbar _mCS_10 mCS-autoHide mCS_no_scrollbar"
						data-mcs-theme="minimal-dark"
						style="position: relative; overflow: visible;">
						<div id="mCSB_10"
							class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
							style="max-height: none;" tabindex="0">
							<div id="mCSB_10_container"
								class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
								style="position: relative; top: 0; left: 0;" dir="ltr">
								<div class="time_select_wrap ty2 timeSelect">
									<div class="list_tit">
										<span class="ic_grade gr_12">12</span>
										<p>블랙 팬서: 와칸다 포에버</p>
										<a
											href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=18944"
											class="btn_bdr_more ty2">더보기</a>
									</div>
									<ul class="list_hall mt20" style="margin-bottom: 5px;">
										<li>2D</li>
									</ul>
									<ul class="list_time">
										<li class=""><a role="button"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>21:50</strong>
														<div class="tooltip">종료 24:41</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>144</strong> / 174
													</dd>
													<dt>상영관</dt>
													<dd class="hall">4관</dd>
												</dl></a></li>
										<li class=""><a role="button"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>22:40</strong>
														<div class="tooltip">종료 25:31</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>358</strong> / 384
													</dd>
													<dt>상영관</dt>
													<dd class="hall">5관</dd>
												</dl></a></li>
									</ul>
								</div>
								<div class="time_select_wrap ty2 timeSelect">
									<div class="list_tit">
										<span class="ic_grade gr_15">15</span>
										<p>자백</p>
										<a
											href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=19009"
											class="btn_bdr_more ty2">더보기</a>
									</div>
									<ul class="list_hall mt20" style="margin-bottom: 5px;">
										<li>2D</li>
									</ul>
									<ul class="list_time">
										<li class=""><a role="button"><dl>
													<dt>상영시간</dt>
													<dd class="time">
														<strong>22:50</strong>
														<div class="tooltip">종료 24:45</div>
													</dd>
													<dt>잔여석</dt>
													<dd class="seat">
														<strong>137</strong> / 142
													</dd>
													<dt>상영관</dt>
													<dd class="hall">7관</dd>
												</dl></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div id="mCSB_10_scrollbar_vertical"
							class="mCSB_scrollTools mCSB_10_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
							style="display: none;">
							<div class="mCSB_draggerContainer">
								<div id="mCSB_10_dragger_vertical" class="mCSB_dragger"
									style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
									<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
								</div>
								<div class="mCSB_draggerRail"></div>
							</div>
						</div>
					</div>
				</div></li>
			<li><button type="button" class="tab_tit"
					style="width: 50%; left: 50%;">
					<span>요금안내</span>
				</button>
				<div class="tab_con ty2">
					<h4 class="hidden">요금안내</h4>
					<ul class="tab_wrap outer lft sml">
						<li class="active"><button type="button" class="tab_tit"
								style="left: 0px; width: 48px;">
								<span>일반관</span>
							</button>
							<div class="tab_con ty2">
								<h4 class="hidden">일반관</h4>
								<div class="th_price_wrap">
									<div>
										<div class="th_price_tit">
											<h5 class="tit">2D 일반석</h5>
											<p>단, 공휴일은 주말요금 반영</p>
										</div>
										<table class="th_price_table"
											summary="2D 일반석 영화관 요금에 대한 내용입니다.">
											<caption>2D 영화관 요금</caption>
											<colgroup>
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th colspan="7">주중<span>(월~목)</span></th>
													<th colspan="7">주말<span>(금~일)</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="price_tabletoptitle">
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
												</tr>
												<tr>
													<th>조조</th>
													<td>10,000</td>
													<td>8,000</td>
													<td>7,000</td>
													<td>5,000</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>조조</th>
													<td>11,000</td>
													<td>8,000</td>
													<td>7,000</td>
													<td>5,000</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<th>일반</th>
													<td>14,000</td>
													<td>11,000</td>
													<td>7,000</td>
													<td>5,000</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>일반</th>
													<td>15,000</td>
													<td>11,000</td>
													<td>7,000</td>
													<td>5,000</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<div class="th_price_tit">
											<h5 class="tit">3D</h5>
											<p>단, 공휴일은 주말요금 반영</p>
										</div>
										<table class="th_price_table" summary="3D  영화관 요금에 대한 내용입니다.">
											<caption>2D 영화관 요금</caption>
											<colgroup>
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th colspan="7">주중<span>(월~목)</span></th>
													<th colspan="7">주말<span>(금~일)</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="price_tabletoptitle">
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
												</tr>
												<tr>
													<th>조조</th>
													<td>12,000</td>
													<td>10,000</td>
													<td>9,000</td>
													<td>8,000</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>조조</th>
													<td>13,000</td>
													<td>10,000</td>
													<td>9,000</td>
													<td>8,000</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<th>일반</th>
													<td>16,000</td>
													<td>13,000</td>
													<td>9,000</td>
													<td>8,000</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>일반</th>
													<td>17,000</td>
													<td>13,000</td>
													<td>9,000</td>
													<td>8,000</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="th_price_info_wrap">
										<div class="bx_para">
											<strong class="tit">[각 시간대별 기준]</strong>
											<ul class="list_txt">
												<li>조조 : ~ 10시 00분 까지</li>
												<li>일반 : 10시 01분 ~ 종료 시 까지</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[요일 구분 기준]</strong>
											<ul class="list_txt">
												<li>주중 : 월~목</li>
												<li>주말 : 금~일(단, 공휴일은 주말요금 적용)</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[청소년 할인]</strong>
											<ul class="list_txt">
												<li>만 4세이상~만 18세미만의 학생 또는 청소년(어린이)</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[시니어/장애 우대할인]</strong>
											<ul class="list_txt">
												<li>시니어 : 만 65세 이상 고객(반드시 본인의 신분증 지참)</li>
												<li>현장에서 복지카드를 소지한 장애인(장애의 정도가 심한 장애인 : 동반 1인까지 적용(기존
													1~3등급) / 장애의 정도가 심하지 않은 장애인 : 본인에 한함(기존 4~6등급)</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[기타 안내]</strong>
											<ul class="list_txt">
												<li>ATMOS 컨텐츠 상영시 1천원 추가요금이 책정됩니다.</li>
												<li>일부 스페셜관의 경우 장애 우대할인, 시니어 우대할인이 적용되지 않습니다.</li>
												<li>48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료관람
													가능합니다.</li>
												<br>
												<br>
											</ul>

										</div>
									</div>
								</div>
							</div></li>
						<li class=""><button type="button" class="tab_tit"
								style="left: 48px; width: 60px;">
								<span>스페셜관</span>
							</button>
							<div class="tab_con">
								<h4 class="hidden">스페셜관</h4>
								<div class="special_slct_wrap">
									<select id="cinemaspecial" class="ty3" title="스페셜관 선택"><option
											value="930">수퍼 4D</option></select>
								</div>
								<div style="margin-bottom: 5px;"></div>
								<div class="th_price_wrap">
									<div>
										<div class="th_price_tit">
											<h5 class="tit">2D 일반석</h5>
											<p>단, 공휴일은 주말요금 반영</p>
										</div>
										<table class="th_price_table"
											summary="2D 일반석 영화관 요금에 대한 내용입니다.">
											<caption>2D 영화관 요금</caption>
											<colgroup>
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th colspan="7">주중<span>(월~목)</span></th>
													<th colspan="7">주말<span>(금~일)</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="price_tabletoptitle">
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
												</tr>
												<tr>
													<th>조조</th>
													<td>12,000</td>
													<td>11,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>조조</th>
													<td>13,000</td>
													<td>12,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<th>일반</th>
													<td>17,000</td>
													<td>12,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>일반</th>
													<td>18,000</td>
													<td>12,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<div class="th_price_tit">
											<h5 class="tit">3D</h5>
											<p>단, 공휴일은 주말요금 반영</p>
										</div>
										<table class="th_price_table" summary="3D  영화관 요금에 대한 내용입니다.">
											<caption>2D 영화관 요금</caption>
											<colgroup>
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: 7%;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th colspan="7">주중<span>(월~목)</span></th>
													<th colspan="7">주말<span>(금~일)</span></th>
												</tr>
											</thead>
											<tbody>
												<tr class="price_tabletoptitle">
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
													<th class="txtleft">구분</th>
													<th>성인</th>
													<th>청소년</th>
													<th>시니어</th>
													<th>장애인</th>
													<th>어린이</th>
													<th>&nbsp;</th>
												</tr>
												<tr>
													<th>조조</th>
													<td>14,000</td>
													<td>13,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>조조</th>
													<td>15,000</td>
													<td>14,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<th>일반</th>
													<td>19,000</td>
													<td>14,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
													<th>일반</th>
													<td>20,000</td>
													<td>14,000</td>
													<td>-</td>
													<td>-</td>
													<td>-</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="th_price_info_wrap">
										<div class="bx_para">
											<strong class="tit">[각 시간대별 기준]</strong>
											<ul class="list_txt">
												<li>조조 : ~ 10시 00분 까지</li>
												<li>일반 : 10시 01분 ~ 종료 시 까지</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[요일 구분 기준]</strong>
											<ul class="list_txt">
												<li>주중 : 월~목</li>
												<li>주말 : 금~일(단, 공휴일은 주말요금 적용)</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[청소년 할인]</strong>
											<ul class="list_txt">
												<li>만 4세이상~만 18세미만의 학생 또는 청소년(어린이)</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[시니어/장애 우대할인]</strong>
											<ul class="list_txt">
												<li>시니어 : 만 65세 이상 고객(반드시 본인의 신분증 지참)</li>
												<li>현장에서 복지카드를 소지한 장애인(장애의 정도가 심한 장애인 : 동반 1인까지 적용(기존
													1~3등급) / 장애의 정도가 심하지 않은 장애인 : 본인에 한함(기존 4~6등급)</li>
												<br>
												<br>
											</ul>

											<strong class="tit">[기타 안내]</strong>
											<ul class="list_txt">
												<li>ATMOS 컨텐츠 상영시 1천원 추가요금이 책정됩니다.</li>
												<li>일부 스페셜관의 경우 장애 우대할인, 시니어 우대할인이 적용되지 않습니다.</li>
												<li>48개월 미만의 경우 증빙원(예 : 의료보험증, 주민등록 초/등본 등) 지참 시에만 무료관람
													가능합니다.</li>
												<br>
												<br>
											</ul>

										</div>
									</div>
								</div>
							</div></li>
					</ul>
				</div></li>
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>


		<!-- transform -->






































		<div class="theater_top_wrap">
			<div class="theater_tit">
				<h3 class="tit">
					<!-- 	지점이름 -->
					<a href="#"><c:out value="${dto.branch_name}" /></a>
				</h3>
			</div>
			<div class="info_wrap">
				<dl class="theater_info">
					<dt class="adr">주소</dt>
					<dd class="adr">
						<!-- 	지점주소 -->
						<p>
							<c:out value="${dto.branch_addr }" />
						</p>
					</dd>
				</dl>
			</div>
		</div>


		<!-- 지점 소개 -->


		<!-- 지점 소개 -->

		<table border="1">
			<tr>
				<!-- 			<th class="tno"> -->
				<!-- 				<a href="#">영화제목</a> -->
				<!-- 			</th> -->
				<!-- 		    <th class="ttitle"> -->
				<!-- 		    	<a href="#">상영관</a> -->
				<!-- 		    </th> -->
				<!-- 		    <th class="tdate"> -->
				<!-- 		    	<a href="#">상영시작시간</a> -->
				<!-- 		    </th> -->
				<th><a href="./branch.th?branchCd=1&date=2022-11-08">2022.11.08</a>
				</th>
				<th><a href="./branch.th?branchCd=1&date=2022-11-09">2022.11.09</a>
				</th>
			</tr>


			<c:forEach var="dto" items="${scheduleList }">
				<tr>
					<td>${dto.movieNm }</td>
					<td>${dto.roomCd }</td>
					<td>${dto.starttime}</td>
				</tr>
			</c:forEach>
			
			

		</table>
	</div>



	<!-- 하단배너 -->
	<jsp:include page="../inc/loginform_bottom_banner.jsp" />
	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>