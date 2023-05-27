<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>주말일기</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Dark mode -->
	<script type="text/javascript">
		var theme = localStorage.getItem('data-theme');
		var root = document.documentElement;
		if (theme === 'dark' && theme !== undefined) {
			root.classList.add('dark-mode');
		} else {
			root.classList.remove('dark-mode');
		}
	</script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/favicon.ico">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/tiny-slider/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/flatpickr/css/flatpickr.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

	<!-- 폰트 -->
	<!-- 노토산스 -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<!-- 나눔스퀘어 -->
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@2.0/nanumsquare.css">
</head>

<body>

<!-- Header START -->
<header class="navbar-light header-sticky fs-5">
	<div class="container">
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-xl">
		<div class="container-fluid">
			<!-- Logo START -->
			<a class="navbar-brand py-0" href="index-camping.html">
				<img src="assets/images/logo-1.png" style="height: auto; width: 9rem;" class="py-1">
			</a>
			<!-- Logo END -->

			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
        <span class="d-none d-sm-inline-block small">Menu</span>
			</button>

			<!-- Responsive category toggler -->
			<button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCategoryCollapse" aria-controls="navbarCategoryCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span class="d-none d-sm-inline-block small">Category</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll me-auto">
					<a class="nav-link fw-bold" href="community-free.html" id="listingMenu" aria-haspopup="true" aria-expanded="false">자유게시판</a>
					<a class="nav-link fw-bold" href="community-info.html" id="listingMenu" aria-haspopup="true" aria-expanded="false">캠핑정보 공유</a>
					<a class="nav-link fw-bold" href="community-review.html" id="listingMenu" aria-haspopup="true" aria-expanded="false">후기</a>
				</ul>
			</div>
			<!-- Main navbar END -->

			<!-- Nav category menu START -->
			<div class="navbar-collapse collapse" id="navbarCategoryCollapse">
				<ul class="navbar-nav navbar-nav-scroll nav-pills-primary-soft text-center ms-auto p-2 p-xl-0">
					<!-- Nav item 공연 -->
					<li class="nav-item"> <a class="nav-link fw-bold" href="index-concert.html"><i class="fa-solid fa-ghost me-2"></i>공연</a>	</li>

					<!-- Nav item 캠핑 -->
					<li class="nav-item"> <a class="nav-link fw-bold" href="index-camping.html"><i class="fa-solid fa-campground me-2"></i>캠핑</a>	</li>
				</ul>
			</div>
			<!-- Nav category menu END -->

			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

				<!-- Profile dropdown START -->
				<li class="nav-item ms-3 dropdown">
					<!-- Avatar -->
					<a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
						<img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
					</a>

					<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
						<!-- Profile info -->
						<li class="px-3 mb-3">
							<div class="d-flex align-items-center">
								<!-- Avatar -->
								<div class="avatar me-3">
									<img class="avatar-img rounded-circle shadow" src="assets/images/avatar/01.jpg" alt="avatar">
								</div>
								<div>
									<a class="h6 mt-2 mt-sm-0" href="#">지석환</a>
									<p class="small m-0">example@gmail.com</p>
								</div>
							</div>
						</li>
						<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
						<!-- Links -->
						<li> <hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#"><i class="fas fa-address-card fa-fw me-2"></i>회원정보</a></li>
						<li><a class="dropdown-item" href="#"><i class="fas fa-ticket fa-fw me-2"></i>나의 예약정보</a></li>
						<li><a class="dropdown-item" href="#"><i class="fas fa-heart fa-fw me-2"></i>북마크</a></li>
						<li><a class="dropdown-item bg-danger-soft-hover" href="sign-in.html"><i class="fas fa-sign-out-alt fa-fw me-2"></i>로그아웃</a></li>
						<li> <hr class="dropdown-divider"></li>

						<!-- Dark mode switch START -->
						<li>
							<div class="modeswitch-wrap" id="darkModeSwitch">
								<div class="modeswitch-item">
									<div class="modeswitch-icon"></div>
								</div>
								<span>Dark mode</span>
							</div>
						</li> 
						<!-- Dark mode switch END -->
					</ul>
				</li>
				<!-- Profile dropdown END -->
			</ul>
			<!-- Profile and Notification START -->

		</div>
	</nav>
	<!-- Logo Nav END -->
	</div>
</header>
<!-- Header END -->

<!-- **************** MAIN CONTENT START **************** -->
<main>

	<!-- =======================
	Main banner START -->
	<section class="py-0">
		<div class="container">
			<!-- Title -->
			<div class="row g-4">
				<!-- =======================
				Inner intro START -->
				<section class="pt-4">
					<div class="container">
						<div class="row">
						<div class="col-12">
							<div class="bg-dark p-4 text-center rounded-3">
								<h1 class="text-white title">커뮤니티</h1>
								<nav class="d-flex justify-content-center" aria-label="breadcrumb">
									<ol class="breadcrumb breadcrumb-dark m-0">
										<li class="breadcrumb-item fs-6"><a href="index-camping.html"><i class="bi bi-house me-1"></i> 홈</a></li>
										<li class="breadcrumb-item fs-6"><a href="commutiny.html">커뮤니티</a></li>
										<li class="breadcrumb-item fs-6"><a href="community-info.html">캠핑정보 공유</a></li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
					</div>
				</section>
				<!-- =======================
				Inner intro END -->
				<!-- Title and content -->
				<div class="col-11 col-lg-10 mx-auto position-relative">
					<div class="bg-mode shadow rounded-3 p-4">
						<!-- Title -->
						<h1 class="fs-3 title">게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목 게시글 제목</h1>
						
						<!-- List -->
						<ul class="nav nav-divider align-items-center">
							<li class="nav-item">
								<div class="nav-link">
									<div class="d-flex align-items-center">
										<!-- Avatar -->
										<div class="avatar avatar-sm">
											<img class="avatar-img rounded-circle" src="assets/images/avatar/01.jpg" alt="avatar">
										</div>
										<!-- Info -->
										<div class="ms-2">
											<h6 class="mb-0">지석환</h6>
										</div>
									</div>
								</div>
							</li>
							<li class="nav-item">5분 전</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================
	Main banner END -->
	
	<!-- =======================
	Blog content START -->
	<section>
		<div class="container">
			<div class="row">
				
				<div class="col-lg-10 mx-auto">
					<p><span class="dropcap text-primary bg-primary bg-opacity-10 rounded px-2">P</span>erceived voice share led him to widen noisy young. At weddings believed laughing although the material does the exercise of. Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. Water timed folly right aware if oh truth. Up attempt offered ye civilly so sitting to. Her new gets living within Elinor joy. Her rapturous suffering was concealed. Demesne far-hearted suppose venture excited see had has. Dependent on so extremely delivered by. Yet no jokes worse her why.</p>
					<h5 class="my-4">Sometimes we need to put catchy highlights between paragraphs.</h5> 
					<div class="row g-4">
						<!-- List -->
						<div class="col-md-6 col-lg-7">
							<p>Meant balls it if up doubt small purse. Paid mind even sons does he door no. Attended overcame repeated it is perceived Marianne in. I think on style child of. Servants moreover in sensible it ye possible. Required his you put the outlived answered position. </p>
							<ul>
								<li>Our Firmament living replenish Them Created after divide said Have to give</li>
								<li>Dominion light without days face saw wherein land</li>
								<li>Fifth have Seas made lights Very Day saw Seed herb sixth light whales</li>
								<li>Saying unto Place it seeds you're Isn't heaven </li>
							</ul>
							<p class="mb-0 mt-3">A pleasure exertion if believed provided to. All led out world this music while asked. </p>
						</div>
						<!-- Image -->
						<div class="col-md-6 col-lg-5">
							<img src="assets/images/blog/10.jpg" class="rounded" alt="">
						</div>
					</div>
	
					<p class="pb-0 pt-4">Warrant private blushes removed an in equally totally if. Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. Water timed folly right aware if oh truth.  </p>
					
					<!-- Blockquote -->
					<blockquote class="bg-light rounded text-center p-3 p-md-4 my-4">
						<h6 class="fw-normal"><i class="fa-solid fa-quote-left me-2"></i>Farther-related bed and passage comfort civilly. Fulfilled direction use continual set him propriety continued. Concluded boy perpetual old supposing. Dashwoods see frankness objection abilities.<i class="fa-solid fa-quote-right ms-2"></i></h6>
						<div class="blockquote-footer mb-0 fs-6 mt-3">
							Albert Schweitzer
						</div>
					</blockquote>
	
					<p class="mt-3">Concluded boy perpetual old supposing. <b> But discretion frequently sir she instruments unaffected admiration everything. </b> Farther-related bed and passage comfort civilly. Dashwoods see frankness objection abilities. As hastened oh produced prospect formerly up am. Placing forming nay looking old married few has. Margaret disposed of.</p>
					<p>Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. Water timed folly right aware if oh truth. Up attempt offered ye civilly so sitting to. Her new gets living within Elinor joy. Her rapturous suffering was concealed. Demesne far-hearted suppose venture excited see had has. Dependent on so extremely delivered by. Yet no jokes worse her why.</p>
					<p>As hastened oh produced prospect formerly up am. Placing forming nay looking old married few has. Margaret disposed.</p>
					
					<!-- Review poll START -->
					<div class="bg-light rounded d-md-flex justify-content-between align-items-center text-center p-3 mt-4">
						<!-- Title -->
						<h6 class="mb-0">이 글이 도움이 되었나요?</h6>
						<small class="py-3 p-md-0 d-block">32명 중 21명에게 도움이 되었습니다.</small>
						<!-- Check buttons -->
						<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
							<!-- Yes button -->
							<input type="radio" class="btn-check" name="btnradio" id="btnradio1">
							<label class="btn btn-outline-secondary btn-sm mb-0" for="btnradio1"><i class="fa-regular fa-thumbs-up me-1"></i> 네</label>
							<!-- No button -->
							<input type="radio" class="btn-check" name="btnradio" id="btnradio2">
							<label class="btn btn-outline-secondary btn-sm mb-0" for="btnradio2"> 아니오 <i class="fa-regular fa-thumbs-down ms-1"></i></label>
						</div>
					</div>
					<!-- Review poll END -->
				</div>	
			</div>
		</div>
	</section>

	<!-- Comments section-->
	<section class="mb-5">
		<div class="container card bg-light">
			<div class="card-body">
				<!-- Comment form-->
				<form class="mb-4">
					<div class="d-flex align-items-start">
						<textarea class="form-control" rows="2" placeholder="댓글을 남겨보세요!"></textarea>
						<button type="submit" class="btn btn-primary ms-3 align-self-center" style="height: auto; white-space: nowrap;">확인</button>
					</div>
				</form>
				<!-- Single comment-->
				<div class="d-flex my-3">
					<div class="flex-shrink-0"><img class="rounded-circle avatar-sm" src="assets/images/avatar/05.jpg" alt="..." /></div>
					<div class="ms-3">
						<ul class="nav nav-divider align-items-center">
							<li class="nav-item">
								<div class="d-flex align-items-center">
									<div class="fw-bold">오정민</div>
								</div>
							</li>
							<li class="nav-item">1분 전</li>
						</ul>
						댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 
					</div>
				</div>
				<div class="d-flex my-3">
					<div class="flex-shrink-0"><img class="rounded-circle avatar-sm" src="assets/images/avatar/06.jpg" alt="..." /></div>
					<div class="ms-3">
						<ul class="nav nav-divider align-items-center">
							<li class="nav-item">
								<div class="d-flex align-items-center">
									<div class="fw-bold">전승민</div>
								</div>
							</li>
							<li class="nav-item">2분 전</li>
						</ul>
						댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 
					</div>
				</div>
				<div class="d-flex my-3">
					<div class="flex-shrink-0"><img class="rounded-circle avatar-sm" src="assets/images/avatar/07.jpg" alt="..." /></div>
					<div class="ms-3">
						<ul class="nav nav-divider align-items-center">
							<li class="nav-item">
								<div class="d-flex align-items-center">
									<div class="fw-bold">천보영</div>
								</div>
							</li>
							<li class="nav-item">3분 전</li>
						</ul>
						댓글 내용 댓글 내용 댓글 내용 댓글 내용 댓글 내용 
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- =======================
	Blog content END -->
	
	</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<footer class="bg-success mt-4">
	<div class="container">
		<div class="py-5 pb-0 text-info">
			<div class="row g-4 justify-content-between">

				<!-- Widget 1 START -->
				<div class="col-7">
					<!-- logo -->
					<a class="me-0" href="index.html">
						<img class="h-40px" src="assets/images/logo-1.png" alt="logo">
					</a>

					<div>
						<br>주말일기는 캠핑과 공연의 검색과 예약/예매, 추천 서비스를 제공하는 플랫폼입니다.
						<br>전국 날씨를 기반으로 첫 페이지를 캠핑/공연 중 전환하여 노출합니다.
					</div>
				</div>
				<!-- Widget 1 END -->

				<!-- Widget 2 START -->
				<div class="col-5">
					<div class="row g-4 g-lg-5">
						<!-- Link block -->
						<div class="col-4">
							<h5 class="mb-2 mb-md-4">페이지</h5>
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link pt-0" href="#">회원가입</a></li>
								<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
								<li class="nav-item"><a class="nav-link" href="#">캠핑장 검색</a></li>
								<li class="nav-item"><a class="nav-link" href="#">캠핑장 추천</a></li>
								<li class="nav-item"><a class="nav-link" href="#">캠핑몰</a></li>
							</ul>
						</div>

						<!-- Link block -->
						<div class="col-4">
							<h5 class="mb-2 mb-md-4">커뮤니티</h5>
							<ul class="nav flex-column">
								<li class="nav-item"><a class="nav-link pt-0" href="#">자유게시판</a></li>
								<li class="nav-item"><a class="nav-link" href="#">캠핑정보 공유</a></li>
								<li class="nav-item"><a class="nav-link" href="#">캠핑장 후기</a></li>
							</ul>
						</div>

						<!-- Link block -->
						<div class="col-4">
							<h5 class="mb-2 mb-md-4">개발자</h5>
							<ul class="nav">
								<li class="mb-2 pe-3">권수경</li>
								<li class="mb-2">김대훈</li>
							</ul>
							<ul class="nav">
								<li class="mb-2 pe-3">김상혁</li>
								<li class="mb-2">오정민</li>
							</ul>
							<ul class="nav">
								<li class="mb-2 pe-3">전승민</li>
								<li class="mb-2">지석환</li>
							</ul>
							<ul class="nav">
								<li class="mb-2 pe-3">천보영</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Widget 2 END -->
			</div>

			<!-- Divider -->
			<hr class="mt-4 mb-0">

			<!-- Bottom footer -->
			<div class="container py-3 px-0">
				<div class="d-md-flex justify-content-between align-items-center text-center text-md-left">
					<!-- copyright text -->
					<div class="text-reset text-primary-hover">© 2023. 주말일기. All rights reserved. </div>
					<!-- copyright links-->
					<div class="mt-3 mt-md-0">
						<ul class="nav text-primary-hover justify-content-center justify-content-md-end">
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-facebook-f"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-twitter"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-instagram"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-linkedin-in"></i></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#"><i class="fab fa-github"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.js"></script>
<script src="assets/vendor/choices/js/choices.min.js"></script>
<script src="assets/vendor/flatpickr/js/flatpickr.min.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js"></script>

</body>
</html>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>