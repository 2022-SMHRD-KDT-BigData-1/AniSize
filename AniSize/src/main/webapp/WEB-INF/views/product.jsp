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

        h1 {
            font-family: 'MuseoModerno', cursive;
            text-align: center;
            font-size: 60px;
            color: #bf09fb;
        }

        /* μ₯λ°κ΅¬λ+κ΅¬λ§€νκΈ° λ²νΌ μ€μ */
        .container-fluid {
            width: 100%;
            /* μ¬μ΄μ¦ fixed */
            max-width: 350px;
            min-width: 300px;
            padding: 0px;
            margin: auto;
            display: block;

        }

        /* μν μμΈ λ΄μ­ μ΄λ―Έμ§ ν¬κΈ° μ€μ  */
        .product_detail_img {
            max-width: 304px;
            min-width: 300px;
        }

        /* λ¦¬λ·° μ΄λ―Έμ§ ν¬κΈ° μ€μ  */
        .review_img {
            max-width: 304px;
            min-width: 300px;
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

        /*ν­ μν μ±λͺ μ λͺ© κΈμ¨ ν¬κΈ°*/
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

        /* μ¬λ°± ν» ν¬κΈ° νμΈ */
        .z {
            border: solid salmon;

        }
        .star {
        position: relative;
        font-size: 2rem;
        text-align: center;
        
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

    </style>
</head>

<body>


    <div class="container">
        <!-- λ€λ‘ κ°κΈ° + λ‘κ³  -->
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

        <!-- μν μ΄λ―Έμ§ (μΈλ€μΌ)-->
        <div class="row">
            <!-- μμ μ΄λ―Έμ§ -->
            <img src="images/product/${product.pd_num}/thumnail.jpg"
                style="width: 370px; padding: 0px; display: flex; justify-content: center; align-items: center; ">
            <br>
        </div>

        <!-- μνλͺ μ λ³΄ -->
        <br>
        <button type="button" class="btn btn-sm btn-outline rounded-pill btn-outline-default"
            style=" border-color: #c370de; color: #c370de; background: #ffffff; height: 30px;">${product.brand}</button>

        <br><br>
        <p style="text-align: start; font-size: 25px; margin-bottom: 0px;">${product.pd_name}</p>
        <p style="text-align: end; font-size: 20px; margin-bottom: 8px;">${product.pd_price}μ</p>

    <span class="star" style="text-align: start; font-size: 15px;">
        
        βββββ
        <span style="text-align: start; font-size: 15px; width: ${product.pd_avg_score * 10}%">βββββ</span>
    </span>  



        <span style="text-align: start; font-size: 15px;">${product.pd_avg_score/2} / 5.0 μ  </span>
        <a href="#review_title" style="font-size: 15px; padding-left: 100px; color:#5e5e5e;">${countReview}κ° λ¦¬λ·°</a>

        <hr>

        <!-- μν μ€λͺ -->
        <!-- ν­ μ΄λ¦ -->
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

        <!-- ν­ μ λ΄μ© -->
        <div class="tab-content">
            <!-- detail μν μ€λͺ -->
            <div id="detail" class="container tab-pane active" style="font-size: 15px; margin-bottom: 50px;"><br>
                <h4>μν μ€λͺ</h4>
                <p>--------- </p>

				<c:forEach begin="1" end="${product.pd_img_count}" varStatus="status">
	                <img src="images/product/${product.pd_num}/${status.index}.jpg" alt="" class="product_detail_img">
				</c:forEach>
                <img src="1.jpg" alt="" class="product_detail_img">
<!--                 <h4>μ»¬λ¬ μ λ³΄</h4>
                <h4>μ¬μ΄μ¦ μ λ³΄</h4>
                <img src="size.jpg" alt="" class="product_detail_img"> -->

                <br><br><br>

                <!-- info -->
                <div id="accordion" style="padding: 0;">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <a class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"
                                    aria-expanded="true" aria-controls="collapseOne">
                                    μν μ£Όμ μ¬ν­
                                </a>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                            data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - μ νμ νΉμ±μ μΈλΆλ§μ°°μ΄λ λ μΉ΄λ‘μ΄ λ¬Όμ²΄μ μν΄ μμλ  μ μμΌλ―λ‘ κ°λ³ν μ£Όμ λΆνλλ¦½μ΄λ€.<br>
                                - μΈνμ κ°κΈμ  μμΈνμ νμκ±°λ μΈνλ§μ μ΄μ©νμ¬ λ¨λμΈν νμκΈ°λ₯Ό κΆμ₯ν©λλ€.<br>
                                - μ₯μκ° λ¬Όμ λ΄κ° λκ±°λ λ¨κ±°μ΄ λ¬Όμ λ΄κ° λμ§ λ§μκΈ° λ°λλλ€.<br>
                                - κ΅¬κΉ, λ€νλ¦Όμ΄ μκΈΈ μ μμΌλ ννλ₯Ό μ λν ν κ±΄μ‘°ν΄μ£ΌμκΈ° λ°λλλ€.<br>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                                    aria-expanded="false" aria-controls="collapseTwo">
                                    κ²°μ  μλ΄
                                </a>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - μ£Ό κ²°μ λ μ£Όλ¬Έ ν 48μκ° μ΄λ΄μ ν΄μ£ΌμμΌ λ°°μ‘μ΄ κ°λ₯ν©λλ€<br>
                                - κ³ κ° κ²°μ μ κ²½μ° μμ μ μν΄ μΉ΄λμ¬μμ νμΈμ νλ₯Ό λλ¦΄ μλ μμ΅λλ€<br>
                                - νμΈκ³Όμ μμ λλ μΉ΄λμ μ¬μ©μ΄λ νμΈ λͺμμ μ£Όλ¬Έ λ±, μ μμ μΈ μ£Όλ¬Έμ΄ μλλΌκ³  νλ¨λ  κ²½μ° μμλ‘ μ£Όλ¬Έμ λ³΄λ₯ λλ μ·¨μ ν  μ μμ΅λλ€<br>
                                - λ¬΄ν΅μ₯ μκΈμ μν κ΅¬λ§€λκΈμ PCλ±νΉ, μΈν°λ·λ±νΉ, νλ λ±νΉ νΉμ κ°κΉμ΄ μνμμ μ§μ  μκΈνμλ©΄ λ©λλ€<br>
                                - μ£Όλ¬Έμ μλ ₯ν μκΈμλͺκ³Ό μ€μ μκΈμμ μ±λͺμ΄ λ°λμ μΌμΉνμ¬μΌ νλ©°, 7μΌ μ΄λ΄λ‘ μκΈμ νμμΌ νλ©° μκΈλμ§ μμ μ£Όλ¬Έμ μλμ·¨μ λ©λλ€<br>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree"
                                    aria-expanded="false" aria-controls="collapseThree">
                                    λΈλλ λ° νλ§€μ μ λ³΄
                                </a>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                            data-parent="#accordion">
                            <div class="card-body">
                                <table class="table" style="font-size: 8px;">

                                    <tbody>
                                        <tr>
                                            <th scope="row">μνΈλͺ</th>
                                            <td>μ½μ½λ§ν«</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">μ¬μμλ±λ‘λ²νΈ</th>
                                            <td>135-31-87893</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">ν΅μ νλ§€μλ²νΈ</th>
                                            <td>μ -2014-μμμν΅-0300νΈ</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">λνμ</th>
                                            <td>μ₯λ―Έμ</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">μ¬μμ μμ¬μ§</th>
                                            <td>16705 κ²½κΈ°λ μμμ μν΅κ΅¬ λ°λ¬λ‘ 90 (μν΅λ) 2F</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">μ°λ½μ²</th>
                                            <td>031-204-0407</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">λ©μΌ</th>
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
                                    λ°°μ‘μ λ³΄
                                </a>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                            data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - μμ²΄λ°μ‘μ μνμ€λͺμ λ³λλ‘ κΈ°μλ λΈλλ μλ¦Ό λ°°μ‘κ³΅μ§ κΈ°μ€μΌλ‘ μΆκ³ λκ³  λΈλλλ§λ€ κ°λ³ λ°°μ‘λΉκ° λΆμ¬λ©λλ€.<br>
                                - μμ²΄λ°μ‘μ μ€ν 2μκΉμ§ κ²°μ νμΈλ μ£Όλ¬Έμ λΉμΌ μΆκ³ λκ³  5λ§μ μ΄μ μ£Όλ¬Έμ λ¬΄λ£λ°°μ‘, 5λ§μ λ―Έλ§μ 3,000μμ λ°°μ‘λΉκ°
                                μΆκ°λ©λλ€.<br>
                                - μνμ€λͺμ μ μκΈ°κ°μ μμ§ν΄μ£ΌμκΈ° λ°λλλ€.<br>
                                - μΌλΆ μν, μ μ£Όλλ₯Ό ν¬ν¨ν λμμ°κ° μ§μ­μ μΆκ°λ°°μ‘λΉ μκΈμμ²­μ΄ μμ μ μμ΅λλ€.<br>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFour">
                            <h5 class="mb-0">
                                <a class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour"
                                    aria-expanded="false" aria-controls="collapseFour">
                                    κ΅ν, νλΆ, A/S μλ΄
                                </a>
                            </h5>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                            <div class="card-body" style="font-size: 8px;">
                                - μν μλ ΉμΌλ‘λΆν° 7μΌ μ΄λ΄ λ°ν / νλΆ κ°λ₯ν©λλ€.<br>
                                - λ³μ¬ λ°νμ κ²½μ° μλ³΅λ°°μ‘λΉλ₯Ό μ°¨κ°ν κΈμ‘μ΄ νλΆλλ©°, μ ν λ° ν¬μ₯ μνκ° μ¬νλ§€ κ°λ₯νμ¬μΌ ν©λλ€.<br>
                                - λμΌμν λλ λμΌμν λ΄ μΆκ°κΈμ‘μ΄ μλ μ΅μλ§ κ΅νκ°λ₯ν©λλ€.<br>
                                - μν λΆλμΈ κ²½μ°λ λ°°μ‘λΉλ₯Ό ν¬ν¨ν μ μ‘μ΄ νλΆλ©λλ€.<br>
                                - μΆκ³  μ΄ν νλΆμμ²­ μ μν νμ ν μ²λ¦¬λ©λλ€.<br>
                                - μ£ΌμΌλ¦¬ λ± μ£Όλ¬Έμ μμν / μΉ΄λ©λΌ / λ°λ΄ν¬μ₯μν λ±μ λ³μ¬μ λ°λ₯Έ λ°ν / νλΆμ΄ λΆκ°ν©λλ€.<br>
                                - μΌλΆ μμ νμΌλ‘ μμλ μνμ κ²½μ° A/Sκ° λΆκ°ν©λλ€.<br>
                                - νΉμ λΈλλμ μνμ€λͺμ λ³λλ‘ κΈ°μλ κ΅ν / νλΆ / AS κΈ°μ€μ΄ μ°μ ν©λλ€.<br>
                                - κ΅¬λ§€μκ° λ―Έμ±λμμΈ κ²½μ°μλ μν κ΅¬μ μ λ²μ λλ¦¬μΈμ΄ λμνμ§ μλνλ©΄ λ―Έμ±λμ λ³ΈμΈ λλ λ²μ λλ¦¬μΈμ΄ κ΅¬λ§€μ·¨μ ν  μ μμ΅λλ€.<br>
                            </div>
                        </div>
                    </div>


                </div>


                <br><br><br><br><br><br>

            </div>




            <!-- review μν λ¦¬λ·° -->
            <div id="review" class="container tab-pane fade" style="font-size: 15px; margin-bottom: 50px;"><br>
                <h3>Review</h3>
            <c:forEach items="${reviewList}" var="review">
                <span>λλ€μ ${review.mem_nick}</span><span style="padding-left: 130px;">κ΅¬λ§€μΌ ${review.ph_date}</span>
                <img src="${review.review_img}" alt="" class="review_img">
                
                
	    <span class="star" style="text-align: start; font-size: 15px;">
	        βββββ
	    	<span style="text-align: start; font-size: 15px; width: ${review.review_score * 10}%;">βββββ</span>
	    </span>  
                
                <span> ${review.review_score/2}</span>
                <span>/ 5.0 μ </span><br>
                <span>${review.review_content}
                </span>

                <hr style="display:flex; max-width: 330px; margin-top: 3px; margin-bottom: 5px;">
				</c:forEach>
            </div>

        </div>
    </div>



    <!-- μ₯λ°κ΅¬λλ λ²νΌ μ»¬λ¬ ν°μ, κ΅¬λ§€νκΈ° λ²νΌ μ»¬λ¬ μ±μ°κΈ° -->

    <!--  μ₯λ°κ΅¬λ + κ΅¬λ§€νκΈ° νλ¨ λ²νΌ-->

    
        <nav class="fixed-bottom" style="margin: 0px; padding: 0px; background-color:#c370de ;
                color:#ffffff; border-top: 0.1px solid #ad67ea;">
          <div class="container-fluid">
            <!-- Button trigger modal -->
            <c:choose>
	            <c:when test="${stkOptionList[0] ne null}">
		            <button type="button fixed-bottom" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal"
		                style="width: 350px; display: flex; justify-content: center; align-items: center; background:#c370de; color: #ffffff;">
		               		 κ΅¬λ§€νκΈ°
		            </button>
		        </c:when>
	            <c:otherwise>
		            <button type="button fixed-bottom" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="loadNullOptionStock()"
		                style="width: 350px; display: flex; justify-content: center; align-items: center; background:#c370de; color: #ffffff;">
		               		 κ΅¬λ§€νκΈ°
		            </button>
	            </c:otherwise>
            </c:choose>
          </div>
        </nav>
        
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog fixed-bottom" style="width: 375px; margin:0px">

                <div class="modal-content" style=" display: flex; justify-content: center; align-items: center;">
                    <div class="modal-header"
                        style="display: flex; justify-content: center; align-items: center; padding: 0 0 0 0; ">
                        
                        <button type="button" class="btn" data-bs-dismiss="modal" aria-label="Close"
                            style="padding: 0 0 0 0;">
                            <!-- μ΅μ λ«κΈ° λ²νΌ -->
                            <i class="bi bi-chevron-down" style="font-size: 30px; "></i>
                        </button>
                    </div>
                    <div class="modal-body">
                    <!-- μ΅μ μμΌλ©΄ νλ μΌλ‘ μ΅μλͺμ νλ‘λνΈ λͺμΌλ‘ λ³΄λ΄μ€λ€  -->
						<c:choose>
						<c:when test="${stkOptionList[0] ne null}">
                        <div class="option1" style="padding-bottom: 10px;">
							
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id = "option" onchange="optionClick()" name="${stk_option}">
	                            <option selected>[νμ] μμ μ ν</option>
	                            <c:forEach items="${stkOptionList}" var="option">
	                          	  <option value="${option}" onclick="optionClick()">${option}</option>
	                            </c:forEach>
                            </select>
                        </div>
                        </c:when>
                        <c:otherwise>
                        	<!-- <input type="text" id="option" onload="loadNullOptionStock()"> -->
                        	<!-- <p onclick="optionClick()" id = "option"></p> -->
                        </c:otherwise>
						</c:choose>

                        <div class="opton2">
                            <!-- μ¬μ΄μ¦ μ΅μμ  <span>--------------------------------[ μΆμ² μ¬μ΄μ¦ ]</span> νμ -->
                            <!-- μ¬κ³  5κ° λ―Έλ§μΌ μ μλ λ³΄μ¬μ€ <span>-----------------------[ 3κ° λ¨μ ]</span>  -->
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="optionSize" name="stk_num">
                                <option selected>[νμ] μ¬μ΄μ¦ μ ν</option>
<%--                                 <c:forEach items="${stockList}" var="stk">
		                            <option value="${stk.stk_num}">${stk.stk_size}</option>
                                </c:forEach> --%>
                                	<!-- <option value=""></option> -->
     <!--                            <option value="s">S</option>
                                <span>-----------------------[ 3κ° λ¨μ ]</span>
                                <option value="m">M
                                    <span>-----------------------[ μΆμ² μ¬μ΄μ¦ ]</span>
                                </option>
                                <option value="l">L</option>
                                <option value="xl">xL</option>
                                <!-- <option value=""></option> -->
                            </select>
                        </div>


                        <!-- μ΅μ μ νμ ν, νλ¨μ μ νν μ΅μ λ³΄μ¬μ€-->
                        <div class="selected_option" style="font-size: 15px;">
                            <!-- <span>μνλͺ / </span>
                            <span>μ»¬λ¬ / </span>
                            <span>μ¬μ΄μ¦</span>
                            μ΅μ μ­μ  X λ²νΌ
                            <i class="bi bi-x" style="font-size: 30px; margin-left: 150px;"></i>
 -->
                            <!--μλ μμ   -->
                            <div class="number" style="font-size: 20px; text-align: left; ">
                                <a href="#" id="increaseQuantity" onclick="cc()">
                                    <i class="bi bi-plus-square-fill" style="color: #5e5e5e;"></i></a>
                                <!-- <i class="bi bi-plus-square"></i> -->
                                <span id="numberUpDown">1</span>
                                <input type="hidden" value="1" id="cart_quantity"> 
                                <a href="#" id="decreaseQuantity" onclick="dd()">
                                    <i class="bi bi-dash-square" style="color: #5e5e5e;"></i></a>

                                <!-- κ°κ²© X μλ => μ΄κΈμ‘ -->
                                <span style="font-size: 15px; padding-left: 200px;" id="product_price">0μ</span>

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
					<c:choose>
						<c:when test="${empty member}">
	                        <a href="#" onclick="requestLogin()">
	                        <button type="button" class="btn secondary" style="width: 160px; color: #ad67ea; border-color: #ad67ea;">μ₯λ°κ΅¬λ λ΄κΈ°</button>
	                        </a>
	                        <!-- μ₯λ°κ΅¬λ λ²νΌμ λλ₯΄λ©΄  alert('μ₯λ°κ΅¬λλ‘ μ΄λ νμκ² μ΅λκΉ?') -> νμ(λ‘κ·ΈμΈX)μ΄ μλ μ, λ‘κ·ΈμΈ νλ©΄μΌλ‘ μ΄λν΄μ λ‘κ·ΈμΈ ν μ₯λ°κ΅¬λ νμ΄μ§λ‘ μ΄λ.  -->
							<a href="#" onclick="requestLogin()">
	                        <button type="button" class="btn" style="background-color: #ad67ea; color: #ffffff; width: 160px;">λ°λ‘ κ΅¬λ§€νκΈ°</button>
							</a>
						</c:when>
						<c:otherwise>
	                        <a href="#" onclick="addCart()">
	                        <button type="button" class="btn secondary" style="width: 160px; color: #ad67ea; border-color: #ad67ea;">μ₯λ°κ΅¬λ λ΄κΈ°</button>
	                        </a>
							<a href="#" onclick="nowBuy()">
	                        <button type="button" class="btn" style="background-color: #ad67ea; color: #ffffff; width: 160px;">λ°λ‘ κ΅¬λ§€</button>
							</a>
						</c:otherwise>
					</c:choose>
                        <!-- κ΅¬λ§€νκΈ° λ²νΌ λλ₯΄λ©΄ νμ(λ‘κ·ΈμΈX)μ΄ μλ μ, λ‘κ·ΈμΈ νλ©΄μΌλ‘ μ΄λν΄μ λ‘κ·ΈμΈ ν κ²°μ  νμ΄μ§λ‘ λ°λ‘ μ΄λ  , -->
                    </div>
                </div>
            </div>
        </div>

    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">  /* ajax μ¬κ³  κ°μ Έμ€κΈ° */
	
	
		function nowBuy(){ 
			if($('#optionSize').val().indexOf('[νμ]') != -1){
				alert('μ¬μ΄μ¦λ₯Ό μ νν΄μ£ΌμΈμ');
				return
			}

		    let form = document.createElement("form");
		    form.setAttribute("id", "form1");
		    form.setAttribute("method", "post");
		    form.setAttribute("action", "nowBuy.do");
		    
		    let mem_num = document.createElement("input");
		    mem_num.setAttribute("type", "hidden");
		    mem_num.setAttribute("name", "mem_num");
		    mem_num.setAttribute("value", '${member.mem_num}');
		    form.appendChild(mem_num);
		    
		    let stk_num = document.createElement("input");
		    stk_num.setAttribute("type", "hidden");
		    stk_num.setAttribute("name", "stk_num");
		    stk_num.setAttribute("value", $('#optionSize').val());
		    form.appendChild(stk_num);
		    
		    let cart_quantity = document.createElement("input");
		    cart_quantity.setAttribute("type", "hidden");
		    cart_quantity.setAttribute("name", "cart_quantity");
		    cart_quantity.setAttribute("value", $('#cart_quantity').val());
		    form.appendChild(cart_quantity);
		    
		    document.body.appendChild(form);
		    form.submit();
		    document.getElementById("form1").remove();
			
		}
		function addCart(){ 
			if($('#optionSize').val().indexOf('[νμ]') != -1){
				alert('μ¬μ΄μ¦λ₯Ό μ νν΄μ£ΌμΈμ');
				return
			}
		 	let form = {
		 			"mem_num" : '${member.mem_num}',
		 			"stk_num" : $('#optionSize').val(),
		 			"cart_quantity" : $('#cart_quantity').val()
		 	};
			console.log(form);
			 	
			$.ajax({
				url : 'addCart.do',
				type : 'post',
				data : form,
				success : function(res){
					console.log(res);
					if(confirm('μ₯λ°κ΅¬λ μΆκ° μ±κ³΅ !\nμ₯λ°κ΅¬λλ‘ μ΄λνμκ² μ΅λκΉ?')){
						location.href="cart.do";
					}
				},
				error : function(e){
					console.log(e);
				}
			});
		}
		
	</script>



	<script type="text/javascript">  /* ajax μ¬κ³  κ°μ Έμ€κΈ° */
	function optionClick(){ 
		let option = $('#option').val();
		console.log(option);
	 	let d = {"stk_option" : option, "pd_num" : '${product.pd_num}'}
	 	console.log(d);
		$.ajax({
			url : 'selectOptionStock.do',
			type : 'post',
			data : d,
			dataType : 'json',
			success : function(res){
				$('#optionSize').empty();
				for(let i = 0; i<res.length; i++){
					size = `
						<option  value="` + res[i].stk_num + `"> `+ res[i].stk_size +`</option>
					`;
					$('#optionSize').append(size);
					
				}
			},
			error : function(e){
				console.log(e);
			}
		});
	}
	function loadNullOptionStock(){ 
		let pd_num = '${product.pd_num}';
	 	console.log('pd num : '+ pd_num);
		$.ajax({
			url : 'selectNullOptionStock.do',
			type : 'post',
			data : {"pd_num":pd_num},
			success : function(res){
				for(let i = 0; i<res.length; i++){
					size = `
						<option  value="` + res[i].stk_num + `"> `+ res[i].stk_size +`</option>
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
	<script type="text/javascript">
	function dd(){
		console.log("ghgg");
		if($('#optionSize').val().indexOf('[νμ]') != -1){
			alert('μ¬μ΄μ¦λ₯Ό μ νν΄μ£ΌμΈμ');
			return
		}
	    var stat = $('#numberUpDown').text();
	    var num = parseInt(stat, 10);
	    num--;
	    if (num <= 0) {
	    	alert('λμ΄μ μ€μΌμ μμ΅λλ€.'); 
	    	num = 1; 
	    }
	    $('#numberUpDown').text(num);
	    $('#cart_quantity').val(num);
	    let v = $('#cart_quantity').val() * '${product.pd_price}';
	    $('#product_price').text(v+'μ');
	}
	
	function cc(){
		console.log("ghgg");
		if($('#optionSize').val().indexOf('[νμ]') != -1){
			alert('μ¬μ΄μ¦λ₯Ό μ νν΄μ£ΌμΈμ');
			return
		}
	    var stat = $('#numberUpDown').text();
	    var num = parseInt(stat, 10);
	    num++; 
	    if (num > 10) {
	        alert('λμ΄μ λλ¦΄μ μμ΅λλ€.');
	        num = 10;
	    }
	    $('#numberUpDown').text(num);
	    $('#cart_quantity').val(num);
	    let v = $('#cart_quantity').val() * '${product.pd_price}';
	    $('#product_price').text(v+'μ');
	}
</script>

    <script>  /* μλ μμ  */


/*         $(function () {
            $('#decreaseQuantity').click(function (e) {
            	console.log("ghgg");
    			if($('#optionSize').val().indexOf('[νμ]') != -1){
    				alert('μ¬μ΄μ¦λ₯Ό μ νν΄μ£ΌμΈμ');
    				return
    			}
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat, 10);
                num--;
                if (num <= 0) { alert('λμ΄μ μ€μΌμ μμ΅λλ€.'); num = 1; }
                $('#numberUpDown').text(num);
                $('#cart_quantity').val(num);
                $('#product_price').text($('#cart_quantity')*'${product.pd_price}'μ);
            });
            $('#increaseQuantity').click(function (e) {
    			if($('#optionSize').val().indexOf('[νμ]') != -1){
    				alert('μ¬μ΄μ¦λ₯Ό μ νν΄μ£ΌμΈμ');
    				return
    			}
                e.preventDefault();
                var stat = $('#numberUpDown').text();
                var num = parseInt(stat, 10);
                num++; if (num > 10) {
                    alert('λμ΄μ λλ¦΄μ μμ΅λλ€.');
                    num = 10;
                }
                $('#numberUpDown').text(num);
                $('#cart_quantity').val(num);
                $('#product_price').text($('#cart_quantity').val() * '${product.pd_price}'μ);
            });
        }); */


    </script>
	<script type="text/javascript">
		function requestLogin(){
			alert('λ‘κ·ΈμΈμ ν΄μ£ΌμΈμ');
		}
	</script>


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