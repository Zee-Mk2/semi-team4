<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>

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
											<img class="avatar-img rounded-circle" src="${path}/resources/assets/images/avatar/01.jpg" alt="avatar">
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
							<img src="${path}/resources/assets/images/blog/10.jpg" class="rounded" alt="">
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
					<div class="flex-shrink-0"><img class="rounded-circle avatar-sm" src="${path}/resources/assets/images/avatar/05.jpg" alt="..." /></div>
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
					<div class="flex-shrink-0"><img class="rounded-circle avatar-sm" src="${path}/resources/assets/images/avatar/06.jpg" alt="..." /></div>
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
					<div class="flex-shrink-0"><img class="rounded-circle avatar-sm" src="${path}/resources/assets/images/avatar/07.jpg" alt="..." /></div>
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


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>