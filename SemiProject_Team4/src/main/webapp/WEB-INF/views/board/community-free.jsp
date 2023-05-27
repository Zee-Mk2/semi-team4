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
					<h1 class="text-white title">ìì ê²ìí</h1>
					<nav class="d-flex justify-content-center" aria-label="breadcrumb">
						<ol class="breadcrumb breadcrumb-dark m-0">
							<li class="breadcrumb-item fs-6"><a href="index-camping.html"><i class="bi bi-house me-1"></i> í</a></li>
							<li class="breadcrumb-item fs-6"><a href="commutiny.html">ì»¤ë®¤ëí°</a></li>
							<li class="breadcrumb-item fs-6 active">ìì ê²ìí</li>
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
			<div class="row align-items-center mx-auto mb-4">
				<a href="community-post.html" class="btn btn-info col-1"><i class="fas fa-pen"></i> ê¸ì°ê¸°</a>
				
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
												<option value="">ê²ì ìµì</option>
												<option>ì ëª©</option>
												<option>ë´ì©</option>
												<option>ì ëª© + ë´ì©</option>
												<option>ìì±ì</option>
											</select>
										</div>
									</div>

									<!-- Guest -->
									<div class="col-9">
										<!-- Input field -->
										<div class="form-control-transparent form-fs-lg">
											<input class="form-control border-0 shadow-0" type="text" name="search" placeholder="ê²ìì´ ìë ¥">
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
							<option>ìµì ì</option>
							<option>ì¡°íì</option>
						</select>
					</form>
				</div>
			</div>

			<hr>

			<ul class="nav flex-column text-info mt-n2">
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<div class="col-8 title">
						ì ëª©
					</div>
					<div class="text-black col-2 title" style="font-size: 0.9rem;">ìì±ì</div>
					<div class="text-black col-1 title" style="font-size: 0.9rem;">ìì±ìê°</div>
					<div class="text-black col-1 title" style="font-size: 0.9rem;">ì¡°íì</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>
				<li class="nav-item row border-bottom h-40px align-items-center mx-1">
					<a class="nav-link col-8" href="community-detail.html">
						ì ê²¬ ìº í¼ ë¶ë¤ ì£¼ëª©! ìëì¤í¬ë¦° ì¶ì²
						<span class="ps-1 text-black-50" style="font-size: 0.9rem;">[1]</span>
					</a>
					<div class="text-black col-2" style="font-size: 0.9rem;">ì§ìí</div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">1ë¶ ì </div>
					<div class="text-black-50 col-1" style="font-size: 0.9rem;">123</div>
				</li>

			<!-- íì´ì§ -->
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

