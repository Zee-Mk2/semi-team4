<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/splide-master/dist/css/splide.min.css">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">

<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/style.css?ver=2">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/splide-master/dist/js/splide.min.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>

<!-- 카카오맵 -->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

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
								<li class="nav-item fs-5 title">자동차야영장</li>
							</ul>
							<h1 class="fs-2 title">동강전망휴양림오토캠핑장</h1>
							<ul class="nav nav-divider h6 mb-0">
								<li class="nav-item fs-4 title">운해와 야경이 일품인 휴양림속 야영장</li>
							</ul>
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
			<div class="row mt-md-5">
				<div class="col-12">
					<!-- Primary image -->
					<div class="splide splide-main mb-3" data-splide='{"type" : "fade","autoplay": true,"heightRatio":0.5,"pagination":false,"arrows":false,"cover":true,"lazyLoad":"sequential"}'>
						<div class="splide__track">
							<ul class="splide__list">
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/04.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/04.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/05.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/05.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/03.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/03.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/09.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/09.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/10.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/10.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/06.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/06.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/07.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/07.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
								<li class="splide__slide rounded"><img src="${path}/resources/assets/images/gallery/08.jpg" alt="">
									<!-- Glightbox image -->
									<a href="${path}/resources/assets/images/gallery/08.jpg" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
								</li>
							</ul>
						</div>
					</div>
					<!-- Secondary image -->
					<div class="splide splide-thumb" data-splide='{"rewind":true,"fixedWidth":200,"fixedHeight":120,"isNavigation":true,"gap":20,"focus":"center","pagination":false,"cover":true,"lazyLoad":"sequential","breakpoints":{"600":{"fixedWidth":150,"fixedHeight":80}}}'>
						<div class="splide__track">
							<ul class="splide__list">
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/04.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/05.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/03.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/09.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/10.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/06.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/07.jpg" alt=""></li>
								<li class="splide__slide"><img src="${path}/resources/assets/images/gallery/08.jpg" alt=""></li>
							</ul>
						</div>
						<!-- Arrows -->
						<div class="splide__arrows">
							<button class="splide__arrow  splide__arrow--prev p-splide__arrow--prev bg-primary"><span class="spi-angle-left text-white"><i class="fa-solid fa-fw fa-angle-left"></i></span></button>
							<button class="splide__arrow splide__arrow--next p-splide__arrow--next bg-primary"><span class="spi-angle-right text-white"><i class="fa-solid fa-fw fa-angle-right"></i></span></button>
						</div>
					</div>
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
							<button class="nav-link active mb-0" id="tour-pills-tab-1" data-bs-toggle="pill" data-bs-target="#tour-pills-tab1" type="button" role="tab" aria-controls="tour-pills-tab1" aria-selected="true">캠핑장 소개</button>
						</li>
						<!-- Tab item -->
						<li class="nav-item" role="presentation">
							<button class="nav-link mb-0" id="tour-pills-tab-2" data-bs-toggle="pill" data-bs-target="#tour-pills-tab2" type="button" role="tab" aria-controls="tour-pills-tab2" aria-selected="false">이용안내</button>
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
									<h3 class="mb-0 title fs-2">소개</h3>
								</div>
	
								<!-- Card body START -->
								<div class="card-body p-0 pt-3 text-black">
									<p class="mb-2">우리나라에서 가장 아름답고 보존이 잘 된 강으로 통하는 동강.</p>
									<p class="mb-2">정선 가수리를 들머리로 운치리와 제장마을,연포마을 차례로 거쳐 영월에서 서강을 만나기까지 장장 65km를 구절양장으로 흐른다.</p>
									<p class="mb-2">동강이 특별한 것은 물 흐름의 모양새에 있다.</p>
									<p class="mb-2">백두대간의 산세를 따라 구절양장으로 흐르다 못해 물이 고인 듯 깊은 소를 수없이 만들고 지나간다.</p>
									<p class="mb-2">경치좋은 동강중에서도 최고로 일컬어지는 곳이 고성산성과 연포마을 주변.</p>
									<p class="mb-2">백운산 자락을 앞에 두고 하늘을 가리는 뼝대와 모래 강변이 번갈아 나타나는 풍경이 가히 절경이다.</p>
									<p class="mb-2">동강 전망자연휴양림은 바로 이곳에 자리잡고 있다.</p>
									<p class="mb-2">고성산성 앞에서 산으로 난 길을 올라가야 하는데 마치 한계령처럼 구비길이 이어진다.</p>
									<p class="mb-2">힘들게 오르고 나면 발아래로 동강의 물길이 아스라이 지나가고 고봉준령들이 주변을 빙둘러 싸고 있는 모습이 말로만 듣던 명당이 이런 것이었구나 싶어진다.</p>
									<p class="mb-2">해발 600m에 위치한 동강전망자연휴양림오토캠핑장은 풍경 하나만큼은 최고다.</p>
									<p class="mb-2">눈앞에는 산이 너울너울 능선을 이루고, 발아래 강이 굽이굽이 산을 휘감아 흐른다.</p>
									<p class="mb-2">강과 산이 만들어내는 풍경도 명품이지만 이곳의 또 다른 자랑거리는 운해다.</p>
									<p class="mb-2">백운산과 그 뒤로 겹겹이 서 있는 능선 사이로 넘실대는 운해가 말 그대로 장관을 이룬 다.</p>
									<p class="mb-2">발아래 구름바다가 펼쳐지면 마치 구름 위에 텐트를 친 듯 황홀하다.</p>
									<p class="mb-2">가장 인기 있는 사이트는 전망대 옆으로 이어져 있는 데크 사이트.</p>
									<p class="mb-2">1년내내 예약이 밀린다 할 정도로 캠퍼들에게는 꿈의 장소다.</p>
									<p class="mb-4 text-black-50">최종 정보 수정일 : 2018-12-08</p>
								</div>
								<!-- Card body END -->
								
								<div class="card">
									<div class="card-header bg-transparent border-bottom p-0 pb-3">
										<h3 class="mb-0 title fs-2">시설정보</h3>
									</div>
									<div class="card card-body bg-light p-4 d-flex justify-content-center my-3">
										<div class="d-flex flex-wrap align-items-center text-center mx-auto">
											<div class="p-4">
												<i class="fas fa-plug fs-3"></i><br>전기
											</div>
											<div class="p-4">
												<i class="fas fa-wifi fs-3"></i><br>와이파이
											</div>
											<div class="p-4">
												<i class="fas fa-fire-alt fs-3"></i><br>장작판매
											</div>
											<div class="p-4">
												<i class="fas fa-hot-tub fs-3"></i><br>온수
											</div>
											<div class="p-4">
												<i class="fas fa-basketball-ball fs-3"></i><br>운동시설
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>		
						<!-- Content item END -->
	
						<!-- Content item START -->
						<div class="tab-pane fade" id="tour-pills-tab2" role="tabpanel" aria-labelledby="tour-pills-tab-2">
							<div class="card bg-transparent p-0">
								<!-- Card header -->
								<div class="card-header bg-transparent border-bottom p-0 pb-3">
									<h3 class="mb-0 title fs-2">안전 및 시설 배치도</h3>
								</div>
	
								<!-- Card body START -->
								<div class="card-body p-0 pt-3">
									<img src="https://www.gocamping.or.kr/upload/camp/6975/8401kgFa2KKczlc2Hx0UPtlY.jpg" alt="">
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
								<div class="hstack gap-2 mb-1">
									<h3 class="card-title mb-0 title">₩20,000 ~</h3>
								</div>
	
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
									<a href="${path}/camp-booking" class="btn btn-primary">예약하기</a>
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
										<td>강원 정선군 신동읍 동강로 916-212</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i class="fas fa-phone text-primary"></i> 전화번호</td>
										<td>063-620-5752</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i class="far fa-calendar text-primary"></i> 운영기간</td>
										<td>봄, 여름, 가을, 겨울</td>
									</tr>
									<tr>
										<td class="fw-bold text-black"><i class="fas fa-calendar-day text-primary"></i> 운영일</td>
										<td>평일+주말</td>
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
									center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
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
						<a href="${path}/board-review">
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
											<a href="${path}/board-detail" class="stretched-link title fs-4">후기 제목</a>
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
											<a href="blog-detail.html" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
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
											<a href="${path}/board-detail" class="stretched-link title fs-4">후기 제목</a>
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
											<a href="blog-detail.html" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
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
											<a href="${path}/board-detail" class="stretched-link title fs-4">후기 제목</a>
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
											<a href="blog-detail.html" class="btn btn-link p-0 mb-0">Read more <i class="bi bi-arrow-up-right"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 후기 아이템 끝 -->
						<a href="${path}/board-post" class="btn btn-outline-primary mt-4 fs-4">후기 작성</a>
					</div>
				</div>
	
			</div> <!-- Row END -->
		</div>
	</section>
	<!-- =======================
	Tabs-content END -->
</main>

<!-- 카카오맵 -->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<script src="${path}/resources/assets/vendor/splide-master/dist/js/splide.min.js"></script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>