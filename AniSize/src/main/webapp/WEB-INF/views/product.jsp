<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

        h1 {
            font-family: 'MuseoModerno', cursive;
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

        /* 상품 상세 내역 이미지 크기 설정 */
        .product_detail_img {
            max-width: 304px;
            min-width: 300px;
        }

        /* 리뷰 이미지 크기 설정 */
        .review_img {
            max-width: 304px;
            min-width: 300px;
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
    </style>
</head>

<body>

    <div class="container">
        <!-- 뒤로 가기 + 로고 -->
        <div class="row">
            <div class="col-1">
                <a class="navbar-brand" href="javascript:history.back()">
                    <i class="bi bi-chevron-left" style=" color: #5e5e5e; text-align: start; font-size: 40px; ">
                    </i></a>
            </div>
            <div class="col-11">
                <img src="images/logo_product.jpg" style="width: 200px; margin-left: 50px; margin-bottom: 30px;">

            </div>
        </div>

        <!-- 상품 이미지 (썸네일)-->
        <div class="row">
            <!-- 예시 이미지 -->
            <img src="images/product/${product.pd_num}/thumnail.jpg"
                style="width: 370px; padding: 0px; display: flex; justify-content: center; align-items: center; ">
            <br>
        </div>

        <!-- 상품명 정보 -->
        <br>
        <button type="button" class="btn btn-sm btn-outline rounded-pill btn-outline-default"
            style=" border-color: #c370de; color: #c370de; background: #ffffff; height: 30px;">${product.brand}</button>

        <br><br>
        <p style="text-align: start; font-size: 25px; margin-bottom: 0px;">${product.pd_name}</p>
        <p style="text-align: end; font-size: 20px; margin-bottom: 8px;">${product.pd_price}원</p>


        <span style="text-align: start; font-size: 15px;">★★★★★</span>
        <span style="text-align: start; font-size: 15px;">${product.pd_avg_score} / 5.0 점 </span>
        <a href="#review_title" style="font-size: 15px; padding-left: 100px; color:#5e5e5e;">${countReview}개 리뷰</a>

        <hr>

        <!-- 상품 설명 -->
        <!-- 탭 이름 -->
        <ul class="nav nav-tabs" role="tablist" style="border: none;">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#detail"
                    style="border: none;font-size: 20px; padding-left: 50px;">Detail</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#review" id="review_title"
                    style="border: none;font-size: 20px; padding-left: 110px;">Review</a>
            </li>

        </ul>

        <!-- 탭 안 내용 -->
        <div class="tab-content">
            <!-- detail 상품 설명 -->
            <div id="detail" class="container tab-pane active" style="font-size: 15px; margin-bottom: 50px;"><br>
                <h4>상품 설명</h4>
                <p>--------- </p>

				<c:forEach begin="1" end="${product.pd_img_count}" varStatus="status">
	                <img src="images/product/${product.pd_num}/${status.index}.jpg" alt="" class="product_detail_img">
				</c:forEach>
                <img src="1.jpg" alt="" class="product_detail_img">
<!--                 <h4>컬러 정보</h4>
                <h4>사이즈 정보</h4>
                <img src="size.jpg" alt="" class="product_detail_img"> -->

                <br><br><br>

                <!-- info -->
                <div id="accordion" style="padding: 0;">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <a class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                                    aria-expanded="true" aria-controls="collapseOne">
                                    상품 주의 사항
                                </a>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                            data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - 제품의 특성상 외부마찰이나 날카로운 물체에 의해 손상될 수 있으므로 각별한 주의 부탁드립이다.<br>
                                - 세탁시 가급적 손세탁을 하시거나 세탁망을 이용하여 단독세탁 하시기를 권장합니다.<br>
                                - 장시간 물에 담가 두거나 뜨거운 물에 담가 두지 마시기 바랍니다.<br>
                                - 구김, 뒤틀림이 생길 수 있으니 형태를 정돈한 후 건조해주시기 바랍니다.<br>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                                    aria-expanded="false" aria-controls="collapseTwo">
                                    결제 안내
                                </a>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - 주 결제는 주문 후 48시간 이내에 해주셔야 배송이 가능합니다<br>
                                - 고객 결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다<br>
                                - 확인과정에서 도난 카드의 사용이나 타인 명의의 주문 등, 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소 할 수 있습니다<br>
                                - 무통장 입금은 상품 구매대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다<br>
                                - 주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다<br>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
                                    aria-expanded="false" aria-controls="collapseThree">
                                    브랜드 및 판매자 정보
                                </a>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                            data-parent="#accordion">
                            <div class="card-body">
                                <table class="table" style="font-size: 8px;">

                                    <tbody>
                                        <tr>
                                            <th scope="row">상호명</th>
                                            <td>코코마펫</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">사업자등록번호</th>
                                            <td>135-31-87893</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">통신판매업번호</th>
                                            <td>제-2014-수원영통-0300호</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">대표자</th>
                                            <td>장미자</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">사업자 소재지</th>
                                            <td>16705 경기도 수원시 영통구 반달로 90 (영통동) 2F</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">연락처</th>
                                            <td>031-204-0407</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">메일</th>
                                            <td>cocomapet@naver.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
                                    aria-expanded="false" aria-controls="collapseThree">
                                    배송정보
                                </a>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                            data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - 업체발송은 상품설명에 별도로 기입된 브랜드 알림 배송공지 기준으로 출고되고 브랜드마다 개별 배송비가 부여됩니다.<br>
                                - 자체발송은 오후 2시까지 결제확인된 주문은 당일 출고되고 5만원 이상 주문은 무료배송, 5만원 미만은 3,000원의 배송비가
                                추가됩니다.<br>
                                - 상품설명의 제작기간을 숙지해주시기 바랍니다.<br>
                                - 일부 상품, 제주도를 포함한 도서산간 지역은 추가배송비 입금요청이 있을 수 있습니다.<br>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFour">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"
                                    aria-expanded="false" aria-controls="collapseFour">
                                    교환, 환불, A/S 안내
                                </a>
                            </h5>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - 상품 수령일로부터 7일 이내 반품 / 환불 가능합니다.<br>
                                - 변심 반품의 경우 왕복배송비를 차감한 금액이 환불되며, 제품 및 포장 상태가 재판매 가능하여야 합니다.<br>
                                - 동일상품 또는 동일상품 내 추가금액이 없는 옵션만 교환가능합니다.<br>
                                - 상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.<br>
                                - 출고 이후 환불요청 시 상품 회수 후 처리됩니다.<br>
                                - 주얼리 등 주문제작상품 / 카메라 / 밀봉포장상품 등은 변심에 따른 반품 / 환불이 불가합니다.<br>
                                - 일부 완제품으로 수입된 상품의 경우 A/S가 불가합니다.<br>
                                - 특정브랜드의 상품설명에 별도로 기입된 교환 / 환불 / AS 기준이 우선합니다.<br>
                                - 구매자가 미성년자인 경우에는 상품 구입 시 법정대리인이 동의하지 아니하면 미성년자 본인 또는 법정대리인이 구매취소 할 수 있습니다.<br>
                            </div>
                        </div>
                    </div>


                </div>


                <br><br><br><br><br><br>

            </div>




            <!-- review 상품 리뷰 -->
            <div id="review" class="container tab-pane fade" style="font-size: 15px; margin-bottom: 50px;"><br>
                <h3>Review</h3>
                <span>닉네임</span><span style="padding-left: 130px;">구매일 ${review.review_date}</span>
                <img src="3.jpg" alt="" class="review_img">
                <span style="text-align: start; font-size: 15px;">★★★★★</span>
                <span> ${review.review_score}</span>
                <span>/ 5.0 점</span><br>
                <span>${review.review_content}

                </span>

            </div>

        </div>
    </div>



    <!-- 장바구니는 버튼 컬러 흰색, 구매하기 버튼 컬러 채우기 -->

    <!--  장바구니 + 구매하기 하단 버튼-->

    <div class="display: flex; justify-content: center; align-items: center;">
        <nav class="navbar fixed-bottom" style="margin: 0px; padding: 0px; background-color:#c370de ;
                color:#ffffff; border-top: 0.1px solid #ad67ea;">
            <!-- Button trigger modal -->
            <button type="button fixed-bottom" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal"
                style="width: 375px; display: flex; justify-content: center; align-items: center; background:#c370de; color: #ffffff;">
                구매하기
            </button>
        </nav>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog fixed-bottom" style="width: 375px; margin:0px">

                <div class="modal-content">
                    <div class="modal-header"
                        style="display: flex; justify-content: center; align-items: center; padding: 0 0 0 0; ">
                        <!-- <h5 class="modal-title" id="exampleModalLabel">Modal title</h5> -->
                        <button type="button" class="btn" data-bs-dismiss="modal" aria-label="Close"
                            style="padding: 0 0 0 0;">
                            <!-- 옵션 닫기 버튼 -->
                            <i class="bi bi-chevron-down" style="font-size: 30px; "></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="option1" style="padding-bottom: 10px;">
						<c:choose>
						<c:when test="${!empty stkOptionList}">
							
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example">
	                            <option selected>[필수] 색상 선택</option>
	                            <c:forEach items="${stkOptionList}" var="option">
	                          	  <option value="${option}" onclick="optionClick()">${option}</option>
	                            </c:forEach>
                            </select>
                        </div>

                        <div class="opton2">
                            <!-- 사이즈 옵션에  <span>--------------------------------[ 추천 사이즈 ]</span> 표시 -->
                            <!-- 재고 5개 미만일 시 수량 보여줌 <span>-----------------------[ 3개 남음 ]</span>  -->
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="optionSize">
                                <option selected>[필수] 사이즈 선택</option>
     <!--                            <option value="s">S</option>
                                <span>-----------------------[ 3개 남음 ]</span>
                                <option value="m">M
                                    <span>-----------------------[ 추천 사이즈 ]</span>
                                </option>
                                <option value="l">L</option>
                                <option value="xl">xL</option>
                                <option value="2xl">2xL</option> -->
                                <!-- <option value=""></option> -->
                            </select>
                        </div>
                        </c:when>
						</c:choose>

                        <!-- 옵션 선택시 후, 하단에 선택한 옵션 보여줌-->
                        <div class="selected_option" style="font-size: 15px;">
                            <span>상품명 / </span>
                            <span>컬러 / </span>
                            <span>사이즈</span>
                            <!-- 옵션 삭제 X 버튼 -->
                            <i class="bi bi-x" style="font-size: 30px; margin-left: 150px;"></i>

                            <!--수량 수정  -->
                            <div class="number" style="font-size: 20px; text-align: left; ">
                                <a href="#" id="increaseQuantity">
                                    <i class="bi bi-plus-square-fill" style="color: #5e5e5e;"></i></a>
                                <!-- <i class="bi bi-plus-square"></i> -->
                                <span id="numberUpDown">1</span>
                                <a href="#" id="decreaseQuantity">
                                    <i class="bi bi-dash-square" style="color: #5e5e5e;"></i></a>

                                <!-- 가격 X 수량 => 총금액 -->
                                <span style="font-size: 15px; padding-left: 200px;">54,900원</span>

                            </div>
                        </div>

                    </div>
                    <style>
                        .secondary:hover {
                            background-color: #ffffff;
                            color: #ad67ea;

                        }
                    </style>

                    <div class="modal-footer" style="display: flex; justify-content: center; align-items: center">

                        <button type="button" class="btn secondary"
                            style="width: 160px; color: #ad67ea; border-color: #ad67ea;">
                            장바구니 담기</button>
                        <!-- 장바구니 버튼을 누르면  alert('장바구니로 이동 하시겠습니까?') -> 회원(로그인X)이 아닐 시, 로그인 화면으로 이동해서 로그인 후 장바구니 페이지로 이동.  -->

                        <button type="button" class="btn"
                            style="background-color: #ad67ea; color: #ffffff; width: 160px;">
                            바로 구매하기</button>
                        <!-- 구매하기 버튼 누르면 회원(로그인X)이 아닐 시, 로그인 화면으로 이동해서 로그인 후 결제 페이지로 바로 이동  , -->
                    </div>
                </div>
            </div>
        </div>

    </div>

	<script type="text/javascript">  /* ajax 재고 가져오기 */
	function optionClick(values){
		$.ajax({
			url : 'selectOptionStock.do',
			type : 'post',
			data : {"stk_option": values},
			dataType : 'json',
			success : fuction(res){
				for(let i = 0; i<res.length; i++){
					size = `
						<option value="` + res[i].stk_size + `"> `+ res[i].stk_size +`</option>
					`;
					$('#optionSize').append(size);
				}
			},
			error : function(e){
				console.log(e);
			}
		});
	}
		
	</script>

    <script>  /* 수량 수정 */
        

        $(function () {
            $('#decreaseQuantity').click(function (e) {
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat, 10);
                num--;
                if (num <= 0) { alert('더이상 줄일수 없습니다.'); num = 1; }
                $('#numberUpDown').text(num);
            });
            $('#increaseQuantity').click(function (e) {
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat, 10);
                num++; if (num > 10) {
                    alert('더이상 늘릴수 없습니다.');
                    num = 10;
                }
                $('#numberUpDown').text(num);
            });
        });


    </script>





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