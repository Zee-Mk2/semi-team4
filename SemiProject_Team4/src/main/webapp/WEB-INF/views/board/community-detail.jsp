<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/camping-header.jsp"/>

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
							<div class="bg-success p-4 text-center rounded-3">
								<h1 class="text-white title">커뮤니티</h1>
								<nav class="d-flex justify-content-center" aria-label="breadcrumb">
									<ol class="breadcrumb breadcrumb-dark m-0">
										<li class="breadcrumb-item fs-6"><a href="${path}/home"><i class="bi bi-house me-1 text-white"></i> <span class="text-white">홈</span> </a></li>
										<li class="breadcrumb-item fs-6"><a href="${path}/commutiny" class="text-white">커뮤니티</a></li>
										<c:if test="${item.boardCat == 'info'}">
											<li class="breadcrumb-item fs-6"><a href="${path}/board-info" class="text-white">정보공유</a></li>
										</c:if>
										<c:if test="${item.boardCat == 'free'}">
											<li class="breadcrumb-item fs-6"><a href="${path}/board-free" class="text-white">자유게시판</a></li>
										</c:if>
										<c:if test="${item.boardCat == 'review'}">
											<li class="breadcrumb-item fs-6"><a href="${path}/board-review" class="text-white">후기</a></li>
										</c:if>
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
						<h1 class="fs-3 title">${item.boardTitle}</h1>
						
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
											<h6 class="mb-0">${item.name}</h6>
										</div>
									</div>
								</div>
							</li>
							<li class="nav-item">
								작성일 : <fmt:formatDate value="${item.boardCreateDate}" pattern="yyyy.MM.dd"/>
							</li>
							<li class="nav-item">
								조회수 ${item.boardViews}
							</li>
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
					<!-- Image -->
					<c:if test="${not empty item.boardReFileNm}">
						<img src="${path}/resources/upload/board/${item.boardReFileNm}" class="rounded w-100">
					</c:if>
					
					<div class="mt-4">${item.boardContent}</div>
					
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
					<c:if test="${loginMember.name == item.name}">
						<div class="text-end mt-3">
							<a class="btn btn-warning m-2" href="${path}/board-post?boardTag=${item.boardTag}&boardTitle=${item.boardTitle}&boardOriFileNm=${item.boardOriFileNm}&boardContent=${item.boardContent}&isUpdate=T&bno=${item.bno}&boardCat=${item.boardCat}">수정</a>
							<a class="btn btn-danger m-2" href="${path}/board-delete?bno=${item.bno}&boardCat=${item.boardCat}">삭제</a>
						</div>
					</c:if>
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