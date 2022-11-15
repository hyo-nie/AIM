<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - 예매</title>

<jsp:include page="../inc/include.jsp"/>
<script type="text/javascript">
	$(document).ready(function(){
// 		alert('테스트');
		
		$('#theater_ym li').click(function(){
// 			alert('지점 클릭@@@@@@@@@@@@@@@@');
			$('#movieList_ym li').remove();
// 			alert($(this).val());
			$.ajax({
				url:"./TheaterClick.tk",
				data: {branchCd:$(this).val()},
				success:function(data){
// 					alert('ajax 성공!');
// 					alert(data);
					
					$('#movieList_ym').append(data);
					// ajax - theater 클릭 이벤트 끝
						
						// ajax - movie 클릭 이벤트
						$('#movieList_ym li').click(function(){
							alert('제발 되게 해주세요 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
							$('#time_select_tit_ym span').remove();
							$('#time_select_tit_ym strong').remove();
							$('#bx_notice_ym').remove();
							
							$.ajax({
								url:"./MovieClick.tk",
								data: {branch_movie:$(this).val()},
								success:function(data){
// 									alert('ajax2 성공!')
									$('#time_select_tit_ym').append(data);
								},
								error:function(){
// 									alert('ajax2 실패!')
								}
							});
							
							$('#list_time_ym li').remove();
							
							$.ajax({
								url:"./MovieClick2.tk",
								data: {branch_movie:$(this).val()},
								success:function(data){
// 									alert('ajax3 성공!')
									$('#list_time_ym').append(data);
								},
								error:function(){
// 									alert('ajax3 실패!')
								}
							});
							
						});
					// ajax - movie 클릭 이벤트 끝
						
				},
				error:function(){
					alert('ajax 실패!');
				}
			});
		});
		
		// 초기값 movie 클릭 ajax 시작
		$('#movieList_ym li').click(function(){
			alert('제발 되게 해주세요 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
			$('#time_select_tit_ym span').remove();
			$('#time_select_tit_ym strong').remove();
			$('#bx_notice_ym').remove();
			
			$.ajax({
				url:"./MovieClick.tk",
				data: {branch_movie:$(this).val()},
				success:function(data){
// 					alert('ajax2 성공!')
					$('#time_select_tit_ym').append(data);
				},
				error:function(){
// 					alert('ajax2 실패!')
				}
			});
			
			$('#list_time_ym li').remove();
			
			$.ajax({
				url:"./MovieClick2.tk",
				data: {branch_movie:$(this).val()},
				success:function(data){
// 					alert('ajax3 성공!')
					$('#list_time_ym').append(data);
				},
				error:function(){
// 					alert('ajax3 실패!')
				}
			});
			
			
		});
		// 초기값 movie 클릭 ajax 끝
		
	});

</script>

</head>
<body>
	<!-- 각종 요소 -->
	<!-- 상위 배너 -->
	<jsp:include page="../inc/topbanner.jsp"/>
	<!-- 헤더/네비 -->
	<jsp:include page="../inc/nav_bar.jsp"/>


	<br><br><br><br><br><br>


	<div id="contents" class="contents_full contents_reserve"
		style="margin-top: 120px;">
		<div class="wrap_reserve">
			<div class="section_step_tit">
				<ul>
					<li class="active step01">
						<a href="#reserveStep01">
							<strong class="tit">
								<span>01</span><br>상영시간
							</strong>
						</a>
					</li>	
					<li class="disabled">
						<a style="cursor: default;">
							<strong class="tit">
								<span>02</span><br>인원/좌석
							</strong>
						</a>
					</li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>03</span><br>결제</strong></a></li>
					<li class="disabled"><a style="cursor: default;"><strong
							class="tit"><span>04</span><br>결제완료</strong></a></li>			
				</ul>
			</div>
			
			<div id="reserveStep01" class="section_step_con step01 active">
				<div class="article article_cinema area__movingbar litype2">
					<div class="group_top">
						<h4 class="tit">영화관</h4>
					</div>
					<div class="inner">
					
					
						<!-- 영화관 선택 시작 -->
						<ul class="tab_wrap outer actionmovingbar">
							<li class="active"><button type="button" class="tab_tit" style="width: 100%; left: 0%;"><span>전체</span></button>
								
								
								<!-- 영화관 정보 시작 -->
								<div class="tab_con">
									<div class="cinema_select_wrap cinemaSelect basicCinema">
										<ul>
											<li class="depth1 active"><a href="#none" title="선택됨">부산<em>(5)</em></a>
											<div class="depth2" style="display: block;">
													<div
														class="mCustomScrollbar basicCinemaScroll _mCS_1 mCS-autoHide"
														data-mcs-theme="minimal-dark"
														style="position: relative; overflow: visible;">
														<div id="mCSB_1"
															class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
															style="max-height: none;" tabindex="0">
															<div id="mCSB_1_container" class="mCSB_container"
																style="position: relative; top: 0; left: 0;" dir="ltr">
																<ul id="theater_ym">
																	
																	<!-- 영화관 디비 정보 출력 -->
																	<c:forEach var="theater" items="${theaterList }" >
																		<li value="${theater.branchCd }"><a href="#none">${theater.branch_name }</a></li>
																	
																	</c:forEach>
																</ul>
															</div>
														</div>
														<div id="mCSB_1_scrollbar_vertical"
															class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
															style="display: block;">
															<div class="mCSB_draggerContainer">
																<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
																	style="position: absolute; min-height: 50px; display: block; height: 624px; max-height: 719px; top: 0px;">
																	<div class="mCSB_dragger_bar"
																		style="line-height: 50px;"></div>
																</div>
																<div class="mCSB_draggerRail"></div>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<!-- 영화관 정보 끝 -->
								
								
							</li>
							<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
						</ul>
						<!-- 영화관 선택 끝 -->
						
						
					</div>
				</div>	
				
				
				<!-- 영화 선택 시작 -->
				<div class="article article_movie">
					<div class="group_top">
						<h4 class="tit movie_name">영화 선택</h4>	
					</div>
					<div class="inner">
						<div class="list_filter">
							<select title="영화 정렬 방법 선택"><option value="A">예매순</option>
								<option value="B">관객순</option>
								<option value="C">평점순</option>
								<option value="D">예정작</option>
							</select>
						</div>
						<div class="movie_select_wrap list movieSelect">
							<div class="mCustomScrollbar movieScroll _mCS_9 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
								<div id="mCSB_9" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" tabindex="0" style="max-height: none;">
									<div id="mCSB_9_container" class="mCSB_container" style="position: relative; top: 0; left: 0;" dir="ltr">
										
										
										<!-- 영화 정보 시작 gr_12, 15, 18, all -->
										<ul id="movieList_ym">
											<c:set var="i" value="0"/>
											<c:forEach var="m_first" items="${movieFirst }">
												<c:set var="sc_first" value="${scheduleFirst.get(i) }"></c:set>
												<li class="" value="${sc_first.branchCd}${m_first.movieCd }">
													<a href="#none">
														<div class="group_infor">
															<div class="bx_tit">
																<span class=
																	<c:if test="${m_first.watchGradeNm.equals('12세이상관람가') }">
																		"ic_grade gr_12"
																	</c:if>
																	<c:if test="${m_first.watchGradeNm.equals('15세이상관람가') }">
																		"ic_grade gr_15"
																	</c:if>
																	<c:if test="${m_first.watchGradeNm.equals('18세이상관람가') }">
																		"ic_grade gr_18"
																	</c:if>
																	<c:if test="${m_first.watchGradeNm.equals('전체관람가') }">
																		"ic_grade gr_all"
																	</c:if>>
																</span>
																<strong class="tit">${m_first.movieNm }</strong>
																<c:set var="i" value="${i+1 }"/>
															</div>
														</div>
													</a>
												</li>
											</c:forEach>
										</ul>
										<!-- 영화 정보 시작 -->
										
										
									</div>
								</div>
								<div id="mCSB_9_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_9_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: block;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_9_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; display: block; height: 275px; max-height: 720px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 영화 선택 끝 -->
				
				
				<!-- 시간/날짜 영역 시작 -->
				<div class="article article_time area__movingbar litype6">
					<div class="group_top">
						<h4 class="tit">2022-11-09(오늘)</h4>
					</div>
					<div class="inner">
						<div class="date_select_wrap dateReserveWrap">
							<div class="slide_wrap slide_reserve_date">
								<ul class="owl-carousel owl-loaded owl-drag">
									<div class="owl-stage-outer">
										<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1470px;">
											
											
											
											<!-- 날짜 쓰는 곳 시작 -->
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item">
													<strong class="month">11월</strong>
													<span class="date">
														<label>
															<input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2022-11-09" data-isplaydate="Y"
															data-playweek="오늘" checked="">
															<strong>9</strong>
															<em>오늘</em>
														</label>
													</span>
												</li>
											</div>
											
											<div class="owl-item active" style="width: 52.5px;">
												<li class="item">
													<span class="date">
														<label>
															<input type="radio" name="radioDate1" data-displayyn="Y" data-playdate="2022-11-10" data-isplaydate="Y"
															data-playweek="목">
															<strong>10</strong>
															<em>목</em>
														</label>
													</span>
												</li>
											</div>
											<!-- 날짜 쓰는 곳 끝 -->
											
											
											
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
						<ul class="tab_wrap outer sml actionmovingbar">
							<li class="active"><button type="button" class="tab_tit"
									style="width: 33.3333%; left: 0%;">
									<span>전체</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">전체</h5>
									<div
										class="mCustomScrollbar timeScroll _mCS_22 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_22"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_22_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="bx_notice" id="bx_notice_ym">
													<p>조회 가능한 상영시간이 없습니다.</p>
													<p>조건을 변경해주세요.</p>
												</div>

												<!-- 시간 선택 그룹 -->
												<div class="group_time_select">
													
													<!-- 시간 선택 영화정보 -->
													<!-- 영화 정보 (ajax 구현), 등급, 제목 (반복) -->
													<div class="time_select_tit" id="time_select_tit_ym">
													
													</div>
													<!-- 영화 정보 (ajax 구현), 등급, 제목 (반복) -->
													<!-- 시간 선택 영화정보 -->
													
													<!-- 시간 선택 시간정보 -->
													<div class="time_select_wrap timeSelect">
														<ul class="list_time" id="list_time_ym">
														
															<!-- 해당 지점/영화 스케줄 반복 시작 -->
														
															
															
															<!-- 해당 지점/영화 스케줄 반복 끝 -->
															
														</ul>
													</div>
												</div>
											</div>
											
										</div>
										<div id="mCSB_22_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_22_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_22_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							
							
							
							<li><button type="button" class="tab_tit"
									style="width: 33.3333%; left: 33.3333%;">
									<span>조조</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">19시 이후</h5>
									<div
										class="mCustomScrollbar timeScroll _mCS_26 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_26"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_26_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="bx_notice">
													<p>조회 가능한 상영시간이 없습니다.</p>
													<p>조건을 변경해주세요.</p>
												</div>
											</div>
										</div>
										<div id="mCSB_26_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_26_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_26_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li><button type="button" class="tab_tit"
									style="width: 33.3333%; left: 66.6666%;">
									<span>심야</span>
								</button>
								<div class="tab_con ty5">
									<h5 class="hidden">심야</h5>
									<div
										class="mCustomScrollbar timeScroll _mCS_27 mCS-autoHide mCS_no_scrollbar"
										data-mcs-theme="minimal-dark"
										style="position: relative; overflow: visible;">
										<div id="mCSB_27"
											class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
											style="max-height: none;" tabindex="0">
											<div id="mCSB_27_container"
												class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
												style="position: relative; top: 0; left: 0;" dir="ltr">
												<div class="bx_notice">
													<p>조회 가능한 상영시간이 없습니다.</p>
													<p>조건을 변경해주세요.</p>
												</div>
											</div>
										</div>
										<div id="mCSB_27_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_27_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
											style="display: none;">
											<div class="mCSB_draggerContainer">
												<div id="mCSB_27_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
													<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div></li>
							<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
						</ul>
					</div>
				</div>				
				<!-- 시간/날짜 영역 끝 -->			
				
				
				
				
							
			</div>
		</div>
	</div>
	




	<!-- 약관 -->
	<jsp:include page="../inc/footer.jsp"/>
	
	
</body>
</html>