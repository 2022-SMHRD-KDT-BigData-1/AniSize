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

        /* 카테고리 안 로고 */
        h3 {
            font-family: 'MuseoModerno', cursive;
            text-align: center;
            font-size: 40px;
            color: #bf09fb;
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

        /* 카테고리 안 드롭다운 고정 */
        ul li {
            list-style: none;
        }

        /* 카테고리 안 footer */
        footer {
            position: static;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgb(141, 141, 141);
            height: auto;
            width: 234px;
            padding-top: 40px;
            color: #fff;
            border-radius: 0.25rem;
        }

        .footer-content {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }

        .footer-content h3 {
            font-size: 2.1rem;
            font-weight: 500;
            text-transform: capitalize;
            line-height: 3rem;
        }

        .footer-content p {
            max-width: 500px;
            margin: 10px auto;
            line-height: 28px;
            font-size: 14px;
            color: #cacdd2;
        }

        .socials {
            list-style: none;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 1rem 0 3rem 0;
        }

        .socials li {
            margin: 0 10px;
        }

        .socials {
            text-decoration: none;
            color: #fff;
            /* border: 1.1px solid white; */
            padding: 5px;

        }

        .socials a i {
            font-size: 20px;
            width: 20px;
            transition: color 0.4s ease;
            color: #fff;
        }

        .socials a:hover i {
            color: rgb(204, 70, 245);
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
            <div class="col-11"
                style="display: flex; justify-content: center; align-items: center; text-align: center;">

                <!-- My Order List -->
                <!-- <img src="logo_product.jpg" style="width: 200px; margin-left: 50px; margin-bottom: 30px;"> -->
                <h1 class="">구매 내역</h1>

            </div>
        </div>

        <i class="bi bi-receipt-cutoff"
            style="color: #ad67ea; font-size: 40px;  display: flex; justify-content: center; align-items: center;"></i><br>



        <!-- 구매내역 -->

        <div class="row" style="margin-bottom: 12px;">

            <hr style="display:flex; max-width: 330px;">
            
            <c:forEach items="${phList}" var="ph">
            
            <div class="p_history" style="font-size: 18px; margin-bottom: 12px;">
                <!-- &nbsp;공백 넣기(space) -->                         
                <span>&nbsp;&nbsp;&nbsp;${ph.ph_date}</span><a href="javascript:hiddenQuery('purchaseHistoryDetail.do','${ph.ph_num}')" style="padding-left:200px; color: #5e5e5e;">
                    <i class="bi bi-chevron-double-right" style="color: #5e5e5e; font-size: 20px;"></i></a>
            </div>
            <div class="col-5">
                <!-- 상품 이미지 -->
                <img src="images/product/${ph.pd_num}/thumnail.jpg" class="rounded" style="display:flex; max-width: 120px; max-height: 120px;">
            </div>
            <div class="col-7 " style="font-size: 14px;">
                <p style="font-weight: 600;font-size: 13px">${ph.pd_name}</p>
                <p style="color: #828282; font-size: 10px;">${ph.stk_option} &nbsp;|&nbsp; 사이즈 ${ph.stk_size}</p>
                <p style="color: #828282; font-size: 10px;">가격 ${ph.stk_price}원 &nbsp;|&nbsp; 수량 ${ph.ph_quantity}개</p>
                <p style="text-align: end; font-weight: 600;">총 ${ph.stk_price * ph.ph_quantity}원</p>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div class="col-6">
                    <button type="button" class="btn btn secondary btn-sm">
                        배송조회</button>
                </div>
                <div class="col-6">
                    <button type="button" class="btn btn secondary btn-sm">
                        1:1문의</button>
                </div>
            </div>
         </c:forEach>
        </div><!-- 구매내역 -->

        <!--/ container  -->
    </div>



   <jsp:include page="menuBar.jsp"></jsp:include>

<script type="text/javascript">
    function hiddenQuery(url, ph_num){
        let f = document.createElement('form');
        let obj;
        obj = document.createElement('input');
        obj.setAttribute('type', 'hidden');
        obj.setAttribute('name', 'ph_num');
        obj.setAttribute('value', ph_num);
        
        f.appendChild(obj);
        f.setAttribute('method', 'post');
        f.setAttribute('action', url);
        document.body.appendChild(f);
        f.submit();
    }
 
    </script>

























    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>







</body>

</html>