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
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap" rel="stylesheet">
    <!-- Google Fonts : MuseoModerno 한글-->
    <link href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap" rel="stylesheet">

    <!-- Google Icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Bootstrap Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
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
            src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        p {
            margin-bottom: 6px;
        }

        .btn {
            color: #ad67ea;
            border-color: #ad67ea;
            width: 160px;
            height: 28px;
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center;

        }

        /* 여백 킻 크기 확인 */
        .z {
            border: solid salmon;

        }
    </style>
</head>

<body>

    <div class="container">
        <!-- 뒤로 가기 + 로고 -->
        <div class="row">
            <div class="col-1">
                <a class="navbar-brand" href="javascript:history.back()">
                    <i class="bi bi-chevron-left" style=" color: #5e5e5e; text-align: start; font-size: 20px; ">
                    </i></a>
            </div>
            <div class="col-11" style="display: flex; justify-content: center; align-items: center;">

                <!-- My Order List -->
                <!-- <img src="logo_product.jpg" style="width: 200px; margin-left: 50px; margin-bottom: 30px;"> -->
                <h1 class="">구매 상세내역</h1>

            </div>
        </div>

        <i class="bi bi-receipt-cutoff"
            style="color: #ad67ea; font-size: 50px;  display: flex; justify-content: center; align-items: center;"></i><br>



        <!-- 구매 상세내역 -->

        <div class="row" style="margin-bottom: 12px; ">

            <span style="font-weight: 600;font-size: 18px">주문 상품 정보</span>
            <hr style="display:flex; max-width: 330px;">

            <div class="col-5">
                <!-- 상품 이미지 -->
                <img src="3.jpg" class="rounded" style="display:flex; max-width: 120px; max-height: 120px;">

            </div>


            <div class="col-7 " style="font-size: 14px;">

                <p style="font-weight: 600;font-size: 13px">상품명 오드펫 시워쏘쿨 베스트</p>

                <p style="color: #828282; font-size: 10px;">컬러 옐로우 &nbsp;|&nbsp; 사이즈 S</p>
                <p style="color: #828282; font-size: 10px;">가격 19,900 &nbsp;|&nbsp; 수량 1개</p>

                <p style="text-align: end; font-weight: 600;">총 39,800원</p>

            </div>

            <div class="row" style="margin-top: 20px; ">

                <!-- <hr style="display:flex; max-width: 330px; "> -->
                <div class="col-6">
                    <button type="button" class="btn btn secondary btn-sm">
                        교환 신청</button>
                </div>
                <div class="col-6">
                    <button type="button" class="btn btn secondary btn-sm">
                        반품 신청</button>
                </div>
            </div>

        </div>

        <style>
            th {
                width: 120px;
                font-size: 14px;
                color: #5e5e5e;
            }

            td {
                font-size: 12px;
                color: #5e5e5e;
                text-align: end;
                /* text-align: start; */
            }

            table {
                max-width: 320px;
                padding: 0 0 0 0;
            }

            hr.l {
                display: flex;
                max-width: 320px;
            }

            .pm {
                padding: 0 0 0 0;
                margin-top: 20px;
                margin-left: 8px;
                margin-right: 8px;
                width: 330px;
            }
        </style>
        <div class="row" style="margin-bottom: 12px; ">

            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">구매자 정보</span>
                <hr class="l">
                <table class="table">

                    <tbody>
                        <tr>
                            <th scope="row">주문자</th>
                            <td>홍길동</td>
                        </tr>
                        <tr>
                            <th scope="row">이메일</th>
                            <td>123@123</td>

                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td>123-123-123</td>
                        </tr>
                        <tr>
                            <th scope="row">구매일자</th>
                            <td>2022-04-13</td>
                        </tr>
                    </tbody>
                </table>

            </div>


            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">결제 정보</span>
                <hr class="l">
                <table class="table">

                    <tbody>
                        <tr>
                            <th scope="row">주문금액<br>
                                상품금액<br>
                                배송비

                            </th>
                            <td>10,000 원<br>
                                10,000 원<br>
                                0 원

                            </td>
                        </tr>
                        <tr>
                            <th scope="row">할인금액<br>
                                쿠폰할인
                            </th>
                            <td>(-)3,000 원<br>
                                3,000 원
                            </td>

                        </tr>
                        <tr>
                            <th scope="row">결제금액<br>
                                결제 수단<br>
                                카드사
                            </th>
                            <td> 10,000 원<br>
                                카드결제<br>
                                현대카드
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>

            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">배송지 정보</span>
                <hr class="l">
                <table class="table">

                    <tbody>
                        <tr>
                            <th scope="row">받는사람</th>
                            <td>홍길동</td>
                        </tr>
                        <tr>
                            <th scope="row">연락처</th>
                            <td>123-123-123</td>

                        </tr>
                        <tr>
                            <th scope="row">주소</th>
                            <td>서울시....</td>
                        </tr>
                        <th scope="row">배송요청사항</th>
                        <td>경비실에 두세요</td>
                    </tbody>
                </table>

            </div>

            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">취소/환불정보</span>
                <hr class="l">
                <p>- 반품상품 수거완료 이후 환불금액이 확정됩니다.</p>
                <p>- 한 주문에서 여러 건의 취소/반품이 진행될 경우 처리 순으로 환불이 진행되므로 접수 시 환불예정금액과 실제 환불금액은 달라질 수 있습니다.</p>
            </div>
        </div>

    </div><!-- 구매 상세내역 -->










    <!--/ container  -->
    </div>
























    <!-- &nbsp;공백 넣기(space) -->
    <!-- 중앙정렬  display: flex; justify-content: center; align-items: center; -->





    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"></script> -->






</body>

</html>