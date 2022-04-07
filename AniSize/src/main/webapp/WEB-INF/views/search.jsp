<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>aniSize</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Google Fonts : MuseoModerno 영어-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
        rel="stylesheet">
    <!-- Google Fonts : MuseoModerno 한글-->
    <link href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap" rel="stylesheet">

    <!-- Google Icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Bootstrap Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

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

        h2 {
            font-family: 'Hahmlet', serif;
            font-size: 20px;
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
            color: #ffffff;
            font-size: 40px;
        }

        /* 추천상품 */
        p {
            text-align: left;
            font-size: 12px;
        }

        .p {
            border: solid;
            color: salmon;
        }
    </style>
</head>

<body>

    <div class="container">

        <br>
        <!-- 검색 -->
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline" type="submit"
                style="color: #ffffff; background-color: #5e5e5e;">Search</button>
        </form>
        <br><br>
        <h2>인기 검색어</h2>
        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e; margin: 2px;">방수기능</button>
        <!-- 반복 예시 데이터 연결 후 삭제 -->   
        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e; margin: 2px;">확장기능</button>
        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e; margin: 2px;">캠핑</button>
        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e; margin: 2px;">하네스</button>
        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e; margin: 2px; ">산책</button>

        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e;  margin: 2px;">산책</button>
        <button class="btn rounded-pill btn-outline-default btn-sm" type="submit"
            style="color: #ffffff; background-color: #5e5e5e; margin: 2px; ">산책나갈때 입기 좋은 강아지옷</button>

        <br><br>
        <hr>
        <br>
        <h2>추천 상품</h2>
        <!-- row 안에 이미지 2개식 반복 -->
        <!-- text-decoration: none; /* 링크의 밑줄 제거 */ color: inherit; /* 링크의 색상 제거 */-->
        <div class="row">
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>

            </div>
            <div class="col-6">
                <a class="namePrice" href="#" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            
            
            <!-- 반복 예시 데이터 연결 후 삭제 -->
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>

            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            <div class="col-6">
                <a class="namePrice" href="https://www.naver.com/" style="text-decoration: none; color: inherit;">
                    <img src="cat_sample.jpg" class="img-thumbnail"><br><br>
                    <p>오드펫 시워쏘쿨 베스트 <br> 24900</p>
                </a>
            </div>
            <!-- 여기까지 삭제 -->

        </div>




        <!-- 메뉴바 + 카데고리 -->
        <nav class="navbar fixed-bottom" style="margin: 0px; padding: 0px; background-color: #5e5e5e; color: #ffffff;">
            <div class="container-fluid">

                <a class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                    aria-controls="offcanvasNavbar" style="margin: 0px; padding: 0px;">
                    <i class="bi bi-card-list"></i>
                </a>

                <a class="navbar-brand" href="#"><i class="bi bi-search"></i></a>
                <a class="navbar-brand" href="#"><i class="bi bi-house-door"></i></a>
                <a class="navbar-brand" href="#"><i class="bi bi-cart"></i></a>
                <a class="navbar-brand" href="#"><i class="bi bi-person"></i></a>

                <!-- 카테고리 안  -->
                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel" style="max-width: 250px;">

                    <div class="offcanvas-header">
                        <h3 class="offcanvas-title" id="offcanvasNavbarLabel">aniSize</h3>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body" style="font-family: 'Hahmlet', serif; font-size: 15px;">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" style="color: black;" href="#">베스트</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color: black;" href="#">반려동물 치수재기</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false" style="color: black;"> 의류
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown"
                                    style="font-size: 12px;">
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

                                    <!-- <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                                </ul>
                            </li>
                        </ul>

                    </div>
                </div> <!-- 카테고리 -->

            </div>
        </nav> <!-- 메뉴바 -->







        <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>