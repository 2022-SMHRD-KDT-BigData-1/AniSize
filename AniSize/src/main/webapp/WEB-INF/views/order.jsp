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
            padding: 0 0 0 0;
            /* border-color: #ad67ea;
            width: 160px;
            height: 28px;
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center; */

        }
        
        /* 결제하기 버튼 설정*/
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
                <h1 class="">주문/결제하기</h1>

            </div>
        </div>

        <i class="bi bi-credit-card-2-back"
            style="color: #ad67ea; font-size: 50px;  display: flex; justify-content: center; align-items: center;"></i><br>

        <!-- 배송지 정보 -->
        <!-- 탭 이름 -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#address"
                    style="font-size: 14px; width: 165px; text-align: center;">
                    기존 배송지</a>
            </li>
            <li class=" nav-item">
                <a class="nav-link" data-toggle="tab" href="#new_address"
                    style="font-size: 14px; width: 165px; text-align: center;">
                    신규 배송지</a>
            </li>

        </ul>
        <div class="tab-content">
            <!-- 기존 배송지 설명 탭 -->
            <div id="address" class="container tab-pane active" style="font-size: 12px; margin-bottom: 10px;"><br>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        <!-- 이름 -->
                        <h4>홍길동</h4>
                        <!-- 주소 -->
                        <p style="font-size: 16px;">서울시..........</p>
                        <!-- 연락처 -->
                        <p style="font-size: 16px;">010-123-123</p>
                    </label>

                </div>
                <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                    <option selected>배송시 요청사항을 선택해 주세요</option>
                    <option value="1">부재시 문앞에 놓아주세요</option>
                    <option value="2">부재시 경비실에 맡겨주세요</option>
                    <option value="3">부재시 전화 또는 문자 주세요</option>
                    <option value="4">택배함에 넣어 주세요</option>
                    <option value="5">파손위험상품입니다.배송시 주의해주세요</option>
                    <option value="6">배송전에 연락주세요</option>
                    <option value="7">문앞에 두세요</option>
                </select>
                <input type="text" class="form-control my-2" id=" " placeholder="직접입력" name="delivery">

            </div>


            <!-- 신규배송지 입력 탭-->

            <div id="new_address" class="container tab-pane fade" style="font-size: 12px; margin-bottom: 20px;">
                <br>
                <input type="text" class="form-control my-2" id=" " placeholder="배송지명" name="">
                <input type="text" class="form-control my-2" id=" " placeholder="수령인" name="">
                <input type="text" class="form-control my-2" id=" " placeholder="배송지" name="">
                <input type="text" class="form-control my-2" id=" " placeholder="연락처" name="">
                <select class="form-select form-select-sm my-2" aria-label=".form-select-sm example">
                    <option selected>배송시 요청사항을 선택해 주세요</option>
                    <option value="1">부재시 문앞에 놓아주세요</option>
                    <option value="2">부재시 경비실에 맡겨주세요</option>
                    <option value="3">부재시 전화 또는 문자 주세요</option>
                    <option value="4">택배함에 넣어 주세요</option>
                    <option value="5">파손위험상품입니다.배송시 주의해주세요</option>
                    <option value="6">배송전에 연락주세요</option>
                    <option value="7">문앞에 두세요</option>
                </select>
                <input type="text" class="form-control" id=" " placeholder="직접입력" name="delivery">

            </div>
        </div>






        <!-- 선택한 상품 정보 -->
        <div class="selected_Product">
            <hr style="display:flex; max-width: 330px; border-width: 5px;">


            <div class="row">
                <span style="font-weight: 600;font-size: 18px">주문상품 정보</span>
            </div>
            <hr style="display:flex; max-width: 330px; margin-top: 3px; ">
            <div class="row">
                <div class="col-5">
                    <!-- 상품 이미지 -->
                    <img src="3.jpg" class="rounded" style="display:flex; max-width: 120px; max-height: 120px;">

                </div>

                <div class="col-7 " style="font-size: 14px;">
                    <p style="font-weight: 600;font-size: 13px">상품명 오드펫 시워쏘쿨 베스트</p>

                    <!-- 옵션 선택시 후, 하단에 선택한 옵션 보여줌-->
                    <div class="selected_option" style="font-size: 14px;">

                        <span>컬러 블루 / </span>
                        <span>사이즈 S</span><br>
                        <span>수량 2 개</span><br>

                        <p style="text-align: end;">가격 19,900원</p>
                        <p style="text-align: end; font-weight: 700">총 39,800원</p>

                    </div>
                </div>
            </div>
            <hr style="display:flex; max-width: 330px; margin-top: 15x; margin-bottom: 20px; border-width: 5px;">

        </div>

        <span style="font-weight: 600;font-size: 18px">결제방법</span>
        <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 20px; ">

        <div class="row">

            <div class="card_info" style="display: flex; justify-content: end; align-items: end;">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal"
                    style="color: #5e5e5e;">
                    신용/체크카드 안내&nbsp;<i class="bi bi-info-circle-fill"></i>
                </button>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">

                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content" style="width: 320px;margin-left: 18px;">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">신용/체크카드 안내</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>신용/체크카드</p>
                                <span>- MAC 환경에서도 신용카드 결제가 가능합니다. (ISP 결제 제외)</span><br>
                                <span>- 국내 모든 카드 사용이 가능하며 해외에서 발행된 카드는 이용하실 수 없습니다. (해외배송은 불가능합니다)</span><br>
                                <span>- 금요일 오후 6시 이후부터 일요일 주문은 결제 완료 후 취소 요청 시 고객센터 > 주문취소를 이용하시면
                                    됩니다.</span><br>
                                <span>- 현대카드 결제시 모든 결제 금액에 2% 청구할인, 20% M포인트 사용 혜택이 제공됩니다.</span><br>
                                <span>- 현대카드 결제시 M포인트 사용을 안 할 경우 결제 시 카드 포인트 사용 팝업창에서 사용안함을 선택하시면
                                    됩니다.</span><br>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <!-- 카드선택 -->
            <div class="payment">

                <div class="btn-group" role="group" aria-label="Basic radio toggle button group"
                    style="width: 330px; height: 70px; display: flex; justify-content: center; align-items:center; margin-bottom: 8px;">

                    <div class="btn-group" role="group" style="background-color: #fff; color: #5e5e5e;">
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"
                            checked="">

                        <button id="btnGroupDrop1" type="button" class="btn dropdown-toggle " data-bs-toggle="dropdown"
                            aria-expanded="false"
                            style="width: 170px; height: 26px; margin-bottom: 8px; border-color: #5e5e5e;">
                            <label class="btn" for="btnradio1">신용/체크카드</label>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">BC</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">현대</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">삼성</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">신한</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">롯데</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">농협NH</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">하나</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">우리</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">씨티</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">전북</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">카카오뱅크</a>
                            </li>
                        </ul>
                    </div>

                    <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"
                        style="margin-bottom: 0px;">
                    <label class="btn btn-outline-primary" for="btnradio2" data-bs-toggle="modal"
                        data-bs-target="#cashModal" style="border-color: #5e5e5e">무통장입금</label>


                    <style>
                        .btn-check:active+.btn-outline-primary,
                        .btn-check:checked+.btn-outline-primary,
                        .btn-outline-primary.active,
                        .btn-outline-primary.dropdown-toggle.show,
                        .btn-outline-primary:active {
                            color: #fff;
                            background-color: #ad67ea;
                            border-color: #c370de;
                        }
                    </style>







                    <!-- 신용카드 선택 후 모달창  -->
                    <div class="card_info" style="display: flex; justify-content: end; align-items: end;">

                        <!-- Modal -->
                        <div class="modal fade" id="payModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">

                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content" style="width: 320px;margin-left: 18px;">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">신용/체크카드 결제</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <span>-일반 카드 결제</span><br>
                                        <span>-앱카드 결제 서비스는 준비중입니다.</span><br>
                                        <span>-SMS 결제 서비스는 준비중입니다.</span><br>
                                        <span>-간편 결제 서비스는 준비중입니다.</span><br>

                                        <select class="form-select form-select-sm my-2"
                                            aria-label=".form-select-sm example">
                                            <option selected>개인/법인 선택</option>
                                            <option value="1">개인</option>
                                            <option value="2">법인</option>

                                        </select>

                                        <select class="form-select form-select-sm my-2"
                                            aria-label=".form-select-sm example">
                                            <option selected>할부 선택</option>
                                            <option value="1">일시불</option>
                                            <option value="2">2개월</option>
                                            <option value="3">3개월</option>
                                            <option value="4">4개월</option>
                                            <option value="5">5개월</option>
                                            <option value="6">6개월</option>
                                            <option value="7">7개월</option>
                                            <option value="8">8개월</option>
                                            <option value="9">9개월</option>
                                            <option value="10">10개월</option>
                                            <option value="11">11개월</option>
                                            <option value="12">12개월</option>
                                        </select>

                                        <div class="modal-footer" style="padding-left: 0px; padding-right: 0px;">

                                            <button type="button" class="btn-sm btn secondary" data-bs-dismiss="modal"
                                                style="color: #ad67ea; border-color: #ad67ea; width: 150px; height: 35px;">
                                                결제 다시 선택하기</button>
                                            <button type="button" class="btn btn-sm" data-bs-dismiss="modal"
                                                style="background-color: #ad67ea; color: #ffffff;width: 120px; height: 35px; ">결제진행하기</button>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div><!-- 신용카드 선택 후 모달창  -->




                    <!-- 무통장 입금 선택 후 모달창  -->
                    <div class="cash_info" style="display: flex; justify-content: end; align-items: end;">

                        <!-- Modal -->
                        <div class="modal fade" id="cashModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">

                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content" style="width: 320px;margin-left: 18px;">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">무통장 입금 결제</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <span>-안전하고 편리한 결제입니다.</span><br>


                                        <select class="form-select form-select-sm my-2"
                                            aria-label=".form-select-sm example">
                                            <option selected>은행 선택</option>
                                            <option value="1">광주</option>
                                            <option value="2">하나</option>
                                            <option value="3">...</option>
                                        </select>

                                        <input type="text" class="form-control my-2" id=" " placeholder="입금자명" name="">
                                        <span>-입금 계좌 번호는 주문 완료 페이지에서 확인 됩니다.</span><br>
                                        <span>-입금 기한</span><br>

                                        <div class="modal-footer" style="padding-left: 0px; padding-right: 0px;">

                                            <button type="button" class="btn-sm btn secondary" data-bs-dismiss="modal"
                                                style="color: #ad67ea; border-color: #ad67ea; width: 150px; height: 35px;">
                                                결제 다시 선택하기</button>
                                            <button type="button" class="btn btn-sm" data-bs-dismiss="modal"
                                                style="background-color: #ad67ea; color: #ffffff;width: 120px; height: 35px; ">결제진행하기</button>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div><!-- 무통장 입금 선택 후 모달창  -->
                </div>

                <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 30px; border-width: 5px;">


                <div class="row">
                    <span style="font-weight: 600;font-size: 18px">결제금액</span>
                </div>
                <hr style="display:flex; max-width: 330px; margin-top: 3px; margin-bottom: 5px;">

                <style>
                    th {
                        width: 120px;
                        font-size: 14px;
                        color: #5e5e5e;
                        font-weight: 600;
                    }

                    td {
                        font-size: 14px;
                        color: #5e5e5e;
                        text-align: end;
                        font-weight: 500;
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
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">총 상품금액</th>
                                    <td>152,150원</td>
                                </tr>
                                <tr>
                                    <th scope="row">쿠폰 사용</th>
                                    <td>- 0원</td>
                                </tr>
                                <tr>
                                    <th scope="row">마일리지 사용</th>
                                    <td>- 0P</td>
                                </tr>
                                <tr>
                                    <th scope="row">배송비</th>
                                    <td>+ 3,000원</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="font-size: 18px; font-weight: 700;">총 결제금액</th>
                                    <td style="color: #d700d7;font-size: 20px; font-weight: 700;">155,150 원</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>


                <!-- 하단 결제하기 버튼  -->
                 <nav class="navbar fixed-bottom" style="margin: 0px; padding: 0px; background-color:#c370de ;
                color:#ffffff; border-top: 0.1px solid #ad67ea;">
                    <div class="container-fluid">
                        <button type="button fixed-bottom" class="btn" onclick="location.href='#orderOK.html' "
                            style="width: 375px;height: 40px; display: flex; justify-content: center; align-items: center; background:#c370de; color: #ffffff;">
                            결제하기
                        </button>
                    </div>

                </nav>
                
                

                <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 5px; border-width: 5px;">

                <br>
                <div style="font-size: 12px;">
                    <p>
                        이용약관 및 개인정보 제3자 제공사항에 대해<br>
                        확인하였으며 결제에 동의합니다.
                    </p>
                    <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 5px;">
                    <p>
                        개인정보 수집/이용 동의 보기<br>
                        개인정보 제3자 제공 동의 보기<br>
                        결제대행 서비스 이용약관 (주)KG이니시스, (주)토스페이먼츠
                    </p>


                </div>
                <br><br><br><br>

            </div>





        </div>
    </div>
    <!--/ container  -->


    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>







</body>

</html>