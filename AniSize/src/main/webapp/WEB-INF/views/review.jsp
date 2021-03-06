<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <!-- Google Fonts : MuseoModerno μμ΄-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap"
      rel="stylesheet"
    />
      <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Google Fonts : MuseoModerno νκΈ-->
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
	<link rel="stylesheet" href=" resources/css/style.css" />
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




      /* ν­ μ»¬λ¬ λ³κ²½ */
      .nav-link {
        color: #ad67ea;
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
      .button_grid{
        text-decoration: none;
        color: inherit;
        grid-template-columns: 1fr 1fr;
        display: block;
        font-weight: lighter;
        padding: auto;
        margin: 0 auto;
       
        display: grid;
        column-gap:3px;
        row-gap: 3px;
        flex-wrap: wrap;
        justify-content: space-between;
        text-align: left;
      }
      .button_grid div>button{
          font-size: 13px;
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
        margin-top: 0;
     
        }
      
        .re-btn:active {
            position:relative;
            top:1px;
        }

        /*λ³μ */
        h4{
            text-align: center;
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
        .form-memo {
            display: block;
            text-align: center;
            width: 100%;
            height: 80px;
            font-size: 1rem;
            color: rgba(180, 180, 180, 0.76);
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            margin-bottom: 30px;
           
             }

             /*μ΄λ―Έμ§ μλ‘λ*/
             .thumb {
            width: 100px;
            height: 100px;
            margin: 0.2em -0.7em 0 0;
            }
        .remove_img_preview {
            position:relative;
            top:-25px;
            right:5px;
            background:black;
            color:white;
            border-radius:50px;
            font-size:0.9em;
            padding: 0 0.3em 0;
            text-align:center;
            cursor:pointer;
        }

        #att_zone {
        width: 350px;
        min-height: 150px;
        padding: 10px;
        border: 1px solid rgb(146, 146, 146);
        }

        #att_zone:empty:before {
        content: attr(data-placeholder);
        color: #999;
        font-size: .9em;
        }
        
        .hrbar{
            color: #999;
        }
          .nav-link{
          color: #595959;
        }
        .nav-link:focus, .nav-link:hover {
            color: rgb(195, 120, 224);
        }
          
    
            /**/
        .nav{
          margin-left: 0px;
          border: none;
          font-size: 15px;
      

        }
        .nav-item{
          margin-left: 30px;
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
            /**/
            
            .review-evaluation2 {
            display: flex;
            padding: 10px 0 0 53px;
            }
            .review-evaluation2__list {
            display: flex;
            width: auto;
            justify-content: flex-start;
            padding: 10px;
            margin-left: -97px;
            }
            ol,li{
                list-style: none;
            }
            .review-evaluation2__item {
            width: 96px;
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
            .review-evaluation2__item>span {
            padding-left: 5px;
            color: #595959;
            }
             
        

      

                
    </style>
  </head>

  <body>
    <div class="container">
      <!-- λ€λ‘ κ°κΈ° + λ‘κ³  -->
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
          <h3 style="margin-right: 50px; margin-top: 0px">μν λ¦¬λ·° μμ±</h3>
        </div>
      </div>
          <hr style="margin-block-end: 10px" /> 
      <ul class="nav" role="tablist">
        <li class="nav-item">
          <a class="nav-link " data-toggle="pill" href="#home" style="margin-right: 70px; margin-left: ;">νκΈ°μμ±</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="pill" href="#menu1">νκΈ°λ΄μ­</a>
        </li>
      </ul>
      
      <hr style="margin-block-end: 10px" /> 
      <!--κ΅¬λ§€ λ μ§-->
      <div class="tab-content">
       <div id="home" class="container tab-pane active"><br>
      <c:forEach items="${writeReviewList}" var="ph">
      
      <div class="day">
        <div style="font-size: 15px; margin-left: 10px;">κ΅¬λ§€μΌ</div>
        <div style="font-size: 15px; margin-left: 10px;">${ph.ph_date}</div>
      </div>
    
      <!-- μν μ΄λ―Έμ§ (μΈλ€μΌ)-->
      <div class="row">
        <div class="detail_productname">
          <div class="one">
            <!-- μμ μ΄λ―Έμ§ -->
            <img
              src="images/product/${ph.pd_num}/thumnail.jpg"
              style="
                width: 120px;
                height: 120px;
                padding: 0px;
              "
            />
          </div>
        </div>
        <div class="row2">
          <div class="tow">${ph.brand}</div>
          <!--λΈλλλͺ-->
          <div class="three">${ph.pd_name}</div>
          <!--μνλͺ-->
          <div class="four">${ph.stk_size}</div>
          <!--μ¬μ΄μ¦-->
        </div>
      </div>
    <div class="button_grid">
    
     	<div><a href="javascript:hiddenQuery('review2.do','${ph.ph_num}')"><button class="re-btn" >λ¦¬λ·° μμ±</button></a></div>
<!--          <div><a href="review3_1.do"><button class="re-btn" >μνμ¬μ§ νκΈ° μμ±</button></a></div>
        <div><a href="review3_2.do"><button class="re-btn" >μΌλ° νκΈ° μμ±</button></a></div>
        <div><a href="review3_3.do"><button class="re-btn" >μ¬μ΄μ¦ νκΈ° μμ±</button></a></div>  -->
    </div>  
     <hr class="hrbar" style="margin-block-start: 20px; border: solid 10px #999;" /> 
	</c:forEach> 
   
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
    </div>
      <div id="menu1" class="container tab-pane fade"><br>
      <c:forEach items="${reviewList}" var="review">
                      <!--κ΅¬λ§€ λ μ§-->
           <div class="day" >
            <div style="font-size: 15px; margin-left: 10px; margin-top: 20px;">κ΅¬λ§€μΌ</div>
            <div style="font-size: 15px; margin-left: 10px; margin-top: 20px;">${review.ph_date}</div>
          </div>
        
      <!-- μν μ΄λ―Έμ§ (μΈλ€μΌ)-->
      <div class="row">
        <div class="detail_productname">
          <div class="one">
            <!-- μμ μ΄λ―Έμ§ -->
            <img
              src="resources/images/product/${review.pd_num}/thumnail.jpg"
              style="
                width: 120px;
                height: 120px;
                padding: 0px;
           
              "
            />
          </div>
        </div>
        <div class="row2">
          <div class="tow">λΈλλλͺ ${review.brand}</div>
          <!--λΈλλλͺ-->
          <div class="three">μνλͺ ${review.pd_name}</div>
          <!--μνλͺ-->
          <div class="four">μ¬μ΄μ¦ ${review.stk_size}</div>
          <!--μ¬μ΄μ¦-->
        </div>
        
      </div>
     
    <span class="star" >
        
        βββββ
        <span style="width: ${review.review_score * 10}%">βββββ</span>
    </span>  
 
 
    <br>
    <!--μ΄λ―Έμ§ λ£λκ΅¬κ°-->
    <c:if test="${!empty review.review_img}">
    <img src="${review.review_img}" style="width: 200px; height: 200px;">
    </c:if>
    <p style="font-size: 15px; margin-top: 20px;">${review.review_content}</p>
    <div class="review-evaluation">
        <ul class="review-evaluation__list">
            <li class="review-evaluation__item">
                μ¬μ΄μ¦
                <span>${review.satis_size}</span>
            </li>
            <li class="review-evaluation__item">
                λ°κΈ°
                <span>${review.satis_brightness}</span>
            </li>
            <li class="review-evaluation__item">
                μκ°
                <span>${review.satis_color}</span>
            </li>
            <li class="review-evaluation__item">
                λκ»κ°
                <span>${review.satis_thickness}</span>
            </li>
        </ul>
        
    </div>
    <div class="review-evaluation2">
      <ul class="review-evaluation2__list">
          <li class="review-evaluation2__item">
              λͺ©λλ 
              <span>${review.ani_neck_length}cm</span>
          </li>
          <li class="review-evaluation2__item">
              λ±κΈΈμ΄
              <span>${review.ani_back_length}cm</span>
          </li>
          <li class="review-evaluation2__item">
              κ°μ΄λλ 
              <span>${review.ani_chest_length}cm</span>
          </li>
          <li class="review-evaluation2__item">
              λͺΈλ¬΄κ²
              <span>${review.ani_weight}kg</span>
          </li>
      </ul>
      
  </div>
     <hr class="hrbar" style="margin-block-start: 20px; border: solid 10px #999;" /> 
</c:forEach>
  



        
        </div>
        
      </div>
      

  

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script> -->
  </body>
</html>
