<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />

    <title>aniSize</title>

    <!-- Bootstrap CSS -->

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- Google Fonts : MuseoModerno 영어-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap" rel="stylesheet">

    <!-- Google Fonts : MuseoModerno 한글-->
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

    <!--Css-->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />

    <link rel="stylesheet" href=" resources/css/style.css" />
    <style>
        body{
            font-family: "InfinitySans-RegularA1";
      
        font-weight: normal;
        font-style: normal;
        }
          /* 로고 */
          h1 {
            font-family: 'MuseoModerno', cursive;
            text-align: center;
            font-size: 60px;
        }
        
        /* 마이페이지 */
        .mp {
            width: 250px;
            text-decoration: none;
            color: inherit;
            font-family: 'Hahmlet', serif;
            font-size: 15px;
            color: black;
            font-weight: bolder;
            float: left;
            margin: 0 auto;
            line-height: 25px;
            display: grid;
            grid-template-rows: repeat(2, 1fr);
            grid-template-columns: repeat(1, 1fr);
            
    
            justify-content: center;
      
            column-gap: 10px;
            row-gap: 15px;
            flex-wrap: wrap;
            justify-content: space-between;
            grid-template-columns: 150px 150px;
            
        }
        ul, li{
            list-style: none;
        }
                
        @font-face {
        font-family: "InfinitySans-RegularA1";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff")
            format("woff");
        font-weight: normal;
        font-style: normal;
        }
        .d-grid li{
        font-family: "InfinitySans-RegularA1";
        font-weight: normal;
        font-style: normal;
        }
        .grid{
        
            text-decoration: none;
            color: inherit;
          
            font-size: 15px;
           
            font-weight: lighter;
            float: left;
            margin: 0 auto;
            line-height: 25px;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr ;
            justify-content: center;
            column-gap: 50px;
            row-gap: 1px;
            flex-wrap: wrap;
            justify-content: space-between;
        
        }
        .grid span{
          font-size: 12px;
        }
        .grid i{
          margin-top: 20px;
        }
        .detail_product{
          text-decoration: none;
            color: inherit;
          
            font-size: 13px;
            display: block;
            font-weight: lighter;
            float: left;
            margin: 0 auto;
            line-height: 25px;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr ;
            justify-content: center;
            column-gap: 16px;
            row-gap: 1px;
            flex-wrap: wrap;
            justify-content: space-between;
            text-align: center;
       
           
        }


    </style>
  </head>

  <body>
    <div class="container">
      <div class="" >
      <img src="resources/images/logo.jpg" style="width: 200px; height: 150px; margin-left: 60px;" />
    </div>
    <!--낙네임 들어가는곳-->
    <i class="bi bi-person-circle" style="font-size: 50px; display: flex; justify-content: left; align-items: left; color: #c2c2c2;
    font-size: 40px;">   <p style="text-align: center; font-size: 15px; margin-top: 10px; margin-left: 10px; margin-bottom: 40px; color: rgba(0, 0, 0, 0.76); font-weight: lighter;">
    <c:choose>
    	<c:when test="${empty member}">
    		<a href="login.do">로그인</a>
    	</c:when>
    	<c:otherwise>
   			 ${member.mem_nick}님
    	</c:otherwise>
    </c:choose>
    </p></i>
     <div class="detail_product">
      <div style="border: 1px solid rgb(218, 218, 218); padding: 7px 7px; width: 70px;
      height: 70px;"><a href=""><span >0<br> 입금/결제</span></a></div>
      <div style="border: 1px solid rgb(218, 218, 218); padding: 8px 8px; width: 70px;
      height: 70px;"><a href=""><span >0<br> 배송현황</span></a></div>
      <div style="border: 1px solid rgb(218, 218, 218); padding: 8px 8px; width: 70px;
      height: 70px;"><a href=""><span >0<br> 배송완료</span></a></div>
      <div style="border: 1px solid rgb(218, 218, 218); padding: 7px 7px; width: 70px;
      height: 70px;"><a href=""><span >0<br> 취소/환불</span></a></div>
      
     
    </div>

    <hr style="margin-top: 90px;">
    <div class="grid">
      <div><a href=""><i class="bi bi-piggy-bank" style="color: #8b8b8b; font-size: 35px; margin-left: 30px;"></i></a></div>
      <div><a href=""><i class="bi bi-coin" style="color: #8b8b8b; font-size: 30px; margin-left: 30px;"></i></a></div>
      <div><a href=""><i class="bi bi-alarm" style="color: #8b8b8b; font-size: 30px; margin-left: 30px;"></i></a></div>
      <div><span style="margin-left: 30px;">적립금</span></div>
      <div><span style="margin-left: 33px;">쿠폰</span></div>
      <div><span style="margin-left: 15px; text-align: left;">재입고 알림</span></div>
     
    </div>
  
    
   
    <hr style="margin-top: 100px;">
      <div class="d-grid gap-3 col-12 form-group" style=" width: 280px; "><span style="font-size: 10px; text-align: left; ">쇼핑정보</span>
        <div class="mp">
        <a class="" href="#" >회원정보 수정</a>
        <a class="" href="#" >반려동물 정보 수정</a>
        <a class="" href="#">구매 내역</a>
        <a class="" href="#">상품 리뷰</a>
        <a class="" href="#">입점 문의</a>
      </div>
    </div>
    <br>
    <br>

    <div class="d-grid gap-3 col-12 form-group" style=" width: 280px; "><span style="font-size: 10px; text-align: left; ">고객센터</span>
      <div class="mp">
      <a class="" href="#" >1:1문의</a>
      <a class="" href="#" >상품문의</a>
      <a class="" href="#">FAQ</a>
      <a class="" href="#">공지사항</a>
    </div>
  </div>

   

<jsp:include page="menuBar.jsp"></jsp:include>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
