<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<title>aniSize</title>

<!-- Bootstrap CSS -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<!-- Google Fonts : MuseoModerno 영어-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap"
	rel="stylesheet">

<!-- Google Fonts : MuseoModerno 한글-->
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap"
	rel="stylesheet" />

<!-- Google Icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />

<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />

<!--Css-->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<link rel="stylesheet" href="resources/css/style.css" />

<style>
/* 메뉴바 높이 설정 : home page 만 */
.navbar {
	height: 48px
}

.page-item {
	font-size: 3ch;
	
}

.page-item.active .page-link {
    z-index: 3;
    color: #fff;
    background-color: #c370de;
    border-color: #c370de;
}
</style>

</head>

<body>
	<div class="container">
		<div class="brand" style="border-bottom: none;">
			<img src="resources/images/logo.jpg"
				style="width: 200px; height: 150px; margin-left: 60px;" /> <br />

			<!-- Swiper -->
			<div class="swiper mySwiper" style="margin-left: 0px">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="resources/images/KakaoTalk_20220408_115519209.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="resources/images/KakaoTalk_20220408_115519209_01.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="resources/images/KakaoTalk_20220408_115519209_02.jpg" />
					</div>
					<div class="swiper-slide">
						<img src="resources/images/KakaoTalk_20220408_115805126.jpg" />
					</div>
				</div>

				<div class="swiper-pagination"></div>
			</div>
			<!-- Swiper JS -->
			<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

			<!-- Initialize Swiper -->
			<script>
        var swiper = new Swiper(".mySwiper", {
          spaceBetween: 30,
          centeredSlides: true,
          autoplay: {
            delay: 2500,
            disableOnInteraction: false,
          },
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
        });
      </script>

			<div class="home_content" style="margin-top: 30px">
				<div class="categories_slide">
					<div class="category_menus">
						<ul id="first">
							<a href="">
								<li><img src="resources/images/event.jpg"
									style="width: 70px; height: 60px; padding: 0px; border-radius: 15px; margin-right: 4px;" />
							</li>
							</a>
							<a href="">
								<li><img src="resources/images/trend.jpg"
									style="width: 70px; height: 60px; padding: 0px; border-radius: 15px; margin-right: 4px;" />
							</li>
							</a>
							<a href="">
								<li><img src="resources/images/cody.jpg"
									style="width: 70px; height: 60px; padding: 0px; border-radius: 15px; margin-right: 4px;" />
							</li>
							</a>

							<a href="">
								<li><img src="resources/images/sale.jpg"
									style="width: 70px; height: 60px; padding: 0px; border-radius: 15px; margin-right: 4px;" />
							</li>
							</a>
						</ul>
					</div>
				</div>
			</div>

			<div class="s_title">
				<c:choose>
					<c:when test="${empty member}">
						<h4>추천상품</h4>
					</c:when>
					<c:otherwise>
						<h4>
							<span style="color: black">${member.mem_nick}님</span>의 추천상품
						</h4>
					</c:otherwise>
				</c:choose>
			</div>

			<ul class="products_list">
				<c:forEach items="${productList}" var="product">
					<li><a href="product.do?pd_num=${product.pd_num}">
							<div class="picture"
								style="background-image: url('images/product/${product.pd_num}/thumnail.jpg')">
							</div>
					</a>
						<h3>
							<a href="">${product.pd_name}</a>
						</h3>
						<h4>${product.pd_price}원</h4></li>
				</c:forEach>

			</ul>

			<!-- 페이징 -->
			<div>
				<nav aria-label="Page navigation example">
					<ul class="pagination" style='text-align:center; display:block;'>
						<li class="page-item previous" style="display: none;"><a class="page-link" onclick ='previousPageList()'
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<c:forEach varStatus="pg" begin="1" end="${lastPage}">
							<c:choose>
								<c:when test='${pg.index<=5}'>
									<c:choose>
										<c:when test='${pg.index == currentPage}'>
											<li class="page-item active pageNum" style="display: inline-block;"><a
												class="page-link" href="home.do?page=${pg.index}">${pg.index}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item pageNum" style="display: inline-block;"><a
												class="page-link" href="home.do?page=${pg.index}">${pg.index}</a></li>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test='${pg.index == currentPage}'>
											<li class="page-item active pageNum" style="display: none;"><a
												class="page-link" href="home.do?page=${pg.index}">${pg.index}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item pageNum" style="display: none;"><a
												class="page-link" href="home.do?page=${pg.index}">${pg.index}</a></li>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test='${lastPage<=5}'>
							</c:when>
							<c:otherwise>
								<li class="page-item next" style="display: inline-block;"><a
									class="page-link" onclick='nextPageList()' aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</div>
		</div>
		<br>
		<br>
		<br>


		<!-- 메뉴바 + 카데고리 -->

		<!-- 메뉴바 -->
		<jsp:include page="menuBar.jsp"></jsp:include>

	</div>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    
    <script>
    	var startNum = 0;
    	var endNum = 4;
    	var pageList = document.querySelectorAll('li.page-item.pageNum');
    	var previous = document.querySelector('li.page-item.previous');
    	var next = document.querySelector('li.page-item.next')
    	console.log(startNum,endNum);
		function previousPageList() {
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'none';
			}
			startNum = startNum-5;
			endNum = startNum+4;
			console.log(startNum,endNum);
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'inline-block';
			}
			previous.style.display='inline-block';
			next.style.display='inline-block';
			if (startNum==0){
				previous.style.display='none';
			}
		}
		
		function nextPageList() {
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'none';
			}
			startNum = startNum+5;
			endNum = startNum+4;
			if (endNum+1>=pageList.length){
				endNum = pageList.length-1;
			}
			console.log(startNum,endNum);
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'inline-block';
			}
			previous.style.display='inline-block';
			next.style.display='inline-block';
			if (endNum==pageList.length-1){
				next.style.display='none';
			}
			
		}
    </script>
</body>
</html>
