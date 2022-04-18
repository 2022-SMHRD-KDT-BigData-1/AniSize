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
      crossorigin="anonymous"
    />
    <!-- Google Fonts : MuseoModerno 영어-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap"
      rel="stylesheet"
    />
    <!-- Google Fonts : MuseoModerno 한글-->
    <link
      href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap"
      rel="stylesheet"
    />

    <!-- Google Icon -->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />

    <!-- Bootstrap Icon -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
      body {
        background-color: #ffffff;
        font-size: 10px;
        color: #5e5e5e;
        display: flex;
      }

      html,
      body {
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

      /* 상단 제목 */
      h1 {
        font-family: "InfinitySans-RegularA1";
        font-size: 18px;
        color: #2c2c2ca1;
        width: 200px;
        font-weight: normal;
        font-style: normal;
        text-align: center;
        margin-bottom: 0px;
        padding-right: 30px;
      }

      @font-face {
        font-family: "InfinitySans-RegularA1";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff")
          format("woff");
        font-weight: normal;
        font-style: normal;
      }

      p {
        margin-bottom: 6px;
      }

      .btn {
        color: #ad67ea;
        padding: 0 0 0 0;
        /* border-color: #ad67ea;
            width: 160px;
            height: 28px;
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center; */
      }

      /* 탭 컬러 변경 */
      .nav-link {
        color: #5e5e5e;
      }

      .nav-tabs .nav-link.active {
        color: #ad67ea;
        background-color: #fff;
        border-color: #dee2e6 #dee2e6 #fff;
      }

      /* 여백 킻 크기 확인 */
      .z {
        border: solid salmon;
      }

     /*  h3{
        font-size: 27px;
        text-align: center;
        color: #2c2c2ca1;
        font-family: "InfinitySans-RegularA1";

        font-weight: normal;
        font-style: normal;
      } */
      .order{
        font-size: 14px;
        font-weight: bolder;
        padding:  70px 70px 70px 90px ;
        display: block;
      }
      .btn {
        background-color: #5e5e5e;
        color: #fff;
        width: 330px;
        height: 38px;
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
	color: #c370de;
	font-size: 30px;
  	font-weight: bold;
}
    </style>
  </head>

  <body>
    <div class="container">
      <!-- 뒤로 가기 + 로고 -->
      <div class="row">
        <div class="col-1">
          <a class="navbar-brand" href="javascript:history.back()">
            <i
              class="bi bi-chevron-left"
              style="color: #5e5e5e; text-align: start; font-size: 20px"
            >
            </i>
          </a>
        </div>
        <div class="col-11">
          <h4 style="margin-right: 50px; margin-top: 0px; 
        font-size: 27px;
        text-align: center;
        color: #2c2c2ca1;
        font-family: "InfinitySans-RegularA1";
        font-weight: normal;
        font-style: normal;">결제 내역</h4>
        </div>
      </div>
      <br />
     <i
        class="bi bi-credit-card-2-back"
        style="
          color: #ad67ea;
          font-size: 50px;
          display: flex;
          justify-content: center;
          align-items: center;
        
        "
      ></i
      >
      <hr />
      <span class="order">결제가 완료되었습니다.</span>
      <hr />

      <br>
      <br>
      <button
      type="button"
      class="btn"
      style="background-color: rgb(173, 103, 234); margin-top: 20px; margin-bottom: 80px;" onclick="location.replace('home.do'); "
    >
      결제 완료
    </button>

  

      

      <!--/ container  -->
    </div>
    
    
    <!-- 메뉴바 + 카데고리 -->
      <jsp:include page="menuBar.jsp"></jsp:include>

    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
