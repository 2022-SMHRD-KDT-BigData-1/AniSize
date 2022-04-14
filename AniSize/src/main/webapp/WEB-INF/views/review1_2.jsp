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
    <link rel="stylesheet" href="resources/css/style.css">

    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
      @font-face {
        font-family: "InfinitySans-RegularA1";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff")
          format("woff");
        font-weight: normal;
        font-style: normal;
      }
      .col-11 h3 {
        font-family: "InfinitySans-RegularA1";
        font-size: 18px;
        color: #2c2c2ca1;
        width: 200px;
        font-weight: normal;
        font-style: normal;
      }
      .row div {
        text-align: left;
        margin-top: 40px;
    
      }
      .row {
        text-decoration: none;
        color: inherit;
        grid-template-columns: 10fr 200fr;
        font-size: 15px;
        display: block;
        font-weight: lighter;
        padding: auto;
        margin: 0 auto;
        line-height: 25px;
        display: grid;

        flex-wrap: wrap;
        justify-content: space-between;
        text-align: left;
      }
      .row2 {
        text-decoration: none;
        color: inherit;
        grid-template-rows: 50px 50px 50px;
        font-size: 13px;
        display: block;
        font-weight: lighter;
        float: left;
        margin: 0 auto;
        margin: 50px auto;
        line-height: 15px;
        display: grid;

        row-gap: 0px;
        flex-wrap: wrap;
        justify-content: space-between;
        text-align: left;
      }

      body {
        background-color: #ffffff;
        font-size: 10px;
        color: #5e5e5e;
        display: flex;
      
        font-family: "InfinitySans-RegularA1";
   
        font-weight: normal;
        font-style: normal;
      
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

      h1 {
        font-family: "MuseoModerno", cursive;
        text-align: center;
        font-size: 60px;
        color: #bf09fb;
      }

      /* 장바구니+구매하기 버튼 설정*/
      .container-fluid {
        width: 100%;
        /* 사이즈 fixed */
        max-width: 350px;
        min-width: 300px;
        padding: 0px;
        margin: auto;
        display: block;
      }




      /* 탭 컬러 변경 */
      .nav-link {
        color: #ad67ea;
      }

      /*탭 상품 성명 제목 글씨 크기*/
      h4 {
        font-size: 18px;
        font-weight: 500;
      }

      /* collapse info */
      .card-header {
        padding: 0;
        background-color: #ffffff;
      }

      .btn {
        color: #5e5e5e;
      }

      /* 여백 킻 크기 확인 */
      .z {
        border: solid salmon;
      }
      .day{
       
        text-decoration: none;
        color: inherit;
        grid-template-columns: 1fr 1fr;
        font-size: 15px;
        display: block;
        font-weight: lighter;
        padding: auto;
        margin: 0 auto;
       
        display: grid;
        column-gap: 0px;

        flex-wrap: wrap;
        justify-content: space-between;
        text-align: left;
      }

      .re-btn {
        box-shadow:inset 0px 1px 0px 0px #efdcfb;
        background:linear-gradient(to bottom, #a657e6 5%, #bc80ea 100%);
        background-color:#a657e6;
        border-radius:6px;
        border:1px solid #c584f3;
        display:inline-block;
        cursor:pointer;
        color:#ffffff;
        font-family:Arial;
        font-size:15px;
        font-weight:bold;
        padding:6px 24px;
        text-decoration:none;
        text-shadow:0px 1px 0px #9752cc;
        width:100%;
        text-align: center;
        margin-left: 15px;
        }
      
        .re-btn:active {
            position:relative;
            top:1px;
        }

        /*별점*/
        h4{
            text-align: center;
        }
        .star {
            position: relative;
            font-size: 1.5rem;
            text-align: center;
            margin-left: 10px;
            color: #ddd;
            }
  
  
            .star input {
                
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            opacity: 0;
            cursor: pointer;
            }
  
        .star span {
            width: 0;
            position: absolute; 
            left: 0;
            color: rgb(195, 120, 224);
            overflow: hidden;
            pointer-events: none;
            }

            /*구매 만족도 표*/
            .review-check{
              padding-bottom: 4px;
              border-bottom: 1px solid #f1f1f1;
            }
            .n-radio-tab{
              padding-right: 1px;
            }
            .review-check li{
              padding:  16px 0 16px 153px;
              position: relative;
            }
            .review-check .label{
              position: absolute;
              left: 0;
              top: 20px;
            }
            .n-radio-tab input{
              display: block;
              position: absolute;
              overflow: hidden;
              width: 1px;
              height: 1px;
              margin: -1px;
              clip: rect(0 0 0 0);
            }
            input[type="radio"]{
              margin: 0;
              vertical-align: middle;
            }
            input[type="checkbox"]{
              box-sizing: border-box;
              padding: 0;
            }
            .review-check .n-radio-tab input + label{
              width: 59px;
              height: 26px;
              padding-top: 2px;
              margin-right: 0;
              line-height: 24px;
              border: 1px solid #ebebeb;
              border-right: 0;
              color: #a5a5a5;
              font-size: 12px;
            }
            .n-radio-tab input + label{
              display: inline-block;
              float: left;
              text-align: center;
              vertical-align: top;
              position: relative;
              cursor: pointer;
            }
            .n-radio-tab input:nth-child(4) + label {
            border-radius: 4px 0 0 4px;
             }
             .review-check .n-radio-tab input + label:last-child {
               border-right: 1px solid #ebebeb;
               border-radius: 0 4px 4px 0;
             }
             .review-check .n-radio-tab input:checked + label:last-child{
              border-right: 1px solid #0078ff
             }

             .review-check .n-radio-tab input:checked + label{
              border: 1px solid #0078ff;
              color: #fff;
              background: #0078ff;
              border-right: 0;
             }
             .n-radio-tab:after {
              content: "";
              display: block;
              clear: both;
            }

            .review-evaluation {
            display: flex;
            padding: 10px 0 0 53px;
            }
            .review-evaluation__list {
            display: flex;
            width: auto;
            justify-content: flex-start;
            padding: 10px;
            margin-left: -97px;
            }
            ol,li{
                list-style: none;
            }
            .review-evaluation__item {
            width: 100px;
            display: flex;
            flex-direction: row;
            box-sizing: border-box;
            height: 25px;
            padding: 0 8px;
            border: 1px solid #eee;
            border-radius: 20px;
            font-size: 12px;
            color: #aaa;
            align-items: center;
            }
            .review-evaluation__item>span {
            padding-left: 5px;
            color: #595959;
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
          <h3 style="margin-right: 50px; margin-top: 0px">구매 후기</h3>
        </div>
      </div>

           <!--구매 날짜-->
           <div class="day" >
            <div style="font-size: 15px; margin-left: 10px; margin-top: 20px;">구매일</div>
            <div style="font-size: 15px; margin-left: 10px; margin-top: 20px;">2022-04-13</div>
          </div>
        
      <!-- 상품 이미지 (썸네일)-->
      <div class="row">
        <div class="detail_productname">
          <div class="one">
            <!-- 예시 이미지 -->
            <img
              src=" resources/images/2.jpg"
              style="
                width: 120px;
                height: 120px;
                padding: 0px;
           
              "
            />
          </div>
        </div>
        <div class="row2">
          <div class="tow">브랜드명</div>
          <!--브랜드명-->
          <div class="three">상품명</div>
          <!--상품명-->
          <div class="four">사이즈</div>
          <!--사이즈-->
        </div>
        
      </div>
     
    <span class="star">
        
        ★★★★★
        <span>★★★★★</span>
        <input type="range" name="review_score" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
    </span>
 
    <!--별점 채우기-->
    <script>
         const drawStar = (target) => {
            document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
        }
    </script>
    <br>
    <!--이미지 넣는구간-->
    <img src=" resources/images/2.jpg" style="width: 200px; height: 200px;">
    <p style="font-size: 15px; margin-top: 20px;">구매후기 작성한 내용넣는구간</p>
    <div class="review-evaluation">
        <ul class="review-evaluation__list">
            <li class="review-evaluation__item">
                사이즈
                <span>작아요</span>
            </li>
            <li class="review-evaluation__item">
                밝기
                <span>보통이에요</span>
            </li>
            <li class="review-evaluation__item">
                색감
                <span>보통이에요</span>
            </li>
            <li class="review-evaluation__item">
                두께감
                <span>얇아요</span>
            </li>
        </ul>
    </div>
     <hr class="hrbar" style="margin-block-start: 20px; border: solid 10px #999;" /> 

  





   
 

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



    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script> -->
  </body>
</html>
