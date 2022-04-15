<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>aniSize</title>
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<!-- Google Fonts : MuseoModerno -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet" />

<style>
body {
	background-color: #ffffff;
	font-size: 10px;
	color: #5e5e5e;
	display: flex;
}

.container {
	width: 100%;
	max-width: 350px;
	min-width: 300px;
	padding: 10px;
	margin: auto;
	display: block;
}

.btn {
	color: #fff;
}

html, body {
	height: 100%;
}

.col-11 h3 {
	font-family: "Jua", sans-serif;
	font-size: 35px;
	color: rgb(173, 103, 234);
}

@font-face {
	font-family: "InfinitySans-RegularA1";
	src:
		url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff")
		format("woff");
	font-weight: normal;
	font-style: normal;
}

p .btn {
	font-family: "InfinitySans-RegularA1";
	font-weight: normal;
	font-style: normal;
}
h3 {
	text-align: center;
}
</style>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-1">
				<a class="navbar-brand" href="javascript:history.back()"> <i
					class="bi bi-chevron-left"
					style="color: #5e5e5e; text-align: start; font-size: 30px"> </i></a>
			</div>
			<div class="col-11">
				<h3 style="margin-left: 40px; margin-top: 5px">Member Login</h3>
				<!--<img src="img/logo.jpg" style="width: 200px; margin-left: 30px" />-->
			</div>
		</div>
		<!--<i class="bi bi-chevron-left"></i>-->

		<br />
		<div class="d-grid gap-3 col-12 form-group" style="margin-top: 50px">
			<c:choose>
				<c:when test="${loginFail eq 'Fail'}">
					<h3>로그인 실패</h3>
				</c:when>
				<c:otherwise>
					<h3>로그인</h3>
					<h1>${loginFail}</h1>

				</c:otherwise>
			</c:choose>
			<form action="selectLogin.do">
				<input type="email" class="form-control my-2" id="email"
					placeholder="아이디(이메일)" name="mem_email" /> <input type="password"
					class="form-control" id="password" placeholder="비밀번호" name="mem_pw" />
		</div>
		<br />
		<div class="d-grid gap-1 col-12 mx-auto">
			<button type="submit" class="btn"
				style="background-color: rgb(173, 103, 234)">로그인</button>
			</form>
			<hr />
			
			<p class="btn" style="color: rgb(173, 103, 234); background-color: #ffffff; ">
                <a href="join.do" style="text-decoration: none; color: rgb(173, 103, 234)">회원이 아닐경우
                    <span style="padding: 5px 5px 5px 5px; border-radius: 5px; border: 1px solid rgb(173, 103, 234);">회원가입</span>
                </a>
            </p>
		</div>
	</div>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>
