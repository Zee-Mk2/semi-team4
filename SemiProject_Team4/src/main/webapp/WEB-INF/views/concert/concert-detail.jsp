<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/splide-master/dist/css/splide.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/splide-master/dist/js/splide.min.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<!-- 카카오맵 -->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
	<!-- =======================
	Main Banner START -->
	<section class="pt-4 pt-lg-5">
		<div class="container position-relative">
	
			<!-- Title and button START -->
			<div class="row">
				<div class="col-12">
					<!-- Meta -->
					<div class="d-md-flex justify-content-md-between">
						<!-- Title -->
						<div>
							<ul class="nav nav-divider h6 text-body mb-0">
								<li class="nav-item fs-4 title">대중음악</li>
							</ul>
							<h1 class="fs-3 title">현대카드 슈퍼콘서트 27, 브루노 마스: the Purple osee</h1>
						</div>
	
						<!-- Buttons -->
						<ul class="list-inline text-end">
							<!-- Heart icon -->
							<li class="list-inline-item">
								<a href="#" class="btn btn-sm btn-light px-2"><i class="fa-solid fa-fw fa-heart"></i></a>
							</li>
							<!-- Share icon -->
							<li class="list-inline-item dropdown">
								<!-- Share button -->
								<a href="#" class="btn btn-sm btn-light px-2" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
									<i class="fa-solid fa-fw fa-share-alt"></i>
								</a>
								<!-- dropdown button -->
								<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare">
									<li><a class="dropdown-item" href="#"><i class="fab fa-twitter-square me-2"></i>트위터</a></li>
									<li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>페이스북</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-copy me-2"></i>링크 복사</a></li>
								</ul>
							</li>
						</ul>
					</div>
	
				</div>
			</div>
			<!-- Title and button END -->
	
			<!-- Image gallery START -->
			<div class="row mt-4">
				<div class="col-lg-6">
					<img src="https://dive.hyundaicard.com/resources/images/upload/content/8a0c359e8bbf42e5b661b6f3aedadf4d.jpg" alt="제 15회 서울재즈페스티벌" class="w-100">
				</div>
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<td class="title h5">공연기간</td>
							<td>2023.06.17(토) ~ 2023.06.18(일)</td>
						</tr>
						<tr>
							<td class="title h5">공연장소</td>
							<td>잠실종합운동장 주경기장</td>
						</tr>
						<tr>
							<td class="title h5">공연시간</td>
							<td>토요일 ~ 일요일(20:00)</td>
						</tr>
						<tr>
							<td class="title h5">관람연령</td>
							<td>만 12세 이상</td>
						</tr>
							<tr>
								<td class="title h5">티켓가격</td>
								<td>
									G1석 200,000원<br>
									G2석 168,000<br>
									G3석 132,000원<br>
									P석 140,000원<br>
									R석 105,000원<br>
									S석 79,200원<br>
									A석 61,600원<br>
								</td>
							</tr>
						<tr>
							<td class="title h5">출연진</td>
							<td>브루노 마스</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- Image gallery END -->
	
		</div>
	</section>
	<!-- =======================
	Main Banner END -->
	
	<!-- =======================
	Tabs START -->
	<section class="py-0">
		<div class="container">
			
			<!-- Tabs START -->
			<div class="row">
				<div class="col-12">
					<!-- Outer tabs START -->
					<ul class="nav nav-pills nav-justified nav-responsive bg-primary bg-opacity-10 rounded p-2" id="tour-pills-tab" role="tablist">
						<!-- Tab item -->
						<li class="nav-item" role="presentation">
							<button class="nav-link active mb-0" id="tour-pills-tab-1" data-bs-toggle="pill" data-bs-target="#tour-pills-tab1" type="button" role="tab" aria-controls="tour-pills-tab1" aria-selected="true">공연장 소개</button>
						</li>
						<!-- Tab item -->
						<li class="nav-item" role="presentation">
							<button class="nav-link mb-0" id="tour-pills-tab-2" data-bs-toggle="pill" data-bs-target="#tour-pills-tab2" type="button" role="tab" aria-controls="tour-pills-tab2" aria-selected="false">예매자 통계</button>
						</li>
					</ul> 
					<!-- Outer tabs END -->
				</div>
			</div>
			<!-- Tabs END -->
		</div>
	</section>
	<!-- =======================
	Tabs END -->
	
	<!-- =======================
	Tabs-content START -->
	<section class="pt-4 pt-md-5">
		<div class="container">
	
			<div class="row g-4 g-md-5">
				<!-- Tabs Content START -->
				<div class="col-xl-8">
					<!-- Outer tabs contents START -->
					<div class="tab-content mb-0" id="tour-pills-tabContent">
	
						<!-- Content item START -->
						<div class="tab-pane fade show active" id="tour-pills-tab1" role="tabpanel" aria-labelledby="tour-pills-tab-1">
							<div class="card bg-transparent p-0">
								<!-- Card header -->
								<div class="card-header bg-transparent border-bottom p-0 pb-3">
									<h3 class="mb-0 title fs-4">공연 소개</h3>
								</div>
	
								<!-- Card body START -->
								<div class="card-body p-0 pt-4 text-black">
									<!-- <h3 class="mb-0 title fs-5">공연시간 정보</h3><br></br>
									<p class="mb-2">2023. 6. 17(토) ~ 6. 18(일) 오후 8시</p><br></br>
									<h3 class="mb-0 title fs-5">공지사항</h3><br></br>
									<p class="mb-2">* 본 공연 예매자는 상세페이지의 내용을 숙지 및 동의한 것으로 간주합니다.
										공연 관람에 지장이 생기거나 불이익을 받지 않도록 관람 전 공연 안내사항을 꼭 확인 해 주시기 바랍니다.</p>
									<br>
									<p class="mb-2">* 본 공연은 원활한 예매 환경 제공을 위하여 예매 당일 동일좌석 재예매 서비스 이용이 일시적으로 제한됩니다.
										서비스 제한 시간: 2023년 05월 18일(목) 오후 12시 ~ 오후 1시</p>
									<br>
									<p class="mb-2">* 티켓 판매 준비를 위해 2023년 5월 17일(수) 낮 12시~5월 18일(목) 오전 11시 59분까지 티켓판매가 잠시 중단될 예정입니다.</p>
									<br>
									<p class="mb-2">* 무통장입금 선택 시 예매 당일 23시 59분에 입금이 마감됩니다.
										* 예매대기 시스템을 악용하여 부정거래에 이용하는 정황이 파악되어 본 공연은 더이상 예매대기서비스를 제공하지 않습니다.</p>
									<br></br>
									<span style="color:rgb(239,62, 67);"><브루노 마스 내한공연 부정 거래 티켓 취소 안내></p>
									안녕하세요, 라이브네이션 입니다. 여러 관객분들의 신고 및 개인 SNS와 중고거래 사이트, 프리미엄 티켓 사이트 등에서 브루노 마스 내한공연 티켓의 부정 거래 내용을 파악하였습니다.
										여러 좌석들에 대한 세부내용은 이미 파악되었으며, 나머지 좌석들도 확인 중에 있습니다.</p>
									<br>
									당사는 부정 티켓 거래가 강력히 의심/확인되는 경우, 티켓 정보 확인 후 티켓은 사전 안내 없이 예매 무효(취소) 처리 예정임을 사전에 공지드린 바 있으며, 공정거래위원회 및 개인정보위원회 등의 암표 대응을 위해 노력하고 있는 정부시책에 따라 강력하게 대응해 오고 있습니다.
									<br><br>
									부정 티켓 거래 또는 안내된 유의사항을 지키지 않아 발생하는 모든 문제에 대해 공연 주최/주관/예매처/공연장 등은 일절 책임이 없으므로, 관람객 여러분들께서는 부정 티켓 거래로 인한 불이익을 당하지 않도록 각별히 유의하시기 바랍니다.
									부정 티켓 거래를 발견하신 분은 info@livenation.kr로 거래 증거 (좌석번호, 예매 번호, 거래 가격, 판매 관련 정황이 담긴 URL, 이미지, 판매자 식별 가능한 내용 등)와 함께 지속적인 제보를 부탁드립니다 (참고로 제보메일에 회신은 따로 하지 않습니다)
									<br><br>
									*티켓 예매 정보가 담긴 이미지 및 수령한 티켓 이미지를 온라인에 업로드 또는 제3자에게 전달/제공하는 경우, 거짓 티켓 인증 등 사기 수단으로 이용될 수 있습니다. 이 경우 부정 거래 티켓으로 간주되어 해당 예매가 취소 처리 될 수 있습니다<div class="br"></div>
									*부정 거래로 간주되는 건의 해당 좌석은 당일 티켓을 소지하고 있더라도 입장이 제한될 수 있습니다<div class="br"></div>
									*제보 내용에 따르면, 오픈 되지 않은 좌석을 판매석으로 교묘히 편집하여 판매하는 수법도 확인되고 있습니다. 부정 거래 티켓 구매 시 존재하지 않는 좌석의 티켓을 구매하게 되실 수 있으니 절대 구매하지 마시기 바랍니다.
									건전한 공연 관람 문화 정립을 위해 노력하겠습니다.
									<br><br><br><br>
									<h3 class="mb-0 title fs-5">할인정보</h3></span><br>
									<p class="mb-2">- 현대카드 결제 시 20% 할인 (회당 1인 4매 한정 / Gift 카드로 티켓 구매 불가)</p><br></br>
									<p class="mb-2">- 장애인 본인 및 동반자 1인 30% 할인, 국가유공상이자 본인만 30% 할인<br>
										* 온라인 예매 시 장애인 및 국가유공자 할인 적용 가능<br>
										* 국가유공상이자증 또는 복지카드 상의 이름이 ‘예매자 본인’인 경우에만 예매 가능<br>
										* 장애인 복지할인 및 국가유공상이자 할인이 적용된 티켓은 복지카드 혹은 국가유공상이자증 확인 후 현장수령만 가능<br>
										* 예매자 본인 복지카드 미 지참 시, 현장에서 차액 지불 후 티켓 수령 가능<br>
										* 장애인 복지 할인 및 국가유공상이자 할인은 현대카드 할인과 중복 적용 불가<br>
										* 현장구매 시 장애인 복지 할인 및 국가유공상이자 할인 적용 가능</p><br><br>
									<h3 class="title fs-4">공연상세/ 출연진정보</h3> -->
									<img src="https://ticketimage.interpark.com/Play/image/etc/23/23005708-05.jpg" class="w-100">
						
								</div>
							</div>
						</div>		
						<!-- Content item END -->
	
						<!-- Content item START -->
						<div class="tab-pane fade" id="tour-pills-tab2" role="tabpanel" aria-labelledby="tour-pills-tab-2">
							<div class="card bg-transparent p-0">
								<!-- Card header -->
								<div class="card-header bg-transparent border-bottom p-0 pb-3">
									<h3 class="mb-0 title fs-5">예매자 통계</h3>
								</div>
	
								<!-- Card body START -->
								<div class="card">
									<div class="card-body bg-light p-4 my-3">
									  <div class="row">
										<div class="col-4 ps-8">
										  <div class="row">
											<h3 class="mb-0 title fs-5 pt-4">성별</h3>
											<div class="col-6 ps-2">
											  <div class="p-1">
												<img src="${path}/resources/assets/images/element/illust_male.png" alt="남자 이미지">
												<p style="font-size: 24px; font-weight: bold; margin-bottom: 0;">남자</p>
												<p style="font-size: 24px; margin-top: 0; color: rgb(5, 144, 168);">35.3%</p>
											  </div>
											</div>
											<div class="col-6">
											  <div class="pt-2">
												<img src="${path}/resources/assets/images/element/illust_female.png" alt="여자 이미지">
												<p style="font-size: 24px; font-weight: bold; margin-bottom: 0;">여자</p>
												<p style="font-size: 24px; margin-top: 0; color: rgb(5, 144, 168);">64.7%</p>
											  </div>
											</div>
										  </div>
										</div>
										<div class="col-8">
											<div class="d-flex justify-content-center">
											  <table>
												<tr>
												  <th>연령대</th>
												  <th style="text-align: right;">퍼센트(%)</th>
												</tr>
												<tr>
												  <td>10대</td>
												  <td style="text-align: right;">1.7%</td>
												</tr>
												<tr>
												  <td>20대</td>
												  <td style="text-align: right;">37.3%</td>
												</tr>
												<tr>
												  <td>30대</td>
												  <td style="text-align: right;">46%</td>
												</tr>
												<tr>
												  <td>40대</td>
												  <td style="text-align: right;">8.6%</td>
												</tr>
												<tr>
												  <td>50대</td>
												  <td style="text-align: right;">4.3%</td>
												</tr>
											  </table>
											</div>
											<div class="d-flex justify-content-center">
											  <canvas id="ageChart"></canvas>
											</div>
										  </div>
									  </div>
									</div>
								  </div>
								<!-- Card body END -->
							</div>
						</div>	
						<!-- Content item END -->
					</div>	
				</div>
				<!-- Tabs Content END -->
	
				<!-- Right side content START -->
				<aside class="col-xl-4">
					<div class="row g-4">
						<!-- Book now item START -->
						<div class="col-12">
							<div class="card card-body border bg-transparent">
								<!-- Title -->
								
								<div class="d-flex justify-content-between mb-4">
									<!-- Rating -->
									<ul class="list-inline mb-0">
										<li class="list-inline-item me-1 h6 mb-0">4.5</li>
										<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
										<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
										<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
										<li class="list-inline-item me-0 small"><i class="fas fa-star text-warning"></i></li>
										<li class="list-inline-item me-0 small"><i class="fas fa-star-half-alt text-warning"></i></li>
									</ul>
									<a href="#" class="mb-0 m-0 text-reset text-primary-hover">후기 365개</a>
								</div>
	
								<!-- Button -->
								<div class="d-grid gap-2">
									<a href="tour-booking.html" class="btn btn-primary">예매하기</a>
								</div>
	
							</div>
						</div>
						<!-- Book now item END -->
	
						<!-- Help item START -->
						<div class="col-12">
							<div class="card card-body bg-light">
								<!-- List -->
								<table class="table">
									<tr>
										<td class="fw-bold text-black"><i class="far fa-address-book text-primary"></i> 주소</td>
										<td>종합운동장 올림픽주경기장</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i class="far fa-calendar text-primary"></i> 공연기간</td>
										<td>2023. 6. 17(토) ~ 6. 18(일) 오후 8시</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i class="fas fa-calendar-day text-primary"></i> 운영일</td>
										<td>주말</td>
									</tr>
								</table>
								<a href="#" class="btn btn-outline-primary">문의하기</a>
							</div>
						</div>
						<!-- Help item END -->
						
						<!-- 날씨 위젯 -->
						<div class="tomorrow card" data-location-id="065368" data-language="KO" data-unit-system="METRIC" data-skin="light" data-widget-type="upcoming">
							<a href="https://www.tomorrow.io/weather-api/" rel="nofollow noopener noreferrer" target="_blank"
								style="position: absolute; bottom: 0; transform: translateX(-50%); left: 50%;">
								<img alt="Powered by the Tomorrow.io Weather API"
									src="https://weather-website-client.tomorrow.io/img/powered-by.svg" width="250" height="18" />
							</a>
						</div>
						
						<!-- 지도 위젯 -->
						<div class="col-12">
							<div class="card">
								<div id="map" style="border-radius: 1rem; width:100%;height:200px;"></div>
							</div>
						</div>
    
						<script type="text/javascript" src="${path}/resources/assets/js/kakaomap.js"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center: new kakao.maps.LatLng(37.511444073, 127.076251001), // 지도의 중심좌표
									level: 4, // 지도의 확대 레벨
								};
					
							// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
							var map = new kakao.maps.Map(mapContainer, mapOption);
					
							// 마커가 표시될 위치입니다 
							var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);
					
							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								position: markerPosition
							});
					
							// 마커가 지도 위에 표시되도록 설정합니다
							marker.setMap(map);
						</script>
					</div>
				</aside>
				<!-- Right side content END -->

				<div class="card">
					<div class="card-header bg-transparent border-bottom p-0 pb-3">
						<a href="community-review-conc.html">
							<h3 class="mb-0 title fs-2">후기</h3>
						</a>
					</div>
					<div class="card card-body p-4 d-flex justify-content-center my-3">
						<!-- 후기 아이템 시작 -->
						<div class="card bg-transparent my-2">
							<div class="row g-3 g-sm-4 align-items-sm-center">
								<!-- Image -->
								<div class="col-4">
									<img src="${path}/resources/assets/images/blog/01.jpg" class="card-img" alt="">
								</div>
								<div class="col-8">
									<!-- card body -->
									<div class="card-body p-0">
										<h5 class="card-title">
											<a href="community-detail.html" class="stretched-link title fs-4">후기 제목</a>
										</h5>
										<p class="flex-shrink-1 card-stars fs-6" style="font-size: 0.7rem;">
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star-half-alt text-warning"></i>
											<i class="far fa-star text-warning"></i>
											<a class="btn position-relative z-index-99 fw-normal">
												<i class="far fa-thumbs-up pe-1"></i>123
											</a>
										</p>
										<div class="pb-3">
											후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 
										</div>
										<!-- Author name and button -->
										<div class="d-flex justify-content-between align-items-center">
											<span class="small">
												<img src="${path}/resources/assets/images/avatar/02.jpg" class="avatar-sm" style="border-radius: 100%;"/>
												<span class="text-black fs-5 fw-bold px-2">권수경</span>
												2023-05-25
											</span>
											<a href="community-detail.html" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 후기 아이템 끝 -->
						<!-- 후기 아이템 시작 -->
						<div class="card bg-transparent my-2">
							<div class="row g-3 g-sm-4 align-items-sm-center">
								<!-- Image -->
								<div class="col-4">
									<img src="${path}/resources/assets/images/blog/02.jpg" class="card-img" alt="">
								</div>
								<div class="col-8">
									<!-- card body -->
									<div class="card-body p-0">
										<h5 class="card-title">
											<a href="community-detail.html" class="stretched-link title fs-4">후기 제목</a>
										</h5>
										<p class="flex-shrink-1 card-stars fs-6" style="font-size: 0.7rem;">
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star-half-alt text-warning"></i>
											<i class="far fa-star text-warning"></i>
											<a class="btn position-relative z-index-99 fw-normal">
												<i class="far fa-thumbs-up pe-1"></i>123
											</a>
										</p>
										<div class="pb-3">
											후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 
										</div>
										<!-- Author name and button -->
										<div class="d-flex justify-content-between align-items-center">
											<span class="small">
												<img src="${path}/resources/assets/images/avatar/03.jpg" class="avatar-sm" style="border-radius: 100%;"/>
												<span class="text-black fs-5 fw-bold px-2">김대훈</span>
												2023-05-25
											</span>
											<a href="community-detail.html" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 후기 아이템 끝 -->
						<!-- 후기 아이템 시작 -->
						<div class="card bg-transparent my-2">
							<div class="row g-3 g-sm-4 align-items-sm-center">
								<!-- Image -->
								<div class="col-4">
									<img src="${path}/resources/assets/images/blog/03.jpg" class="card-img" alt="">
								</div>
								<div class="col-8">
									<!-- card body -->
									<div class="card-body p-0">
										<h5 class="card-title">
											<a href="community-detail.html" class="stretched-link title fs-4">후기 제목</a>
										</h5>
										<p class="flex-shrink-1 card-stars fs-6" style="font-size: 0.7rem;">
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star text-warning"></i>
											<i class="fa fa-star-half-alt text-warning"></i>
											<i class="far fa-star text-warning"></i>
											<a class="btn position-relative z-index-99 fw-normal">
												<i class="far fa-thumbs-up pe-1"></i>123
											</a>
										</p>
										<div class="pb-3">
											후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 
										</div>
										<!-- Author name and button -->
										<div class="d-flex justify-content-between align-items-center">
											<span class="small">
												<img src="${path}/resources/assets/images/avatar/04.jpg" class="avatar-sm" style="border-radius: 100%;"/>
												<span class="text-black fs-5 fw-bold px-2">김상혁</span>
												2023-05-25
											</span>
											<a href="community-detail.html" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 후기 아이템 끝 -->
						<a href="community-post.html" class="btn btn-outline-primary mt-4 fs-4">후기 작성</a>
					</div>
				</div>
	
			</div> <!-- Row END -->
		</div>
	</section>
	<!-- =======================
	Tabs-content END -->
</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>