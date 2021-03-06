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
    <!-- Google Fonts : MuseoModerno μμ΄-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap" rel="stylesheet">
    <!-- Google Fonts : MuseoModerno νκΈ-->
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

        /* μλ¨ μ λͺ© */
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

        /* μ¬λ°± ν» ν¬κΈ° νμΈ */
        .z {
            border: solid salmon;

        }
    </style>
</head>

<body>

    <div class="container">
        <!-- λ€λ‘ κ°κΈ° + λ‘κ³  -->
        <div class="row">
            <div class="col-1">
                <a class="navbar-brand" href="javascript:history.back()">
                    <i class="bi bi-chevron-left" style=" color: #5e5e5e; text-align: start; font-size: 20px; ">
                    </i></a>
            </div>
            <div class="col-11" style="display: flex; justify-content: center; align-items: center;">

                <!-- My Order List -->
                <!-- <img src="logo_product.jpg" style="width: 200px; margin-left: 50px; margin-bottom: 30px;"> -->
                <h1 class="">κ΅¬λ§€ μμΈλ΄μ­</h1>

            </div>
        </div>

        <i class="bi bi-receipt-cutoff"
            style="color: #ad67ea; font-size: 50px;  display: flex; justify-content: center; align-items: center;"></i><br>



        <!-- κ΅¬λ§€ μμΈλ΄μ­ -->

        <div class="row" style="margin-bottom: 12px; ">

            <span style="font-weight: 600;font-size: 18px">μ£Όλ¬Έ μν μ λ³΄</span>
            <hr style="display:flex; max-width: 330px;">
			
            <div class="col-5">
                <!-- μν μ΄λ―Έμ§ -->
                <img src="images/product/${phDetail.pd_num}/thumnail.jpg" class="rounded" style="display:flex; max-width: 120px; max-height: 120px;">
            </div>
            <div class="col-7 " style="font-size: 14px;">
                <p style="font-weight: 600;font-size: 13px">${phDetail.pd_name}</p>
                <p style="color: #828282; font-size: 10px;">${phDetail.stk_option} &nbsp;|&nbsp; μ¬μ΄μ¦ ${phDetail.stk_size}</p>
                <p style="color: #828282; font-size: 10px;">κ°κ²© ${phDetail.stk_price}μ &nbsp;|&nbsp; μλ ${phDetail.ph_quantity}κ°</p>
                <p style="text-align: end; font-weight: 600;">μ΄  ${phDetail.stk_price * phDetail.ph_quantity}μ</p>
            </div>

            <div class="row" style="margin-top: 20px; ">

                <!-- <hr style="display:flex; max-width: 330px; "> -->
                <div class="col-6">
                    <button type="button" class="btn btn secondary btn-sm">
                        κ΅ν μ μ²­</button>
                </div>
                <div class="col-6">
                    <button type="button" class="btn btn secondary btn-sm">
                        λ°ν μ μ²­</button>
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
                <span style="font-weight: 600;font-size: 18px">κ΅¬λ§€μ μ λ³΄</span>
                <hr class="l">
                <table class="table">

                    <tbody>
                        <tr>
                            <th scope="row">μ£Όλ¬Έμ</th>
                            <td>${phDetail.recipient}</td>
                        </tr>

                        <tr>
                            <th scope="row">μ°λ½μ²</th>
                            <td>${phDetail.recipient_tel}</td>
                        </tr>
                        <tr>
                            <th scope="row">κ΅¬λ§€μΌμ</th>
                            <td>${phDetail.ph_date}</td>
                        </tr>
                    </tbody>
                </table>

            </div>


            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">κ²°μ  μ λ³΄</span>
                <hr class="l">
                <table class="table">

                    <tbody>
                        <tr>
                            <th scope="row">μ£Όλ¬ΈκΈμ‘<br>
                                μνκΈμ‘<br>
                                λ°°μ‘λΉ

                            </th>
                            <td>${phDetail.stk_price * phDetail.ph_quantity} μ<br>
                                ${phDetail.stk_price * phDetail.ph_quantity} μ<br>
                                3000 μ
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">ν μΈκΈμ‘<br>
                                μΏ ν°ν μΈ
                            </th>
                            <td>(-)0 μ<br>
                                0 μ
                            </td>

                        </tr>
                        <tr>
                            <th scope="row">κ²°μ κΈμ‘<br>
                                κ²°μ  μλ¨<br>
                                μΉ΄λμ¬
                            </th>
                            <td> ${phDetail.stk_price * phDetail.ph_quantity + 3000} μ<br>
                                μΉ΄λκ²°μ <br>
                                νλμΉ΄λ
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>

            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">λ°°μ‘μ§ μ λ³΄</span>
                <hr class="l">
                <table class="table">

                    <tbody>
                        <tr>
                            <th scope="row">λ°λμ¬λ</th>
                            <td>${phDetail.recipient}</td>
                        </tr>
                        <tr>
                            <th scope="row">μ°λ½μ²</th>
                            <td>${phDetail.recipient_tel}</td>

                        </tr>
                        <tr>
                            <th scope="row">μ£Όμ</th>
                            <td>${phDetail.recipient_address}</td>
                        </tr>
                        <th scope="row">λ°°μ‘μμ²­μ¬ν­</th>
                        <td>κ²½λΉμ€μ λμΈμ</td>
                    </tbody>
                </table>

            </div>

            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">μ·¨μ/νλΆμ λ³΄</span>
                <hr class="l">
                <p>- λ°νμν μκ±°μλ£ μ΄ν νλΆκΈμ‘μ΄ νμ λ©λλ€.</p>
                <p>- ν μ£Όλ¬Έμμ μ¬λ¬ κ±΄μ μ·¨μ/λ°νμ΄ μ§νλ  κ²½μ° μ²λ¦¬ μμΌλ‘ νλΆμ΄ μ§νλλ―λ‘ μ μ μ νλΆμμ κΈμ‘κ³Ό μ€μ  νλΆκΈμ‘μ λ¬λΌμ§ μ μμ΅λλ€.</p>
            </div>
        </div>

    </div><!-- κ΅¬λ§€ μμΈλ΄μ­ -->










    <!--/ container  -->
    </div>
























    <!-- &nbsp;κ³΅λ°± λ£κΈ°(space) -->
    <!-- μ€μμ λ ¬  display: flex; justify-content: center; align-items: center; -->





    <!-- μλ Popper μμ΄μΌ μ¬λΌμ΄λλ‘ λμ΄..... μ λ μ§μ°μ§λ§!!!!!!!! -->
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