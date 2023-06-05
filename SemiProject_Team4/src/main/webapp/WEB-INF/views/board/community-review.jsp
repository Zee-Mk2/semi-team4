<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/style-blog.css">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/tiny-slider/tiny-slider.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/glightbox/css/glightbox.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="${path}/resources/assets/vendor/flatpickr/css/flatpickr.min.css">

<!-- Vendors -->
<script src="${path}/resources/assets/vendor/isotope/isotope.pkgd.min.js"></script>
<script src="${path}/resources/assets/vendor/imagesLoaded/imagesloaded.js"></script>
<script src="${path}/resources/assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${path}/resources/assets/vendor/glightbox/js/glightbox.js"></script>
<script src="${path}/resources/assets/vendor/choices/js/choices.min.js"></script>
<script src="${path}/resources/assets/vendor/flatpickr/js/flatpickr.min.js"></script>

<!-- Blogzine -->
<script src="${path}/resources/assets/js/functions-blog.js"></script>


<!-- **************** MAIN CONTENT START **************** -->
<main>

	<!-- =======================
	Inner intro START -->
	<section class="pt-4">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bg-success p-4 text-center rounded-3">
						<h1 class="text-white title">후기</h1>
						<nav class="d-flex justify-content-center" aria-label="breadcrumb">
							<ol class="breadcrumb breadcrumb-dark m-0">
								<li class="breadcrumb-item fs-6"><a href="${path}/home"><i class="bi bi-house me-1 text-white"></i> <span class="text-white">홈</span> </a></li>
								<li class="breadcrumb-item fs-6"><a href="${path}/community" class="text-white">커뮤니티</a></li>
								<li class="breadcrumb-item fs-6 active text-white">후기</li>
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

			<ul class="nav nav-tabs nav-justified mb-3 fs-5 title">
				<li class="nav-item"> <a class="nav-link active" data-bs-toggle="tab" href="#tab-2-1"> 전체 </a> </li>
				<li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-2-2"> 캠핑 </a> </li>
				<li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-2-3"> 공연 </a> </li>
			</ul>
			<div class="row align-items-center mx-auto my-3">
				<div class="col-10">
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
											<select class="form-select js-choice"
												data-search-enabled="true">
												<option value="">검색 옵션</option>
												<option>캠핑장/공연 이름</option>
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
											<input class="form-control border-0 shadow-0" type="text"
												name="search" placeholder="검색어 입력">
										</div>
									</div>
								</div>
							</div>

							<!-- Button -->
							<div class="col-2 text-center">
								<div class="d-grid">
									<a href="#"> <i
										class="fa-solid fa-search fs-5 text-black-50"></i>
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
			  <c:forEach var="item" items="${list}"> 	
				<!-- Card item START -->
				<div class="col-sm-6 col-lg-4 grid-item">
					<div class="card mb-4">
						<!-- Card img -->
						<div class="position-relative">
							<div class="overlay overflow-hidden p-4 card">
								<a href="${path}/board-detail" class="stretched-link">
									<div class="overlay-content text-white">
										<div class="h4 text-white title">${item.campNm}</div>
										<div>${item.doNm} ${item.sigunguNm}</div>
									</div>
								</a>
							</div>
							<img class="card-img" src="${path}/resources/assets/images/blog/1by1/07.jpg" alt="Card image">
							<div class="card-img-overlay-bottom">
								<div class="d-flex justify-content-between">
									<span class="badge text-bg-info" style="height: 1.5rem">캠핑</span>
								</div>
							</div>
						</div>
						<div class="card-body px-0 pt-3">
							<h4 class="card-title">
								<a href="${path}/board-detail" class="btn-link text-reset stretched-link title">${item.boardTitle}</a>
								<a class="btn position-relative z-index-99 fw-normal">
									<i class="far fa-thumbs-up pe-1"></i>123
								</a>
							</h4>
							<p class="card-text">${item.boardContent}</p>
							<!-- Card info -->
							<ul class="nav nav-divider align-items-center text-uppercase small">
								<li class="nav-item">
									<a href="#" class="nav-link text-reset btn-link">${item.name}</a>
								</li>
								<li class="nav-item"><fmt:formatDate value="${item.boardCreateDate}" pattern="yyyy.MM.dd"/></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Card item END -->
			  </c:forEach>
			</div> <!-- Row end -->

			<!-- 페이징 -->
			<div class="row">
				<div class="col-12">
					<nav class="mt-4 d-flex justify-content-center"
						aria-label="navigation">
						<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(1)" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
							</li>
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(${pageInfo.prevPage})" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a>
							</li>
							<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1">
								<c:if test="${status.current == pageInfo.currentPage}">
									<li class="page-item mb-0 active">
										<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
									</li>
								</c:if>
								<c:if test="${status.current != pageInfo.currentPage}">
									<li class="page-item mb-0">
										<a class="page-link" href="javascript:movePage(${status.current})">${status.current}</a>
									</li>
								</c:if>
							</c:forEach>
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(${pageInfo.nextPage})"><i class="fa-solid fa-angle-right"></i></a>
							</li>
							<li class="page-item mb-0" style="margin-top: 0.4rem !important;">
								<a class="page-link" href="javascript:movePage(${pageInfo.maxPage})" tabindex="-1"><i class="fas fa-angle-double-right"></i></a>
							</li>
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