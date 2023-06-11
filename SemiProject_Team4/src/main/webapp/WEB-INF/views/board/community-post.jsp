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
							<div class="bg-success p-4 text-center rounded-3">
								<h1 class="text-white title">커뮤니티</h1>
								<nav class="d-flex justify-content-center" aria-label="breadcrumb">
									<ol class="breadcrumb breadcrumb-dark m-0">
										<li class="breadcrumb-item fs-6"><a href="${path}/home"><i class="bi bi-house me-1 text-white"></i> <span class="text-white">홈</span> </a></li>
										<li class="breadcrumb-item fs-6"><a href="${path}/community" class="text-white">커뮤니티</a></li>
										<c:if test="${param.boardCat == 'free'}">
											<li class="breadcrumb-item fs-6"><a href="${path}/${param.boardCat}" class="text-white">자유게시판</a></li>
										</c:if>
										<c:if test="${param.boardCat == 'info'}">
											<li class="breadcrumb-item fs-6"><a href="${path}/${param.boardCat}" class="text-white">정보공유</a></li>
										</c:if>
										<c:if test="${param.boardCat == 'review'}">
											<li class="breadcrumb-item fs-6"><a href="${path}/${param.boardCat}" class="text-white">후기</a></li>
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

				<!-- 글 작성 폼 시작 -->
				<section class="mb-5">
				<div class="container card bg-light">
					<div class="card-body">
					<c:if test="${param.boardCat == 'review'}">
						<div class="mb-4 title h2">후기 - ${param.conNm}</div>
					</c:if>
					<c:if test="${param.isUpdate != 'T' && param.boardCat != 'review'}">
						<div class="mb-4 title h2">게시글 작성</div>
					</c:if>
					<c:if test="${param.isUpdate == 'T'}">
						<div class="mb-4 title h2">게시글 수정</div>
					</c:if>
					<form action="${path}/board-post" method="post" enctype="multipart/form-data">
						<c:if test="${param.boardCat == 'review'}">
							<input type="hidden" name="contentId" value="${param.contentId}">
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn btn-outline-primary ${param.boardTag == 'conc' ? 'active' : 'disabled'}">
							        <input type="radio" name="boardTag" value="conc" style="display: none;" ${param.boardTag == 'conc' ? 'checked' : ''} required> 공연
							    </label>
							    <label class="btn btn-outline-primary ${param.boardTag == 'camp' ? 'active' : 'disabled'}">
							        <input type="radio" name="boardTag" value="camp" style="display: none;" ${param.boardTag == 'camp' ? 'checked' : ''} required> 캠핑
							    </label>
							</div><br>
							<label class="form-label mt-1">별점<span class="text-danger">*</span></label>
					        <div class="rating">
					            <span class="star text-warning" data-value="1"><i class="far fa-star"></i></span>
					            <span class="star text-warning" data-value="2"><i class="far fa-star"></i></span>
					            <span class="star text-warning" data-value="3"><i class="far fa-star"></i></span>
					            <span class="star text-warning" data-value="4"><i class="far fa-star"></i></span>
					            <span class="star text-warning" data-value="5"><i class="far fa-star"></i></span>
					        </div>
					        <input type="hidden" id="rating-input" name="rating" value="" required>
						    <script>
						        $(document).ready(function() {
						            $('.star').click(function() {
						                var value = $(this).data('value');
						                $('.star i').removeClass('fas').addClass('far');
						                $('.star:lt(' + value + ') i').removeClass('far').addClass('fas');
						                $('#rating-input').val(value);
						            });
						            
						            $('.star:lt(5) i').removeClass('far').addClass('fas');
						            $('#rating-input').val(5);
						        });
						    </script>
						</c:if>
						<c:if test="${param.boardCat == 'info'}">
							<div class="btn-group" data-toggle="buttons">
							    <label class="btn btn-outline-primary active">
							        <input type="radio" name="boardTag" value="conc" style="display: none;" checked required> 공연
							    </label>
							    <label class="btn btn-outline-primary">
							        <input type="radio" name="boardTag" value="camp" style="display: none;" required> 캠핑
							    </label>
							</div>
						</c:if>
					
						<input name="boardCat" value="${board.boardCat}" type="hidden">
						<input name="bno" value="${board.bno}" type="hidden">
						<div class="nav nav-pills nav-pills-primary-soft mb-3" id="tour-pills-tab" role="tablist">
						</div>
						<div class="mb-3">
							<label for="boardTitle" class="form-label">제목<span class="text-danger">*</span></label>
							<input type="text" class="form-control" id="boardTitle" name="boardTitle" placeholder="제목을 입력해주세요" value="${board.boardTitle}" required>
						</div>
						<div class="mb-3">
							<label for="boardContent" class="form-label">내용<span class="text-danger">*</span></label>
							<textarea class="form-control" id="boardContent" name="boardContent" rows="5" placeholder="내용을 입력해주세요" required>${board.boardContent}</textarea>
						</div>
						<div class="mb-3">
							<label for="upfile" class="form-label">파일 업로드</label>
							<input type="file" class="form-control" id="upfile" name="upfile">
						</div>
						<div class="row">
							<div class="col-6">
								<a class="btn btn-danger" href="${path}/board-${board.boardCat}">취소</a>
							</div>
							<div class="col-6 text-end">
								<button type="submit" class="btn btn-info" href="${path}/board-${board.boardCat}">확인</button>
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

<script type="text/javascript">
$(document).ready(function () {
    $('input[name="boardTag"]').on('click', function () {
        $('input[name="boardTag"]').parent().removeClass('active');
        $(this).parent().addClass('active');
    });
});
</script>