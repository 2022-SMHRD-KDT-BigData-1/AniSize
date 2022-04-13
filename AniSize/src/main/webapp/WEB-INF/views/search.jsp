<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>aniSize</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Google Fonts : MuseoModerno 영어-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
	rel="stylesheet">
<!-- Google Fonts : MuseoModerno 한글-->
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap"
	rel="stylesheet">

<!-- Google Icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<style>
body {
	background-color: #ffffff;
	font-size: 10px;
	color: #5e5e5e;
	display: flex;
}

html, body {
	height: 100%;
}

.container {
	width: 100%;
	max-width: 350px;
	min-width: 300px;
	padding: 10px;
	margin: auto;
	display: block;
}

h2 {
	font-family: 'Hahmlet', serif;
	font-size: 20px;
}

/* 메뉴바 설정*/
.container-fluid {
	width: 100%;
	/* 사이즈 fixed */
	max-width: 350px;
	min-width: 300px;
	padding: 0px;
	margin: auto;
	display: block;
}

h3 {
	font-family: 'MuseoModerno', cursive;
	text-align: center;
	font-size: 40px;
	color: #5e5e5e;
}

/* 메뉴바 설정*/
.navbar-brand {
	margin: 0px;
	padding: 0px;
}

/* 메뉴바 아이콘  */
.bi {
	color: #ffffff;
	font-size: 40px;
}

/* 추천상품 */
p {
	text-align: left;
	font-size: 12px;
}

.p {
	border: solid;
	color: salmon;
}

.btn-st {
	color: #ffffff;
	background-color: #5e5e5e;
	margin: 2px;
}
</style>
</head>

<body>

	<div class="container">

		<br>
		<!-- 검색 -->
		<form class="d-flex" action="doSearch.do">
			<input class="form-control me-2" type="search" placeholder="Search"
				aria-label="Search" name="searchWord">
			<button class="btn btn-outline btn-st" type="submit">Search</button>
		</form>
		<br>
		<br>
		<h2>인기 검색어</h2>
		<c:forEach items="${popularSearchWordList}" var="word">
			<button class="btn rounded-pill btn-outline-default btn-sm btn-st"
				type="submit">${word}</button>
		</c:forEach>
		<br>
		<br>
		<hr>
		<br>
		<c:choose>
			<c:when test="${empty searchedProductList}">
				<h2>추천 상품</h2>
				<!-- row 안에 이미지 2개식 반복 -->
				<!-- text-decoration: none; /* 링크의 밑줄 제거 */ color: inherit; /* 링크의 색상 제거 */-->
				<div class="row">
					<!-- 반복 예시 데이터 연결 후 삭제 -->
					<div class="col-6">
						<a class="namePrice" href="https://www.naver.com/"
							style="text-decoration: none; color: inherit;"> <img
							src="cat_sample.jpg" class="img-thumbnail"><br>
						<br>
							<p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
						</a>
					</div>
					<div class="col-6">
						<a class="namePrice" href="https://www.naver.com/"
							style="text-decoration: none; color: inherit;"> <img
							src="cat_sample.jpg" class="img-thumbnail"><br>
						<br>
							<p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
						</a>
					</div>
					<div class="col-6">
						<a class="namePrice" href="https://www.naver.com/"
							style="text-decoration: none; color: inherit;"> <img
							src="cat_sample.jpg" class="img-thumbnail"><br>
						<br>
							<p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
						</a>
					</div>
					<!-- 여기까지 삭제 -->
				</div>
			</c:when>
			<c:otherwise>
			<c:forEach items="${searhcedProductList}" var="product">
				<div class="col-6">
					<a class="namePrice" href="#" style="text-decoration: none; color: inherit;">
						<img src="images/product/${product.pd_num}/thumbnail.jpg" class="img-thumbnail">
						<br>
						<br>
						<p>${product.pd_name} <br> ${product.pd_price}</p>
					</a>
				</div>
			</c:forEach>

			</c:otherwise>
		</c:choose>
	</div>

	<jsp:include page="menuBar.jsp"></jsp:include>


	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>