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
<!-- Google Fonts : MuseoModerno μμ΄-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
	rel="stylesheet" />
<!-- Google Fonts : Hahmlet νκΈ-->
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
				<span style="color: red">*</span>λ νμμ¬ν­ μλλ€.
			</p>
			<span style="font-size: 13px">μμ΄λ<span style="color: red">*</span>
			
			<form action="joinInsert.do" method="post">

				<input type="email" class="form-control my-2" id="email" placeholder="μμ΄λ(μ΄λ©μΌ)" name="mem_email" /> 
				<font id = "checkId" size = "2" color="red"></font>
				<span style="font-size: 13px">λΉλ°λ²νΈ<span style="color: red">*</span></span> 
				<input type="password" class="form-control my-2" id="password" placeholder="λΉλ°λ²νΈ" name="mem_pw" />
				<input type="password" class="form-control my-2" id="passwordCk" placeholder="λΉλ°λ²νΈ νμΈ" /> 
				<p id="checkPwd" ></p>
				<span style="font-size: 13px">λλ€μ<span style="color: red">*</span></span> 
				<input type="text" class="form-control my-2" id="nick" placeholder="λλ€μ" name="mem_nick" /> 
				<font id = "checkNick" size = "2"></font>
				<span style="font-size: 13px">μ νλ²νΈ<span style="color: red">*</span></span> 
				<input type="text" class="form-control my-2" id="tel" placeholder="μ νλ²νΈ" name="mem_tel" /> 
				<span style="font-size: 13px">μ£Όμ<span style="color: red">*</span></span>
				<input type="text" class="form-control my-2" id="address" placeholder="μ£Όμ" name="mem_address" />
		</div>

		<br />

		<div class="d-grid gap-1 col-12 mx-auto">
			<button type="submit" class="btn"
				style="background-color: rgb(173, 103, 234); margin-top: 20px; margin-bottom: 30px;">
				νμκ°μ</button>
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
						$("#checkId").text('μ¬μ©κ°λ₯ν μμ΄λ μλλ€.');
						$("#checkId").css('color', 'blue');
					} else {
						$("#checkId").text('μ΄λ―Έ μ‘΄μ¬νλ μμ΄λ μλλ€.');
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
						$("#checkNick").text('μ¬μ©κ°λ₯ν λλ€μ μλλ€.');
						$("#checkNick").css('color', 'blue');
					} else {
						$("#checkNick").text('μ΄λ―Έ μ‘΄μ¬νλ λλ€μ μλλ€.');
						$("#checkNick").css('color', 'red');
					}
				},
				error : function(e) {
					console.log(e);
				}
			});

		});
		
		 
		$('#passwordCk').focusout( function (){
		
			var pwd1=$("#password").val();
			var pwd2=$("#passwordCk").val();
			
		
		  if(pwd1 != pwd2){
		
			$('#checkPwd').text('λμΌν μνΈλ₯Ό μλ ₯νμΈμ');
			$("#checkPwd").css("color", 'red');
		  	/* document.getElementById('checkPwd').innerHTML = "λμΌν μνΈλ₯Ό μλ ₯νμΈμ."; */
		  }else{
			
			$('#checkPwd').text('μνΈκ° νμΈ λμμ΅λλ€');
			$("#checkPwd").css("color", 'blue');
		  	/* document.getElementById('checkPwd').innerHTML = "μνΈκ° νμΈ λμμ΅λλ€."; */
		   
		  	}
	   	  });
		 
	</script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>
