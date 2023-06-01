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
    Page Banner START -->
    <section class="py-0">
        <div class="container">
            <div class="row mt-4 align-items-center">
                <div class="col-12">
                    <!-- Card START -->
                    <div class="card bg-light overflow-hidden px-sm-5">
                        <div class="row align-items-center g-4">
                            <!-- Content -->
                            <div class="col-sm-9">
                                <div class="card-body">
                                    <!-- Title -->
                                    <div class="m-0 h3 title text-center ps-9">주변 공연장</div>
                                    <div class="text-center ps-9">내 주변 공연장의 공연/전시를 찾아보세요. 지도에서 위치를 클릭해보세요</div>
									
                                </div>
                            </div>
                        </div>
                    </div><br><br>
                </div>
            </div>
        </div>
    </section>
	<!-- Card END -->

    <!-- =======================
    Page Banner END -->
	<div>
		<div>
            <script>
                function setCookie(name, value, expiredays) {
                    var todayDate = new Date();
                    todayDate.setDate(todayDate.getDate() + expiredays);
                    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
                }

                function closeWin() {
                    if (document.notice_form.chkbox.checked) {
                        setCookie("maindiv", "done", 1);
                    }
                    document.getElementById('divpop').style.visibility = "hidden";
                }
            </script>
            <div id="map" style="border-radius: 1rem; width: 70%; height: 700px; left: 280px;"></div>
        </div>
    </div>

    <script type="text/javascript" src="${path}/resources/assets/js/kakaomap.js"></script>
    <script>
        var mapContainer = document.getElementById('map');
        var mapOption = {
            center: new kakao.maps.LatLng(37.511444073, 127.076251001), // 지도의 중심좌표
            level: 4 // 지도의 확대 레벨
        };

        // 지도를 생성합니다
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
	<br><br>
    

	<!-- // 추천목록 -->
	
    <h3 class="h3 title" style="padding-left: 270px;">검색된 주변 공연장<div class="pageCount"><span id="facilty_num"></span></div></h3>
	<div class="boardBasic mb_scroll">
        <div class="tbBox" style="padding-left: 275px;">
            <table class="type1 t-fix" style="width: 1300px;">
                <caption>내 주변 공연장 목록</caption>
                <colgroup>
                    <col>
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:12.5%">
                    <col style="width:10%">
                </colgroup>
                <tbody><tr id="placeList">
                    <th>주변 공연장 (위치)</th>
                    <th>홀 수</th>
                    <th>객석수</th>
                    <th>개관연도</th>
                    <th>지역(구,군)</th>
                    <th>상세보기</th>
                </tr>
                </tbody><tbody id="placeTbody">
                </tbody>
            </table>
            <div class="board_type2"></div>
        </div>
    </div>

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
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>