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
		Main Banner START -->
    <section class="pt-0">
        <!-- The slideshow/carousel -->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="p-4 p-sm-5"
              style="background-image: url(assets/images/campsite/01.png); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 600px">
              <div class="container">
                <div class="justify-content-between">
                  <div class="pt-9 text-start ps-5">
                    <div class="h1 text-white title">캠핑장 검색</div>
                    <div class="h4 text-white mb-0 title">
                      이름,지역,일정으로 캠핑장을 검색해보세요
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      <div class="container position-relative">


        <!-- Search START -->
        <div class="row mt-n4 mt-sm-n9">
          <div class="col-11 mx-auto">
            <!-- Booking from START -->
            <div class="bg-mode shadow p-5 rounded-3">
              <!-- Main search START -->
              <form class="form-control-bg-transparent bg-mode rounded-3">
                <div class="row g-4 align-items-center">
                  <div class="col-xl-10">
                    <div class="row g-4">
                      <!-- Location -->
                      <div class="col-md-6 col-lg-4">
                        <!-- Input field -->
                        <div class="form-border-bottom form-control-transparent form-fs-lg">
                          <select class="form-select js-choice" data-search-enabled="true">
                            <option value="">지역 선택</option>
                            <option>서울/인천/경기</option>
                            <option>부산/울산/경남</option>
                            <option>대구/경북</option>
                            <option>대전/충청</option>
                            <option>광주/전남</option>
                            <option>전북</option>
                            <option>강원</option>
                            <option>제주</option>
                          </select>
                        </div>
                      </div>

                      <!-- Check in -->
                      <div class="col-md- col-lg-4">
                        <!-- Input field -->
                        <div class="form-border-bottom form-control-transparent form-fs-lg">
                          <input type="text" class="form-control flatpickr py-2" data-mode="range" data-date-format="m-d" placeholder="일정 선택">
                        </div>
                      </div>

                      <!-- Guest -->
                      <div class="col-md-6 col-lg-4">
                        <!-- Input field -->
                        <div class="form-border-bottom form-control-transparent form-fs-lg">
                          <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="캠핑장 이름으로 검색" />
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Button -->
                  <div class="col-xl-2 pt-2">
                    <div class="d-grid">
                      <a href="#" class="btn btn-lg btn-dark"><i class="fa-solid fa-search fs-5"></i></a>
                    </div>
                  </div>
                </div>
              </form>
              <!-- Main search END -->

              <!-- Collapse button -->
              <div class="d-grid mt-4">
                <input type="checkbox" class="btn-check" id="btn-check-soft" />
                <label class="btn btn-primary-soft btn-primary-check mb-0" for="btn-check-soft" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-controls="collapseExample">
                  <i class="bi fa-fe bi-sliders me-2"></i>상세 검색
                </label>
              </div>

              <!-- Advance filter START -->
              <div class="collapse" id="collapseExample">
                <form class="row g-4 mt-3">
                  <!-- Input item -->


                  <!-- nouislider item -->
                  <div class="col-md-6 col-lg-4">
                    <label class="form-label">가격대</label>
                    <div class="position-relative">
                      <div class="noui-wrapper">
                        <div class="d-flex justify-content-between">
                          <input type="text" class="text-body input-with-range-min" />
                          <input type="text" class="text-body input-with-range-max" />
                        </div>
                        <div class="noui-slider-range mt-2" data-range-min="10000" data-range-max="300000" data-range-selected-min="10000" data-range-selected-max="1000000"></div>
                      </div>
                    </div>
                  </div>


                  <!-- Star rating -->
                  <div class="col-md-6 col-lg-5">
                    <label class="form-label">별점순</label>
                    <ul class="list-inline mb-0 g-3">
                      <!-- 1 -->
                      <li class="list-inline-item">
                        <input type="checkbox" class="btn-check" id="btn-check-9" />
                        <label class="btn btn-light btn-primary-soft-check" for="btn-check-9">1<i
                            class="bi bi-star-fill"></i></label>
                      </li>
                      <!-- 2 -->
                      <li class="list-inline-item">
                        <input type="checkbox" class="btn-check" id="btn-check-10" />
                        <label class="btn btn-light btn-primary-soft-check" for="btn-check-10">2<i
                            class="bi bi-star-fill"></i></label>
                      </li>
                      <!-- 3 -->
                      <li class="list-inline-item">
                        <input type="checkbox" class="btn-check" id="btn-check-11" />
                        <label class="btn btn-light btn-primary-soft-check" for="btn-check-11">3<i
                            class="bi bi-star-fill"></i></label>
                      </li>
                      <!-- 4 -->
                      <li class="list-inline-item">
                        <input type="checkbox" class="btn-check" id="btn-check-12" />
                        <label class="btn btn-light btn-primary-soft-check" for="btn-check-12">4<i
                            class="bi bi-star-fill"></i></label>
                      </li>
                      <!-- 4 -->
                      <li class="list-inline-item">
                        <input type="checkbox" class="btn-check" id="btn-check-13" />
                        <label class="btn btn-light btn-primary-soft-check" for="btn-check-13">5<i
                            class="bi bi-star-fill"></i></label>
                      </li>
                    </ul>
                  </div>

                  <!-- Select item -->
                  <div class="col-md-6 col-lg-4">
                    <div class="form-control-bg-light form-size-lg">
                      <label class="form-label">테마</label>
                      <select class="form-select js-choice">
                        <option value="">선택 옵션</option>
                        <option>해변</option>
                        <option>산</option>
                        <option>섬</option>
                        <option>숲</option>
                        <option>계곡</option>
                        <option>강</option>
                        <option>호수</option>
                        <option>도심</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-4">
                    <div class="form-control-bg-light form-size-lg">
                      <label class="form-label">주요 시설</label>
                      <select class="form-select js-choice">
                        <option value="">선택 옵션</option>
                        <option>자동차 야영장</option>
                        <option>일반 야영장</option>
                        <option>카라반</option>
                        <option>글램핑</option>
                        <option>계곡</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-4">
                    <div class="form-control-bg-light form-size-lg">
                      <label class="form-label">운영 형태</label>
                      <select class="form-select js-choice">
                        <option value="">선택 옵션</option>
                        <option>지지체</option>
                        <option>국립공원</option>
                        <option>자연휴양림</option>
                        <option>국민여가</option>
                        <option>민간</option>
                      </select>
                    </div>
                  </div>
                </form>
              </div>
              <!-- Advance filter END -->
            </div>
            <!-- Booking from END -->
          </div>
        </div>
        <!-- Search END -->
      </div>
    </section>
    <!-- =======================
		Main Banner END -->

    <!-- =======================
		Tour grid START -->
    <section class="pt-0">
      <div class="container">
        <!-- Filter and content START -->
        <div class="row g-4 align-items-center justify-content-between mb-4">
          <!-- Content -->
          <div class="col-12 col-xl-8">
            <h5 class="mb-0">총 1,234개의 결과가 검색되었습니다.</h5>
          </div>

          <!-- Select option -->
          <div class="col-xl-2">
            <form class="form-control-bg-light">
              <select class="form-select js-choice">
                <option value="">추천 많은 순</option>
                <option>인기순</option>
                <option>별점순</option>
              </select>
            </form>
          </div>
        </div>
        <!-- Filter and content END -->

        <div class="row g-4" id="packages">
          <!-- Card item START -->
          <div class="col-md-6 col-xl-4">
            <!-- place item-->
            <div class="w-100 h-100 hover-animate">
              <div class="card card-img-scale h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden">
                  <img class="img-fluid" src="assets/images/campsite/02.jpg" />
                  <div class="card-img-overlay-top">
                    <div class="d-flex justify-content-between">
                      <span class="badge text-bg-dark mt-2" style="height: 1.5rem">해변</span>
                      <span class="mt-n2">
                        <img src="assets/images/amcharts_weather_icons_1.0.0/animated/cloudy-day-1.svg">
                      </span>
                    </div>
                    <!-- 하트 -->
                    <a class="btn ms-n2 heart-btn" style="position: absolute; left: 0.5rem; top: 11rem;">
                      <i class="far fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
                    </a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h5 class="card-title text-decoration-none text-dark">
                      <a href="camping-detail.html" class="stretched-link title">
                        사천비토솔섬오토캠핑장
                      </a>
                    </h5>
                    전라북도 부안군
                    <div class="d-flex card-subtitle mb-n4 pt-2">
                      <p class="card-text col-7">
                        <span class="h5 text-secondary">₩ 150,000 ~</span>
                      </p>
                      <p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star-half-alt text-warning"></i>
                        <i class="far fa-star text-warning"></i>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card item END -->

          <!-- Card item START -->
          <div class="col-md-6 col-xl-4">
            <div class="w-100 h-100 hover-animate">
              <div class="card card-img-scale h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden">
                  <img class="img-fluid" src="assets/images/campsite/03.jpg" />
                  <div class="card-img-overlay-top">
                    <div class="d-flex justify-content-between">
                      <span class="badge text-bg-dark mt-2" style="height: 1.5rem">강</span>
                      <span class="mt-n2">
                        <img src="assets/images/amcharts_weather_icons_1.0.0/animated/cloudy.svg">
                      </span>
                    </div>
                    <!-- 하트 -->
                    <a class="btn ms-n2 heart-btn" style="position: absolute; left: 0.5rem; top: 11rem;">
                      <i class="far fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
                    </a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h5 class="card-title text-decoration-none text-dark">
                      <a href="camping-detail.html" class="stretched-link title">
                        사천비토솔섬오토캠핑장
                      </a>
                    </h5>
                    전라북도 부안군
                    <div class="d-flex card-subtitle mb-n4 pt-2">
                      <p class="card-text col-7">
                        <span class="h5 text-secondary">₩ 150,000 ~</span>
                      </p>
                      <p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star-half-alt text-warning"></i>
                        <i class="far fa-star text-warning"></i>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card item END -->

          <!-- Card item START -->
          <div class="col-md-6 col-xl-4">
            <div class="w-100 h-100 hover-animate">
              <div class="card card-img-scale h-100 border-0 shadow">
                <div class="card-img-top overflow-hidden">
                  <img class="img-fluid" src="assets/images/campsite/05.jpg" />
                  <div class="card-img-overlay-top">
                    <div class="d-flex justify-content-between">
                      <span class="badge text-bg-dark mt-2" style="height: 1.5rem">섬</span>
                      <span class="mt-n2">
                        <img src="assets/images/amcharts_weather_icons_1.0.0/animated/day.svg">
                      </span>
                    </div>
                    <!-- 하트 -->
                    <a class="btn ms-n2 heart-btn" style="position: absolute; left: 0.5rem; top: 11rem;">
                      <i class="far fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
                    </a>
                  </div>
                </div>
                <div class="card-body d-flex align-items-center">
                  <div class="w-100">
                    <h5 class="card-title text-decoration-none text-dark">
                      <a href="camping-detail.html" class="stretched-link title">
                        사천비토솔섬오토캠핑장
                      </a>
                    </h5>
                    전라북도 부안군
                    <div class="d-flex card-subtitle mb-n4 pt-2">
                      <p class="card-text col-7">
                        <span class="h5 text-secondary">₩ 150,000 ~</span>
                      </p>
                      <p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star-half-alt text-warning"></i>
                        <i class="far fa-star text-warning"></i>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card item END -->

          <!-- Card item START -->
          <div class="col-md-6 col-xl-4">
            <div class="card card-img-scale h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden">
                <img class="img-fluid" src="assets/images/campsite/06.jpg" />
                <div class="card-img-overlay-top">
                  <div class="d-flex justify-content-between">
                    <span class="badge text-bg-dark mt-2" style="height: 1.5rem">산</span>
                    <span class="mt-n2">
                      <img src="assets/images/amcharts_weather_icons_1.0.0/animated/cloudy-day-1.svg">
                    </span>
                  </div>
                  <!-- 하트 -->
                    <a class="btn ms-n2 heart-btn" style="position: absolute; left: 0.5rem; top: 11rem;">
                    <i class="far fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
                  </a>
                </div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h5 class="card-title text-decoration-none text-dark">
                    <a href="camping-detail.html" class="stretched-link title">
                      사천비토솔섬오토캠핑장
                    </a>
                  </h5>
                  전라북도 부안군
                  <div class="d-flex card-subtitle mb-n4 pt-2">
                    <p class="card-text col-7">
                      <span class="h5 text-secondary">₩ 150,000 ~</span>
                    </p>
                    <p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star-half-alt text-warning"></i>
                      <i class="far fa-star text-warning"></i>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card item END -->

          <!-- Card item START -->
          <div class="col-md-6 col-xl-4">
            <div class="card card-img-scale h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden">
                <img class="img-fluid" src="assets/images/campsite/07.jpg" />
                <div class="card-img-overlay-top">
                  <div class="d-flex justify-content-between">
                    <span class="badge text-bg-dark mt-2" style="height: 1.5rem">숲</span>
                    <span class="mt-n2">
                      <img src="assets/images/amcharts_weather_icons_1.0.0/animated/cloudy.svg">
                    </span>
                  </div>
                  <!-- 하트 -->
                    <a class="btn ms-n2 heart-btn" style="position: absolute; left: 0.5rem; top: 11rem;">
                    <i class="far fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
                  </a>
                </div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h5 class="card-title text-decoration-none text-dark">
                    <a href="camping-detail.html" class="stretched-link title">
                      사천비토솔섬오토캠핑장
                    </a>
                  </h5>
                  전라북도 부안군
                  <div class="d-flex card-subtitle mb-n4 pt-2">
                    <p class="card-text col-7">
                      <span class="h5 text-secondary">₩ 150,000 ~</span>
                    </p>
                    <p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star-half-alt text-warning"></i>
                      <i class="far fa-star text-warning"></i>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card item END -->

          <!-- Card item START -->
          <div class="col-md-6 col-xl-4">
            <div class="card card-img-scale h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden">
                <img class="img-fluid" src="assets/images/campsite/08.jpg" />
                <div class="card-img-overlay-top">
                  <div class="d-flex justify-content-between">
                    <span class="badge text-bg-dark mt-2" style="height: 1.5rem">도심</span>
                    <span class="mt-n2">
                      <img src="assets/images/amcharts_weather_icons_1.0.0/animated/rainy-6.svg">
                    </span>
                  </div>
                  <!-- 하트 -->
                    <a class="btn ms-n2 heart-btn" style="position: absolute; left: 0.5rem; top: 11rem;">
                    <i class="far fa-heart fs-5 ms-n2 heart-icon" style="color: red;"></i>
                  </a>
                </div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h5 class="card-title text-decoration-none text-dark">
                    <a href="camping-detail.html" class="stretched-link title">
                      사천비토솔섬오토캠핑장
                    </a>
                  </h5>
                  전라북도 부안군
                  <div class="d-flex card-subtitle mb-n4 pt-2">
                    <p class="card-text col-7">
                      <span class="h5 text-secondary">₩ 150,000 ~</span>
                    </p>
                    <p class="flex-shrink-1 mt-1 card-stars text-end col-5" style="font-size: 0.7rem;">
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star text-warning"></i>
                      <i class="fa fa-star-half-alt text-warning"></i>
                      <i class="far fa-star text-warning"></i>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Card item END -->
        </div>
        <!-- Row END -->

        <!-- Pagination -->
        <div class="row">
          <div class="col-12">
            <nav class="mt-4 d-flex justify-content-center" aria-label="navigation">
              <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
                <li class="page-item mb-0">
                  <a class="page-link" href="#" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a>
                </li>
                <li class="page-item mb-0">
                  <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item mb-0 active">
                  <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item mb-0">
                  <a class="page-link" href="#">..</a>
                </li>
                <li class="page-item mb-0">
                  <a class="page-link" href="#">6</a>
                </li>
                <li class="page-item mb-0">
                  <a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </section>
    <!-- =======================
		Tour grid END -->
  </main>
  <!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>