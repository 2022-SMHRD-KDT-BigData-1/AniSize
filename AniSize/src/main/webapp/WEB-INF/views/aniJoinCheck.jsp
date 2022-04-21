<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>aniSize</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<!-- Google Fonts : MuseoModerno -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
	rel="stylesheet" />
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />

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

h1 {
	font-family: "MuseoModerno", cursive;
	text-align: center;
	font-size: 60px;
}

.btn {
	background-color: rgb(173, 103, 234);
	color: #fff;
	width: 300px;
}

html, body {
	height: 100%;
}
</style>
</head>

<body>
	<div class="container">
		<div class="col-1">
			<a class="navbar-brand" href="javascript:history.back()"> <i
				class="bi bi-chevron-left"
				style="color: #5e5e5e; text-align: start; font-size: 30px"> </i> <img
				src="resources/images/logi(2).jpg"
				style="width: 200px; height: 60px; margin-left: 35px; margin-bottom: 29px;" /></a>
		</div>

		<br /> <br />
		<p style="text-align: center; font-size: 20px">Animal Join</p>
		<br /> <br />

		<div class="d-grid gap-1 col-12 mx-auto" style="display: flex;
            text-align: center;
            justify-content: center;
            align-items: center;">
			<a href="aniJoin.do">
				<button type="button" class="btn"
					style="background-color: rgb(173, 103, 234); ">반려동물 등록</button>
			</a> <br/>
			<hr />
			<br />
			<p class="btn"
				style="color: rgb(173, 103, 234); background-color: #ffffff">
				 <span
					style="padding: 5px 5px 5px 5px; border-radius: 5px; border: 1px solid rgb(173, 103, 234); "><a href="insertAniInfoLater.do" style="text-decoration:none; color: #ad67ea">나중에
						등록할래요</a></span>
				
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
