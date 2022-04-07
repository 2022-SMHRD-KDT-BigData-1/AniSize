<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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