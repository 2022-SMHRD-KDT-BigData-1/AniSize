<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        <a class="navbar-brand" href="search.do"
          ><i class="bi bi-search" style="font-size: 25px"></i
        ></a>
        <a class="navbar-brand" href="home.do"><i class="bi bi-house-door"></i></a>
        <a class="navbar-brand" href="cart.do"
          ><i class="bi bi-cart" style="font-size: 28px"></i
        ></a>
        <a class="navbar-brand" href="myPage.do"
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
              <img src="resources/images/logo_size_invert.jpg" style="width: 240px" ; />
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
                  href="best.do?filter=highScore"
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
                  <li><a class="dropdown-item" href="categorySearch.do?category=1">-티셔츠/탑</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=2">-원피스/팬츠</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=3">-올인원</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=4">-맨추맨/후드</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=5">-셔츠/블라우스</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=6">-아우터</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=7">-니트/가디건</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=8">-잠옷/가운</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=9">-한복</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=10">-레인코트</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=11">-구명조끼</a></li>
                  <li><a class="dropdown-item" href="categorySearch.do?category=12">-커플룩</a></li>
                </ul>
              </li>
            </ul> 
            <footer>
              <div
                class="footer-content"
                style="margin-left: 7px; margin-right: 7px"
              >
                <!--add all information -->
                <h3 style="color: #fff"> a nisize company</h3>
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







    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>