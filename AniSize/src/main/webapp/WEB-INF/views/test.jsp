<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />

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
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap" rel="stylesheet">

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

    <!--Css-->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />

    <link rel="stylesheet" href="style.css" />
  </head>

  <body>
    <div class="container">
      <div class="brand" >
      <img src="img/logo.jpg" style="width: 200px; height: 150px; margin-left: 60px;" />
    </div>
      <br />

      <!-- Swiper -->
      <div class="swiper mySwiper" style="margin-left: 0px">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="img/KakaoTalk_20220408_115519209.jpg" />
          </div>
          <div class="swiper-slide">
            <img src="img/KakaoTalk_20220408_115519209_01.jpg" />
          </div>
          <div class="swiper-slide">
            <img src="img/KakaoTalk_20220408_115519209_02.jpg" />
          </div>
          <div class="swiper-slide">
            <img src="img/KakaoTalk_20220408_115805126.jpg" />
          </div>
        </div>

        <div class="swiper-pagination"></div>
      </div>
      <!-- Swiper JS -->
      <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

      <!-- Initialize Swiper -->
      <script>
        var swiper = new Swiper(".mySwiper", {
          spaceBetween: 30,
          centeredSlides: true,
          autoplay: {
            delay: 2500,
            disableOnInteraction: false,
          },
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
        });
      </script>

      <div class="home_content" style="margin-top: 30px">
        <div class="categories_slide">
          <div class="category_menus">
            <ul id="first">
              <a href="">
                <li>
                  <img
                    src="img/event.jpg"
                    style="
                      width: 70px;
                      height: 60px;
                      padding: 0px;
                      border-radius: 15px;
                      margin-right: 4px;
                    "
                  />
                </li>
              </a>
              <a href="">
                <li>
                  <img
                    src="img/trend.jpg"
                    style="
                      width: 70px;
                      height: 60px;
                      padding: 0px;
                      border-radius: 15px;
                      margin-right: 4px;
                    "
                  />
                </li>
              </a>
              <a href="">
                <li>
                  <img
                    src="img/cody.jpg"
                    style="
                      width: 70px;
                      height: 60px;
                      padding: 0px;
                      border-radius: 15px;
                      margin-right: 4px;
                    "
                  />
                </li>
              </a>
          
              <a href="">
                <li>
                  <img
                    src="img/sale.jpg"
                    style="
                      width: 70px;
                      height: 60px;
                      padding: 0px;
                      border-radius: 15px;
                      margin-right: 4px;
                    "
                  />
                </li>
              </a>
            </ul>
          </div>
        </div>
      </div>

      <div class="s_title">
        <h4><span style="color: black">박건하님</span>의 추천상품</h4>
      </div>

      <ul class="products_list">
        <li>
          <a href="">
            <div class="picture" style="background-image: url('img/0.jpg')">
              제목
            </div>
          </a>
          <h3><a href="">제목</a></h3>
          <h4>가격</h4>
        </li>
        <li>
          <a href="">
            <div class="picture" style="background-image: url('img/1.jpg')">
              제목
            </div>
          </a>
          <h3><a href="">제목</a></h3>
          <h4>가격</h4>
        </li>
        <li>
          <a href="">
            <div class="picture" style="background-image: url('img/2.jpg')">
              제목
            </div>
          </a>
          <h3><a href="">제목</a></h3>
          <h4>가격</h4>
        </li>
        <li>
          <a href="">
            <div class="picture" style="background-image: url('img/3.jpg')">
              제목
            </div>
          </a>
          <h3><a href="">제목</a></h3>
          <h4>가격</h4>
        </li>
        <li>
          <a href="">
            <div class="picture" style="background-image: url('img/4.jpg')">
              제목
            </div>
          </a>
          <h3><a href="">제목</a></h3>
          <h4>가격</h4>
        </li>
        <li>
          <a href="">
            <div class="picture" style="background-image: url('img/5.jpg')">
              제목
            </div>
          </a>
          <h3><a href="">제목</a></h3>
          <h4>가격</h4>
        </li>
      </ul>
    </div>

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
    <!-- 메뉴바 -->

    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>