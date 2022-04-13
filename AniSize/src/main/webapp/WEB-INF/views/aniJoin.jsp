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
<!-- Google Fonts : MuseoModerno 영어-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
	rel="stylesheet" />
<!-- Google Fonts : Hahmlet 한글-->
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap"
	rel="stylesheet" />
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />

<link rel="stylesheet" href="resources/css/style.css">

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
				style="color: #5e5e5e; text-align: start; font-size: 30px">
			</i> <img src="resources/images/logi(2).jpg"
				style="width: 200px; height: 60px; margin-left: 30px; margin-top: 40px; margin-bottom: 50px;" /></a>
		</div>
		<br />
		<p style="text-align: center; font-size: 20px">Animal Join</p>
		<hr />

		<div class="d-grid gap-2 col-12 form-group">
			<form action="insertAniInfo.do" method="post">
				<input type="hidden" id="mem_num" name="mem_num" value="100">

				<input type="text" class="form-control" id="ani_name" placeholder="강아지 이름" name="ani_name" required /> 
				<input type="text" class="form-control" id="ani_kind" placeholder="견종" name="ani_kind" required /> 
				<select class="form-select" aria-label="Default select example" name="ani_sex" required>
					<option selected>성별</option>
					<option value="f">암컷</option>
					<option value="m">수컷</option>
				</select> <input type="number" class="form-control" id="ani_weight" placeholder="체중 (숫자만 입력)" name="ani_weight" min=0 step='0.1' required/>
				<hr/>
				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					반려동물 사진으로 사이즈 측정하기</p>
				<p
					style="text-align: left; font-size: 12px; font-weight: bold; margin-bottom: 0px;">
					이미지를 클릭하면 사진을 업로드 할 수 있습니다.</p>
				<input type="number" class="form-control" id="ani_back_len" placeholder="등 길이" name="ani_back_len" min=0 step='0.1'/>
				<input type="number" class="form-control" id="ani_neck_len" placeholder="목 둘레" name="ani_neck_len" min=0 step='0.1'/>
				<input type="number" class="form-control" id="ani_chest_len" placeholder="몸통(가슴) 둘레" name="ani_chest_len" min=0 step='0.1'/>

				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					옆면 사진 (신용카드와 같이 찍은 사진)</p>

				<div class="input-group">
					<input type="file" class="form-control" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogsize.PNG" class="img-thumbnail"
						style="display: flex; justify-content: center; align-items: center" />
				</div>

				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					정면 사진 (신용카드와 같이 찍은 사진)</p>

				<div class="input-group">
					<input type="file" class="form-control" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogfrontsize.PNG" class="img-thumbnail"
						style="display: flex; justify-content: center; align-items: center" />
				</div>
				<div class="d-grid gap-1 col-12 mx-auto">
					<button class="btn btn-outline-secondary" type="button"
						id="inputGroupFileAddon04">사이즈 측정</button>

					<hr />


					
					<button type="submit" class="btn" style="background-color: rgb(173, 103, 234); margin-bottom: 70px">완료</button>
				</div>
			</form>
		</div>
	</div>
	<!-- 메뉴바 + 카데고리 -->
	<jsp:include page="menuBar.jsp"></jsp:include>

			<!-- Option 2: Separate Popper and Bootstrap JS -->
			<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>
