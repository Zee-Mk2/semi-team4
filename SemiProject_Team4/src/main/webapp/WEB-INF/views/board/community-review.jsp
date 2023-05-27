<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- **************** MAIN CONTENT START **************** -->
<main>

	<!-- =======================
	Inner intro START -->
	<section class="pt-4">
		<div class="container">
			<div class="row">
		  <div class="col-12">
				<div class="bg-dark p-4 text-center rounded-3">
					<h1 class="text-white title">후기</h1>
					<nav class="d-flex justify-content-center" aria-label="breadcrumb">
						<ol class="breadcrumb breadcrumb-dark m-0">
							<li class="breadcrumb-item fs-6"><a href="index-camping.html"><i class="bi bi-house me-1"></i> 홈</a></li>
							<li class="breadcrumb-item fs-6"><a href="commutiny.html">커뮤니티</a></li>
							<li class="breadcrumb-item fs-6 active">후기</li>
						</ol>
					</nav>
				</div>
		  </div>
		</div>
		</div>
	</section>
	<!-- =======================
	Inner intro END -->
	
	<!-- =======================
	Main content START -->
	<section class="position-relative pt-0">
		<div class="container">
			
			<ul class="nav fs-5 mt-n4">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="#">전체</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">공연</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">캠핑</a>
				</li>
			</ul>
			<div class="row align-items-center mx-auto mb-3 pb-2 border-bottom">
				<a href="community-post.html" class="btn btn-info col-1"><i class="fas fa-pen"></i> 글쓰기</a>
				
				<div class="col-9">
					<!-- Search START -->
					<!-- Booking from START -->
					<form class="rounded-5 border ms-3">
						<div class="row g-4 align-items-center">
							<div class="col-10">
								<div class="row g-4">
									<!-- Location -->
									<div class="col-3">
										<!-- Input field -->
										<div class="form-control-transparent form-fs-lg">
											<select class="form-select js-choice" data-search-enabled="true">
												<option value="">검색 옵션</option>
												<option>캠핑장 이름</option>
												<option>제목</option>
												<option>내용</option>
												<option>제목 + 내용</option>
												<option>작성자</option>
											</select>
										</div>
									</div>

									<!-- Guest -->
									<div class="col-9">
										<!-- Input field -->
										<div class="form-control-transparent form-fs-lg">
											<input class="form-control border-0 shadow-0" type="text" name="search" placeholder="검색어 입력">
										</div>
									</div>
								</div>
							</div>

							<!-- Button -->
							<div class="col-2 text-center">
								<div class="d-grid">
									<a href="#">
										<i class="fa-solid fa-search fs-5 text-black-50"></i>
									</a>
								</div>
							</div>
						</div>
					</form>
					<!-- Booking from END -->
					<!-- Search END -->	
				</div>
				
				<div class="col-2">
					<form class="form-control-bg-light">
						<select class="form-select js-choice">
							<option>최신순</option>
							<option>추천순</option>
							<option>조회순</option>
						</select>
					</form>
				</div>
			</div>

			<div class="row filter-container overflow-hidden" data-isotope='{"layoutMode": "masonry"}'>
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/1by1/07.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-info" style="height: 1.5rem">캠핑</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="#" class="btn-link text-reset stretched-link title">사장님이 친절해요!</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">내 이름을 이슈메일이라고 해두자. 몇 년 전 정확히 언제인지는 아무래도 좋다 지갑은 거의 바닥이 났고 또 뭍에는 딱히 흥미를 끄는 것이 없었으므로, 당분간 배를 타고 나가서 세계의 바다를 두루 돌아보면 좋겠다는 생각을 했다. 그것은 내가 우울한 기분을 떨쳐버리고 혈액순환을 조절하기 위해 늘 쓰는 방법이다. 입 언저리가 일그러질 때, 이슬비 내리는 11월처럼 내 영혼이 을씨년스러워질 때, 관을 파는 가게 앞에서 나도 모르게 걸음이 멈추거나 장례 행렬을 만나 그 행렬 끝에 붙어서 따라갈 때, 특히 심기증에 짓눌린 나머지 거리로 뛰쳐나가 사람들의 모자를 보는</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">권수경</a>
								</li>
								<li class="nav-item">2023-01-01</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">장수상회</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/16by9/small/03.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">Pride and prejudice</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
				<p class="card-text">It is a truth universally acknowledged, that a single man in possession of a good fortune must be in want of a wife. However little known the feelings or views of such a man may be on his first entering a neighbourhood, this truth is so well fixed in the minds of the surrounding families, that he is considered as the rightful property of some one or other of their daughters.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">김대훈</a>
								</li>
								<li class="nav-item">2023-02-02</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">현대카드 슈퍼콘서트 27, 브루노 마스: the Purple osee</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/12.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">아름다운 풍경과 함께</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">여름 장이란 애시당초에 글러서, 해는 아직 중천에 있건만 장판은 벌써 쓸쓸하고 더운 햇발이 벌여놓은 전 휘장 밑으로 등줄기를 훅훅 볶는다.마을 사람들은 거지반 돌아간 뒤요, 팔리지 못한 나뭇군패가 길거리에 궁싯거리고들 있으나 석윳병이나 받고 고깃마리나 사면 족할 이 축들을 바라고 언제까지든지 버티고 있을 법은 없다. 춥춥스럽게 날아드는 파리떼도 장난군 각다귀들도 귀치않다. 얽둑배기요 왼손잡이인 드팀전의 허생원은 기어코 동업의 조선달에게 낚아보았다.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">김상혁</a>
								</li>
								<li class="nav-item">2023-03-03</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/1by1/05.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">자연에 녹아든 캠핑장</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">13인의아해가도로로질주하오. (길은막다른골목이적당하오.)</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">오정민</a>
								</li>
								<li class="nav-item">2023-04-04</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/3by2/07.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">야간비행</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">비행기 아래로는 벌써 황금빛 석양 속으로 구릉의 그림자가 짙어져 밭고랑을 지듯 펼쳐졌고, 들판은 오래도록 쓰러지지 않을 빛으로 환하게 밝았다. 이 지방에서는 이울어가는 겨울에도 하얀 눈이 남아 있듯, 대지의 황금빛 저녁놀이 늦도록 불타올랐다.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">전승민</a>
								</li>
								<li class="nav-item">2023-05-05</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/4by3/06.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">인간실격</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">부끄러움 많은 생애를 보냈습니다. 저는 인간의 삶이라는 것을 도무지 이해할 수 없습니다.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">지석환</a>
								</li>
								<li class="nav-item">2023-06-06</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/3by4/05.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">1984</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">4월의 맑고 쌀쌀한 어느 날, 시계는 13시를 가리키고 있었다.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">천보영</a>
								</li>
								<li class="nav-item">2023-07-07</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/3by4/02.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-warning" style="height: 1.5rem">공연</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">노인과 바다</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">그는 멕시코 만류에서 홀로 돛단배를 타고 고기잡이를 하는 노인이었다. 팔십하고도 나흘이 지나도록 그는 고기를 한 마리도 잡지 못했다.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">이해성</a>
								</li>
								<li class="nav-item">2023-08-08</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
			  <!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="#" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">엉클캠핑장</div>
										<div>경기도 포천시</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="assets/images/blog/4by3/15.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-info" style="height: 1.5rem">캠핑</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title"><a href="post-single-6.html" class="btn-link text-reset stretched-link title">무기여 잘 있거라</a></h4>
							<div class="pb-2">
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star text-warning"></i>
								<i class="fa fa-star-half-alt text-warning"></i>
								<i class="far fa-star text-warning"></i>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</div>
							<p class="card-text">그해 여름도 다 지나갈 무렵 우리는 강과 들판을 사이에 두고 산들이 바라보이는 어느 마을의 민가에 머무르고 있었다.</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">전소피아</a>
								</li>
								<li class="nav-item">2023-09-09</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
			</div> <!-- Row end -->

			<!-- 페이징 -->
			<div class="row">
				<div class="col-12">
					<nav class="mt-4 d-flex justify-content-center" aria-label="navigation">
						<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
							<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a></li>
							<li class="page-item mb-0 active"><a class="page-link" href="#">1</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">2</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">..</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#">6</a></li>
							<li class="page-item mb-0"><a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	Main content END -->
	
</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>