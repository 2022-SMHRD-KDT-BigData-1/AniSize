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
		<p style="text-align: center; font-size: 20px">Animal Join</p>
		<hr />

		<div class="d-grid gap-2 col-12 form-group">
			<form action="insertAniInfo.do" method="post">
				<input type="hidden" id="mem_num" name="mem_num" value="${member.mem_num}">

				<input type="text" class="form-control my-2" id="ani_name" placeholder="강아지 이름" name="ani_name"  /> 
				<input type="text" class="form-control my-2" id="ani_kind" list="kindList" placeholder="견종" name="ani_kind" required />
				<datalist id ="kindList">
					<c:forEach var = 'kind' items ='${aniKindList}'>
						<option>${kind.ani_kind}</option>
					</c:forEach>
				</datalist> 
				<select class="form-select" aria-label="Default select example" name="ani_sex" required>
					<option selected>성별</option>
					<option value="f">암컷</option>
					<option value="m">수컷</option>
				</select> <input type="number" class="form-control my-2" id="ani_weight" placeholder="체중 (숫자만 입력)" name="ani_weight" min=0 step='0.1' required/>
				<hr/>
				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					반려동물 사진으로 사이즈 측정하기</p>
				<p
					style="text-align: left; font-size: 12px; font-weight: bold; margin-bottom: 0px;">
					이미지를 클릭하면 사진을 업로드 할 수 있습니다.</p>
				<input type="number" class="form-control my-2" id="ani_back_len" placeholder="등 길이" name="ani_back_length" min=0 step='0.1' value="1" required/>
				<input type="number" class="form-control my-2" id="ani_neck_len" placeholder="목 둘레" name="ani_neck_length" min=0 step='0.1' required/>
				<input type="number" class="form-control my-2" id="ani_chest_len" placeholder="몸통(가슴) 둘레" name="ani_chest_length" min=0 step='0.1' required/>

				<p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					옆면 사진 (신용카드와 같이 찍은 사진)</p>

				<div class="input-group">
					<input  type='file' accept='image/*' class="form-control my-2" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogsize.PNG" class="img-thumbnail my-2"
						style="display: flex; justify-content: center; align-items: center" />
				</div>

				<!-- <p
					style="text-align: left; font-size: 15px; font-weight: bold; margin-bottom: 0px;">
					정면 사진 (신용카드와 같이 찍은 사진)</p>

				<div class="input-group">
					<input type="file" class="form-control my-2" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogfrontsize.PNG" class="img-thumbnail"
						style="display: flex; justify-content: center; align-items: center" />
				</div> -->
				
				<div class="d-grid gap-1 col-12 mx-auto">
					<button class="btn btn-outline-secondary" type="button"
						id="inputGroupFileAddon04" onclick = 'predict()'>사이즈 측정</button>

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
            		alert("카드 인식 실패");
            	} else {
            		alert("강아지 인식 실패")
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
