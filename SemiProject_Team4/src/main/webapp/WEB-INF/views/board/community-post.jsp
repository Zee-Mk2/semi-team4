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

				<!-- 글 작성 폼 시작 -->
				<section class="mb-5">
				<div class="container card bg-light">
					<div class="card-body">
					<div class="mb-4 title h2">게시글 작성</div>
					<form>
						<div class="mb-3">
						<label for="postTitle" class="form-label">제목<span class="text-danger">*</span></label>
						<input type="text" class="form-control" id="postTitle" placeholder="제목을 입력해주세요">
						</div>
						<div class="mb-3">
						<label for="postContent" class="form-label">내용<span class="text-danger">*</span></label>
						<textarea class="form-control" id="postContent" rows="5" placeholder="내용을 입력해주세요"></textarea>
						</div>
						<div class="mb-3">
						<label for="fileInput" class="form-label">파일 선택</label>
						<input type="file" class="form-control" id="fileInput">
						</div>
						<div class="row">
							<div class="col-6">
								<div class="btn btn-danger">취소</div>
							</div>
							<div class="col-6 text-end">
								<button type="submit" class="btn btn-info">확인</button>
							</div>
						</div>
					</form>
					</div>
				</div>
				</section>
				<!-- 글 작성 폼 끝 -->

			</div>
		</div>
	</section>
	<!-- =======================
	Main banner END -->
</main>
<!-- **************** MAIN CONTENT END **************** -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>