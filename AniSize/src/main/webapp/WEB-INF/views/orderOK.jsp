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

      h3{
        font-size: 27px;
        text-align: center;
        color: #2c2c2ca1;
        font-family: "InfinitySans-RegularA1";

        font-weight: normal;
        font-style: normal;
      }
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
          <h3 style="margin-right: 50px; margin-top: 0px">결제 내역</h3>
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
      style="background-color: rgb(173, 103, 234); margin-top: 20px; margin-bottom: 80px;"
    >
      결제 완료
    </button>

  

      <!-- 메뉴바 + 카데고리 -->
      <nav
      class="navbar fixed-bottom"
      style="
        margin: 0px;
        padding: 0px;
        background-color: #ffffff;
        color: #c370de;
        border-top: 0.1px solid #c370de;
      "
    >
      <div class="container-fluid">
        <a
          class="navbar-toggler"
          type="button"
          data-bs-toggle="offcanvas"
          data-bs-target="#offcanvasNavbar"
          aria-controls="offcanvasNavbar"
          style="margin: 0px; padding: 0px"
        >
          <i class="bi bi-list" style="font-size: 32px"></i>
          <!-- <i class="bi bi-card-list"></i> -->
        </a>

        <a class="navbar-brand" href="#"
          ><i class="bi bi-search" style="font-size: 25px"></i
        ></a>
        <a class="navbar-brand" href="#"><i class="bi bi-house-door"></i></a>
        <a class="navbar-brand" href="#"
          ><i class="bi bi-cart" style="font-size: 28px"></i
        ></a>
        <a class="navbar-brand" href="#"
          ><i class="bi bi-person" style="font-size: 32px"></i
        ></a>
        <!-- 카테고리 안  -->
        <div
          class="offcanvas offcanvas-start"
          tabindex="-1"
          id="offcanvasNavbar"
          aria-labelledby="offcanvasNavbarLabel"
          style="max-width: 300px"
        >
          <div class="offcanvas-header">
            <h3 class="offcanvas-title" id="offcanvasNavbarLabel">
              <img src="img/logo_size_invert.jpg" style="width: 240px" ; />
            </h3>
            <button
              type="button"
              class="btn-close text-reset"
              data-bs-dismiss="offcanvas"
              aria-label="Close"
            ></button>
          </div>

          <div
            class="offcanvas-body"
            style="font-family: 'Hahmlet', serif; font-size: 15px"
          >
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a
                  class="nav-link active"
                  aria-current="page"
                  style="color: black"
                  href="#"
                  >베스트</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" style="color: black" href="#"
                  >반려동물 치수재기</a
                >
              </li>
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="offcanvasNavbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                  style="color: black"
                >
                  의류
                </a>
                <ul
                  class="menu"
                  aria-labelledby="offcanvasNavbarDropdown"
                  style="font-size: 12px"
                >
                  <li><a class="dropdown-item" href="#">-티셔츠/탑</a></li>
                  <li><a class="dropdown-item" href="#">-원피스/팬츠</a></li>
                  <li><a class="dropdown-item" href="#">-올인원</a></li>
                  <li><a class="dropdown-item" href="#">-맨추맨/후드</a></li>
                  <li><a class="dropdown-item" href="#">-셔츠/블라우스</a></li>
                  <li><a class="dropdown-item" href="#">-아우터</a></li>
                  <li><a class="dropdown-item" href="#">-니트/가디건</a></li>
                  <li><a class="dropdown-item" href="#">-잠옷/가운</a></li>
                  <li><a class="dropdown-item" href="#">-한복</a></li>
                  <li><a class="dropdown-item" href="#">-레인코트</a></li>
                  <li><a class="dropdown-item" href="#">- 래쉬가드</a></li>
                  <li><a class="dropdown-item" href="#">-구명조끼</a></li>
                  <li><a class="dropdown-item" href="#">-커플룩</a></li>
                </ul>
              </li>
            </ul>
            <footer>
              <div
                class="footer-content"
                style="margin-left: 7px; margin-right: 7px"
              >
                <!--add all information -->
                <h3 style="color: #fff">anisize company</h3>
                <p>고객센터 062-655-3506</p>
                <p>펴일 오전9시 - 오후6시운영</p>

                <div class="info dropdown">
                  <a class="nav-link dropdown-toggle" data-bs-toggle="collapse" href="#collapseExample"
                  role="button" aria-expanded="false" aria-controls="collapseExample"
                  style="color: #cacdd2;">
                  (주)애니사이즈 사업자 정보
              </a>

          </p>
          <div class="collapse" id="collapseExample" style="width: 200px;">
              <div class="card card-body" style="background: rgb(141, 141, 141); padding: 0px; margin-left: 20px;">
                  <p style="font-size: 9px;">
                      (주)애니사이즈 대표자 : 박상민 <br>
                      개인정보책임관리자 : 박상민<br>
                      사업자번호 : 178-82-00065<br>
                      본점 : 광주 동구 예술길 31-15 3, 4, 7층<br>
                      E-Mail : anisize@naver.com</p>

              </div>
          </div>
                <!--
              <p style="font-size: 10px; position: static;">
                일부 상품의 경우 주식회사 anisize는 통신판매의 당사자가 아닌
                통신판매중개자로서 상품, 상품정보, 거래에 대한 책임이 제한될
                수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기
                바랍니다.
              </p>
              -->
                <p></p>
                <ul class="socials">
                  <li>
                    <a href="#"><i class="bi bi-facebook"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="bi bi-twitter"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="bi bi-google"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="bi bi-youtube"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="bi bi-instagram"></i></a>
                  </li>
                </ul>
              </div>
            </footer>
          </div>
        </div>
        <!-- 카테고리 -->
      </div>
    </nav>
      <!--/ container  -->
    </div>

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
