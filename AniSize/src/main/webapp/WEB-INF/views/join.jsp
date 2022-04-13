<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>aniSize</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
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
	background-color: #5e5e5e;
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
</style>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-1">
				<a class="navbar-brand" href="javascript:history.back()"> <i
					class="bi bi-chevron-left"
					style="color: #5e5e5e; text-align: start; font-size: 30px">
				</i></a>
			</div>
			<div class="col-11">
				<h3 style="margin-left: -20px; margin-top: 5px">Member Join</h3>
			</div>
		</div>
		<br />

		<hr />

		<br />
		<div class="d-grid gap-3 col-12 form-group">
			<p style="text-align: right; font-size: 13px; font-weight: bold">
				<span style="color: red">*</span>는 필수사항 입니다.
			</p>
			<span style="font-size: 13px">아이디<span
				style="color: red">*</span></span>
			<form action="joinInsert.do" method="post">

				<input type="email" class="form-control" id="email" placeholder="아이디(이메일)" name="mem_email" /> 
				<font id = "checkId" size = "2" color="red"></font>
				<span style="font-size: 13px">비밀번호<span style="color: red">*</span></span> 
				<input type="password" class="form-control" id="password" placeholder="비밀번호" name="mem_pw" />
				<input type="password" class="form-control" id="passwordCk" placeholder="비밀번호 확인" /> 
				<span style="font-size: 13px">닉네임<span style="color: red">*</span></span> 
				<input type="text" class="form-control" id="nick" placeholder="닉네임" name="mem_nick" /> 
				<font id = "checkNick" size = "2"></font>
				<span style="font-size: 13px">전화번호<span style="color: red">*</span></span> 
				<input type="text" class="form-control" id="tel" placeholder="전화번호" name="mem_tel" /> 
				<span style="font-size: 13px">주소<span style="color: red">*</span></span>
				<input type="text" class="form-control" id="address" placeholder="주소" name="mem_address" />
		</div>

		<br />

		<div class="d-grid gap-1 col-12 mx-auto">
			<button type="submit" class="btn"
				style="background-color: rgb(173, 103, 234); margin-top: 20px; margin-bottom: 30px;">
				회원가입</button>
			</form>

		</div>
	</div>
	<jsp:include page="menuBar.jsp"></jsp:include>
	<script>
		$('#email').focusout(function() {
			let email = $('#email').val(); 
			$.ajax({
				url : "emailCheck.do",
				type : "post",
				data : {"email":email},
				dataType : 'text',
				success : function(result) {
					if (result == "") {
						$("#checkId").text('사용가능한 아이디 입니다.');
						$("#checkId").css('color', 'blue');
					} else {
						$("#checkId").text('이미 존재하는 아이디 입니다.');
						$("#checkId").css('color', 'red');
					}
				},
				error : function(e) {
					console.log(e);
				}
			});

		});
		$('#nick').focusout(function() {
			let nick = $('#nick').val(); 
			$.ajax({
				url : "nickCheck.do",
				type : "post",
				data : {"nick":nick},
				dataType : 'text',
				success : function(result) {
					if (result == "") {
						$("#checkNick").text('사용가능한 닉네임 입니다.');
						$("#checkNick").css('color', 'blue');
					} else {
						$("#checkNick").text('이미 존재하는 닉네임 입니다.');
						$("#checkNick").css('color', 'red');
					}
				},
				error : function(e) {
					console.log(e);
				}
			});

		});
	</script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>
