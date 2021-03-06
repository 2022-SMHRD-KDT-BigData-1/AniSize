<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix ='c' uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- Google Fonts : MuseoModerno μμ΄-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
	rel="stylesheet" />
<!-- Google Fonts : Hahmlet νκΈ-->
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
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script>
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
		<p style="text-align: center; font-size: 20px">Animal Update</p>
		<hr />

		<div class="d-grid gap-2 col-12 form-group">
			<form action="updateAniInfo.do" method="post">
				<input type="hidden" id="mem_num" name="mem_num" value="${member.mem_num}">

				<input type="text" class="form-control my-2" id="ani_name" placeholder="κ°μμ§ μ΄λ¦" name="ani_name" required /> 
				<input type="text" class="form-control my-2" id="ani_kind" list="kindList" placeholder="κ²¬μ’" name="ani_kind" required />
				<datalist id ="kindList">
					<c:forEach var = 'kind' items ='${aniKindList}'>
						<option>${kind.ani_kind}</option>
					</c:forEach>
				</datalist> 
				<select class="form-select" aria-label="Default select example" name="ani_sex" required>
					<option selected>μ±λ³</option>
					<option value="f">μμ»·</option>
					<option value="m">μμ»·</option>
				</select> <input type="number" class="form-control my-2" id="ani_weight" placeholder="μ²΄μ€ (μ«μλ§ μλ ₯)" name="ani_weight" min=0 step='0.1' required/>
				<hr/>
				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					λ°λ €λλ¬Ό μ¬μ§μΌλ‘ μ¬μ΄μ¦ μΈ‘μ νκΈ°</p>
				<p
					style="text-align: left; font-size: 12px; font-weight: bold; margin-bottom: 0px;">
					μ΄λ―Έμ§λ₯Ό ν΄λ¦­νλ©΄ μ¬μ§μ μλ‘λ ν  μ μμ΅λλ€.</p>
				<table style = "width:100%;">
					<tr><td style = "width : 20%; text-align:center;font-size: 12px; font-weight: bold;">λ± κΈΈμ΄</td><td><input type="number" class="form-control my-2" id="ani_back_len" name="ani_back_length" value = 0 min=0 step='0.1'/></td>
					<tr><td style = "width : 20%; text-align:center;font-size: 12px; font-weight: bold;">λͺ© λλ </td><td><input type="number" class="form-control my-2" id="ani_neck_len" name="ani_neck_length" value = 0 min=0 step='0.1'/></td>
					<tr><td style = "width : 20%; text-align:center;font-size: 12px; font-weight: bold;">κ°μ΄ λλ </td><td><input type="number" class="form-control my-2" id="ani_chest_len" name="ani_chest_length" value = 0 min=0 step='0.1'/></td>
				</table>
				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					μλ©΄ μ¬μ§ (μ μ©μΉ΄λμ κ°μ΄ μ°μ μ¬μ§)</p>

				<div class="input-group">
					<input  type='file' accept='image/*' class="form-control my-2" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogsize.PNG" class="img-thumbnail my-2"
						style="display: flex; justify-content: center; align-items: center" />
				</div>

				<!-- <p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					μ λ©΄ μ¬μ§ (μ μ©μΉ΄λμ κ°μ΄ μ°μ μ¬μ§)</p>

				<div class="input-group">
					<input type="file" class="form-control my-2" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogfrontsize.PNG" class="img-thumbnail"
						style="display: flex; justify-content: center; align-items: center" />
				</div> -->
				
				<div class="d-grid gap-1 col-12 mx-auto">
					<button class="btn btn-outline-secondary" type="button"
						id="inputGroupFileAddon04" onclick = 'predict()'>μ¬μ΄μ¦ μΈ‘μ </button>

					<hr />


					
					<button type="submit" class="btn" style="background-color: rgb(173, 103, 234); margin-bottom: 70px">μλ£</button>
				</div>
			</form>
		</div>
	</div>
	<!-- λ©λ΄λ° + μΉ΄λ°κ³ λ¦¬ -->
	<jsp:include page="menuBar.jsp"></jsp:include>

			<!-- Option 2: Separate Popper and Bootstrap JS -->
			<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
    
    <script>
    function predict() {
    	
    	var form = $('#inputGroupFile04')[0].files[0];
		var formData = new FormData();
		formData.append('img', form);
    	$.ajax({
            url : "http://f5.project-jupyter.ddns.net:8875/predict",
            type : "POST",
            enctype: 'multipart/form-data',
            data : formData,
            processData: false,
	        contentType: false,
	        cache: false,
            success : function(result){
            	if (result['err']==0){
            		$('#ani_back_len').val(result['back']);
                    $('#ani_neck_len').val(result['neck']);
                    $('#ani_chest_len').val(result['chest']);
            	} else if (result['err']==1) {
            		alert("μΉ΄λ μΈμ μ€ν¨");
            	} else {
            		alert("κ°μμ§ μΈμ μ€ν¨")
            	}
                
            },
            error : function(){
            	alert("error!"); 
            }
        })
	};
    </script>
</body>
</html>
