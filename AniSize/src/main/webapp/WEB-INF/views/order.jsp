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
            padding: 0 0 0 0;
            /* border-color: #ad67ea;
            width: 160px;
            height: 28px;
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center; */

        }
        
        /* κ²°μ νκΈ° λ²νΌ μ€μ */
        .container-fluid {
            width: 100%;
            /* μ¬μ΄μ¦ fixed */
            max-width: 350px;
            min-width: 300px;
            padding: 0px;
            margin: auto;
            display: block;

        }

        /* ν­ μ»¬λ¬ λ³κ²½ */
        .nav-link {
            color: #5e5e5e;
        }


        .nav-tabs .nav-link.active {
            color: #ad67ea;
            background-color: #fff;
            border-color: #dee2e6 #dee2e6 #fff;
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
                <h1 class="">μ£Όλ¬Έ/κ²°μ νκΈ°</h1>

            </div>
        </div>

        <i class="bi bi-credit-card-2-back"
            style="color: #ad67ea; font-size: 50px;  display: flex; justify-content: center; align-items: center;"></i><br>
        <!-- λ°°μ‘μ§ μ λ³΄ -->
        <!-- ν­ μ΄λ¦ -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#address" id="default_add"
                    style="font-size: 14px; width: 165px; text-align: center;">
                    κΈ°μ‘΄ λ°°μ‘μ§</a>
            </li>
            <li class=" nav-item">
                <a class="nav-link" data-toggle="tab" href="#new_address" id="new_add"
                    style="font-size: 14px; width: 165px; text-align: center;">
                    μ κ· λ°°μ‘μ§</a>
            </li>
        </ul>
        <form action="orderOK.do" method="post">
        <input type="hidden" name="mem_num" value="${member.mem_num}">
        
        <div class="tab-content">
            <!-- κΈ°μ‘΄ λ°°μ‘μ§ μ€λͺ ν­ -->
            <div id="address" class="container tab-pane active" style="font-size: 12px; margin-bottom: 10px;"><br>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        <!-- μ΄λ¦ -->
                        <h4>${member.mem_nick}</h4>
                        <input type="hidden" value="${member.mem_nick}" name="recipient" id="recipient">
                        <!-- μ£Όμ -->
                        <p style="font-size: 16px;">${member.mem_address}</p>
                        <input type="hidden" value="${member.mem_address}" name="recipient_address" id="recipient_address">
                        <!-- μ°λ½μ² -->
                        <p style="font-size: 16px;">${member.mem_tel}</p>
                        <input type="hidden" value="${member.mem_tel}" name="recipient_tel" id="recipient_tel">
                    </label>
                </div>
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="delivery_requests" id="delivery_requests">
                    <option selected>λ°°μ‘μ μμ²­μ¬ν­μ μ νν΄ μ£ΌμΈμ</option>
                    <option value="1">λΆμ¬μ λ¬Έμμ λμμ£ΌμΈμ</option>
                    <option value="2">λΆμ¬μ κ²½λΉμ€μ λ§‘κ²¨μ£ΌμΈμ</option>
                    <option value="3">λΆμ¬μ μ ν λλ λ¬Έμ μ£ΌμΈμ</option>
                    <option value="4">νλ°°ν¨μ λ£μ΄ μ£ΌμΈμ</option>
                    <option value="5">νμμνμνμλλ€.λ°°μ‘μ μ£Όμν΄μ£ΌμΈμ</option>
                    <option value="6">λ°°μ‘μ μ μ°λ½μ£ΌμΈμ</option>
                    <option value="7">λ¬Έμμ λμΈμ</option>
                </select>
            </div>

            <!-- μ κ·λ°°μ‘μ§ μλ ₯ ν­-->

            <div id="new_address" class="container tab-pane fade" style="font-size: 12px; margin-bottom: 20px;">
                <br>
                <input type="text" class="form-control my-2"  placeholder="μλ ΉμΈ" name="" id="recipient2">
                <input type="text" class="form-control my-2"  placeholder="λ°°μ‘μ§" name="" id="recipient_address2">
                <input type="text" class="form-control my-2"  placeholder="μ°λ½μ²" name="" id="recipient_tel2">
                <select class="form-select form-select-sm my-2" aria-label=".form-select-sm example" name="" id="delivery_requests2">
                    <option selected>λ°°μ‘μ μμ²­μ¬ν­μ μ νν΄ μ£ΌμΈμ</option>
                    <option value="1">λΆμ¬μ λ¬Έμμ λμμ£ΌμΈμ</option>
                    <option value="2">λΆμ¬μ κ²½λΉμ€μ λ§‘κ²¨μ£ΌμΈμ</option>
                    <option value="3">λΆμ¬μ μ ν λλ λ¬Έμ μ£ΌμΈμ</option>
                    <option value="4">νλ°°ν¨μ λ£μ΄ μ£ΌμΈμ</option>
                    <option value="5">νμμνμνμλλ€.λ°°μ‘μ μ£Όμν΄μ£ΌμΈμ</option>
                    <option value="6">λ°°μ‘μ μ μ°λ½μ£ΌμΈμ</option>
                    <option value="7">λ¬Έμμ λμΈμ</option>
                </select>
            </div>
        </div>

        <!-- μ νν μν μ λ³΄ -->
        <div class="selected_Product">
            <hr style="display:flex; max-width: 330px; border-width: 5px;">


            <div class="row">
                <span style="font-weight: 600;font-size: 18px">μ£Όλ¬Έμν μ λ³΄</span>
            </div>
            <c:forEach items="${orderList}" var="product">
            <hr style="display:flex; max-width: 330px; margin-top: 3px; ">
            
            <div class="row">
                <div class="col-5">
                    <!-- μν μ΄λ―Έμ§ -->
                    <img src="images/product/${product.pd_num}/thumnail.jpg" class="rounded" style="display:flex; max-width: 120px; max-height: 120px;">

                </div>

                <div class="col-7 " style="font-size: 14px;">
                    <p style="font-weight: 600;font-size: 13px">μνλͺ ${product.pd_name}</p>
                    <input type="hidden" name="pd_num" value="${product.pd_num}">

                    <!-- μ΅μ μ νμ ν, νλ¨μ μ νν μ΅μ λ³΄μ¬μ€-->
                    <div class="selected_option" style="font-size: 14px;">

                        <span>${product.stk_option } </span>
                        <input type="hidden" name="stk_option" value="${product.stk_option}">
                        <span>μ¬μ΄μ¦ ${product.stk_size}</span><br>
                        <input type="hidden" name="stk_num" value="${product.stk_num}">
                        <span>μλ ${product.ph_quantity} κ°</span><br>
                        <input type="hidden" name="ph_quantity" value="${product.ph_quantity}">

                        <p style="text-align: end;">κ°κ²© ${product.stk_price}μ</p>
                        <input type="hidden" name="stk_price" value="${product.stk_price}">
                        <p style="text-align: end; font-weight: 700">μ΄ ${product.stk_price * product.ph_quantity}μ</p>
                        <input type="hidden" class="price" value=" ${product.stk_price * product.ph_quantity}">
                        <input type="hidden" name="sum_price" value="${product.stk_price * product.ph_quantity}">
                    </div>
                </div>
            </div>
            </c:forEach>
            <hr style="display:flex; max-width: 330px; margin-top: 15x; margin-bottom: 20px; border-width: 5px;">
            
        </div>

        <span style="font-weight: 600;font-size: 18px">κ²°μ λ°©λ²</span>
        <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 20px; ">

        <div class="row">

            <div class="card_info" style="display: flex; justify-content: end; align-items: end;">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal"
                    style="color: #5e5e5e;">
                    μ μ©/μ²΄ν¬μΉ΄λ μλ΄&nbsp;<i class="bi bi-info-circle-fill"></i>
                </button>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">

                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content" style="width: 320px;margin-left: 18px;">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">μ μ©/μ²΄ν¬μΉ΄λ μλ΄</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p>μ μ©/μ²΄ν¬μΉ΄λ</p>
                                <span>- MAC νκ²½μμλ μ μ©μΉ΄λ κ²°μ κ° κ°λ₯ν©λλ€. (ISP κ²°μ  μ μΈ)</span><br>
                                <span>- κ΅­λ΄ λͺ¨λ  μΉ΄λ μ¬μ©μ΄ κ°λ₯νλ©° ν΄μΈμμ λ°νλ μΉ΄λλ μ΄μ©νμ€ μ μμ΅λλ€. (ν΄μΈλ°°μ‘μ λΆκ°λ₯ν©λλ€)</span><br>
                                <span>- κΈμμΌ μ€ν 6μ μ΄νλΆν° μΌμμΌ μ£Όλ¬Έμ κ²°μ  μλ£ ν μ·¨μ μμ²­ μ κ³ κ°μΌν° > μ£Όλ¬Έμ·¨μλ₯Ό μ΄μ©νμλ©΄
                                    λ©λλ€.</span><br>
                                <span>- νλμΉ΄λ κ²°μ μ λͺ¨λ  κ²°μ  κΈμ‘μ 2% μ²­κ΅¬ν μΈ, 20% Mν¬μΈνΈ μ¬μ© ννμ΄ μ κ³΅λ©λλ€.</span><br>
                                <span>- νλμΉ΄λ κ²°μ μ Mν¬μΈνΈ μ¬μ©μ μ ν  κ²½μ° κ²°μ  μ μΉ΄λ ν¬μΈνΈ μ¬μ© νμμ°½μμ μ¬μ©μν¨μ μ ννμλ©΄
                                    λ©λλ€.</span><br>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <!-- μΉ΄λμ ν -->
            <div class="payment">

                <div class="btn-group" role="group" aria-label="Basic radio toggle button group"
                    style="width: 330px; height: 70px; display: flex; justify-content: center; align-items:center; margin-bottom: 8px;">

                    <div class="btn-group" role="group" style="background-color: #fff; color: #5e5e5e;">
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"
                            checked="">

                        <button id="btnGroupDrop1" type="button" class="btn dropdown-toggle " data-bs-toggle="dropdown"
                            aria-expanded="false" 
                            style="width: 170px; height: 26px; margin-bottom: 8px; border-color: #5e5e5e;">
                            <label class="btn" for="btnradio1">μ μ©/μ²΄ν¬μΉ΄λ</label>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">BC</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">νλ</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">μΌμ±</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">μ ν</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">λ‘―λ°</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">λνNH</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">νλ</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">μ°λ¦¬</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">μ¨ν°</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">μ λΆ</a>
                            </li>
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#payModal">μΉ΄μΉ΄μ€λ±ν¬</a>
                            </li>
                        </ul>
                    </div>

                    <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"
                        style="margin-bottom: 0px;">
                    <label class="btn btn-outline-primary" for="btnradio2" data-bs-toggle="modal" id="cash1"
                        data-bs-target="#cashModal" style="border-color: #5e5e5e">λ¬΄ν΅μ₯μκΈ</label>

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

                    <!-- μ μ©μΉ΄λ μ ν ν λͺ¨λ¬μ°½  -->
                    <div class="card_info" style="display: flex; justify-content: end; align-items: end;">

                        <!-- Modal -->
                        <div class="modal fade" id="payModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">

                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content" style="width: 320px;margin-left: 18px;">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">μ μ©/μ²΄ν¬μΉ΄λ κ²°μ </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <span>-μΌλ° μΉ΄λ κ²°μ </span><br>
                                        <span>-μ±μΉ΄λ κ²°μ  μλΉμ€λ μ€λΉμ€μλλ€.</span><br>
                                        <span>-SMS κ²°μ  μλΉμ€λ μ€λΉμ€μλλ€.</span><br>
                                        <span>-κ°νΈ κ²°μ  μλΉμ€λ μ€λΉμ€μλλ€.</span><br>

                                        <select class="form-select form-select-sm my-2"
                                            aria-label=".form-select-sm example">
                                            <option selected>κ°μΈ/λ²μΈ μ ν</option>
                                            <option value="1">κ°μΈ</option>
                                            <option value="2">λ²μΈ</option>

                                        </select>

                                        <select class="form-select form-select-sm my-2"
                                            aria-label=".form-select-sm example">
                                            <option selected>ν λΆ μ ν</option>
                                            <option value="1">μΌμλΆ</option>
                                            <option value="2">2κ°μ</option>
                                            <option value="3">3κ°μ</option>
                                            <option value="4">4κ°μ</option>
                                            <option value="5">5κ°μ</option>
                                            <option value="6">6κ°μ</option>
                                            <option value="7">7κ°μ</option>
                                            <option value="8">8κ°μ</option>
                                            <option value="9">9κ°μ</option>
                                            <option value="10">10κ°μ</option>
                                            <option value="11">11κ°μ</option>
                                            <option value="12">12κ°μ</option>
                                        </select>

                                        <div class="modal-footer" style="padding-left: 0px; padding-right: 0px;">

                                            <button type="button" class="btn-sm btn secondary" data-bs-dismiss="modal"
                                                style="color: #ad67ea; border-color: #ad67ea; width: 150px; height: 35px;">
                                                κ²°μ  λ€μ μ ννκΈ°</button>
                                            <button type="button" class="btn btn-sm" data-bs-dismiss="modal"
                                                style="background-color: #ad67ea; color: #ffffff;width: 120px; height: 35px; ">κ²°μ μ§ννκΈ°</button>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div><!-- μ μ©μΉ΄λ μ ν ν λͺ¨λ¬μ°½  -->




                    <!-- λ¬΄ν΅μ₯ μκΈ μ ν ν λͺ¨λ¬μ°½  -->
                    <div class="cash_info" style="display: flex; justify-content: end; align-items: end;">

                        <!-- Modal -->
                        <div class="modal fade" id="cashModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                            aria-hidden="true">

                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content" style="width: 320px;margin-left: 18px;">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">λ¬΄ν΅μ₯ μκΈ κ²°μ </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" onclick="checkCash()"
                                            aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">

                                        <span>-μμ νκ³  νΈλ¦¬ν κ²°μ μλλ€.</span><br>


                                        <select class="form-select form-select-sm my-2"
                                            aria-label=".form-select-sm example">
                                            <option selected>μν μ ν</option>
                                            <option value="1">κ΄μ£Ό</option>
                                            <option value="2">νλ</option>
                                            <option value="3">...</option>
                                        </select>

                                        <input type="text" class="form-control my-2" id=" " placeholder="μκΈμλͺ" name="">
                                        <span>-μκΈ κ³μ’ λ²νΈλ μ£Όλ¬Έ μλ£ νμ΄μ§μμ νμΈ λ©λλ€.</span><br>
                                        <span>-μκΈ κΈ°ν</span><br>

                                        <div class="modal-footer" style="padding-left: 0px; padding-right: 0px;">

                                            <button type="button" class="btn-sm btn secondary" data-bs-dismiss="modal"
                                                style="color: #ad67ea; border-color: #ad67ea; width: 150px; height: 35px;">
                                                κ²°μ  λ€μ μ ννκΈ°</button>
                                            <button type="button" class="btn btn-sm" data-bs-dismiss="modal"
                                                style="background-color: #ad67ea; color: #ffffff;width: 120px; height: 35px; ">κ²°μ μ§ννκΈ°</button>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div><!-- λ¬΄ν΅μ₯ μκΈ μ ν ν λͺ¨λ¬μ°½  -->
                </div>

                <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 30px; border-width: 5px;">


                <div class="row">
                    <span style="font-weight: 600;font-size: 18px">κ²°μ κΈμ‘</span>
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
                    <input type="hidden" name="payment" id="id_payment" value="">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">κ²°μ μλ¨</th>
                                    <td id="payment"></td>
                                    
                                </tr>
                                <tr>
                                    <th scope="row">μ΄ μνκΈμ‘</th>
                                    <td class="sum_price">0μ</td>
                                </tr>
                                <tr>
                                    <th scope="row">μΏ ν° μ¬μ©</th>
                                    <td>- 0μ</td>
                                </tr>
                                <tr>
                                    <th scope="row">λ§μΌλ¦¬μ§ μ¬μ©</th>
                                    <td>- 0P</td>
                                </tr>
                                <tr>
                                    <th scope="row">λ°°μ‘λΉ</th>
                                    <td id="del_price">+ 3,000μ</td>
                                </tr>
                                <tr>
                                    <th scope="row" style="font-size: 18px; font-weight: 700;">μ΄ κ²°μ κΈμ‘</th>
                                    <td style="color: #d700d7;font-size: 20px; font-weight: 700;" class="sum_price">0 μ</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- νλ¨ κ²°μ νκΈ° λ²νΌ  -->
                 <nav class="navbar fixed-bottom" style="margin: 0px; padding: 0px; background-color:#c370de ;
                color:#ffffff; border-top: 0.1px solid #ad67ea;">
                    <div class="container-fluid">
                        <button type="submit" class="btn"
                            style="width: 375px;height: 40px; display: flex; justify-content: center; align-items: center; background:#c370de; color: #ffffff;">
                            κ²°μ νκΈ°
                        </button>
                    </div>

                </nav>
                </form>

                <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 5px; border-width: 5px;">

                <br>
                <div style="font-size: 12px;">
                    <p>
                        μ΄μ©μ½κ΄ λ° κ°μΈμ λ³΄ μ 3μ μ κ³΅μ¬ν­μ λν΄<br>
                        νμΈνμμΌλ©° κ²°μ μ λμν©λλ€.
                    </p>
                    <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 5px;">
                    <p>
                        κ°μΈμ λ³΄ μμ§/μ΄μ© λμ λ³΄κΈ°<br>
                        κ°μΈμ λ³΄ μ 3μ μ κ³΅ λμ λ³΄κΈ°<br>
                        κ²°μ λν μλΉμ€ μ΄μ©μ½κ΄ (μ£Ό)KGμ΄λμμ€, (μ£Ό)ν μ€νμ΄λ¨ΌμΈ 
                    </p>
                </div>
                <br><br><br><br>
            </div>
        </div>
    </div>
    <script type="text/javascript">
     	$('#btnGroupDrop1').click(function(){
    		$('#payment').text('μΉ΄λ');
    		$('#id_payment').val('μΉ΄λ');
    	}); 
     	$('#cash1').click(function(){
    		$('#payment').text('λ¬΄ν΅μ₯μκΈ');
    		$('#id_payment').val('λ¬΄ν΅μ₯μκΈ');
    	}); 
    </script>
    <script type="text/javascript">
	    $(document).ready(function(){
	    	let sum = 0;
			$('.price').each(function(){
				sum+= Number($(this).val());
			});
			console.log(sum);
			let del_price = 3000;
			if(sum>=50000){
				del_price = 0;
				$('#del_price').text('+ 0μ');
			}else{
				del_price = 3000;
				$('#del_price').text('+ 3,000μ');
				
			}
			$('.sum_price').text((sum+del_price)+' μ');
			/* $('#id_sum_price').val(sum+del_price); */
	    });
	    
	    
	    
	    $('#new_add').click(function(){
	    	$('#recipient').attr('name','');
	    	$('#recipient2').attr('name','recipient');
	    	$('#recipient_address').attr('name','');
	    	$('#recipient_address2').attr('name','recipient_address');
	    	$('#recipient_tel').attr('name','');
	    	$('#recipient_tel2').attr('name','recipient_tel');
	    	$('#delivery_requests').attr('name','');
	    	$('#delivery_requests2').attr('name','delivery_requests');
	    });
	    $('#default_add').click(function(){
	    	$('#recipient2').attr('name','');
	    	$('#recipient').attr('name','recipient');
	    	$('#recipient_address2').attr('name','');
	    	$('#recipient_address').attr('name','recipient_address');
	    	$('#recipient_tel2').attr('name','');
	    	$('#recipient_tel').attr('name','recipient_tel');
	    	$('#delivery_requests2').attr('name','');
	    	$('#delivery_requests1').attr('name','delivery_requests');
	    });

    </script>
    
    
    
    
    
    <!--/ container  -->


    <!-- μλ Popper μμ΄μΌ μ¬λΌμ΄λλ‘ λμ΄..... μ λ μ§μ°μ§λ§!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>







</body>

</html>