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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>    
    <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
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

    <link rel="stylesheet" href="resources/css/style.css" />
    <style>
      .btn {
          background-color: #ffffff;
          color: #585858;
     
          width: 107px;
          font-size: 12px;
  
       
      }
      .dropdown{
          margin-bottom: 50px;
      }
      .style{
          text-align: center;
          font-size: 30px;
          margin-top: -10px;
   
          color: #353535a6;
          font-family: 'Akshar', sans-serif;
          font-family: 'Hi Melody', cursive;
      }
    
    </style>
  </head>

  <body>
    <div class="container">
      <div class="brand" >
      <img src="resources/images/logo.jpg" style="width: 200px; height: 150px; margin-left: 60px;" />
    </div>
      <br />
      <!--초기화면 FASHION으로 고정 카테고리 선택시 FASHION이 카테고리 제목으로 바뀌게 할 예정--->
      <h3 class="style" style="border-bottom: 1px solid rgba(158, 158, 158, 0.918); margin-bottom: 15px;">FASHION</h3>
      
      <!-- Example single danger button -->
      <div class="dropdown">
        <a class="btn  " href="categorySearch.do?categoryNum=1" role="button" id="">
            티셔츠 | 탑
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=2" role="button" id=""  >
            원피스 | 팬츠
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=3" role="button" id="" >
            올인원
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=4" role="button" id="" >
            맨투맨 | 후드
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=5" role="button" id=""  style="font-size: 11px; ">
            셔츠 | 블라우스
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=6" role="button" id="" >
            아우터
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=7" role="button" id="" >
            니트 | 가디건
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=8" role="button" id="" >
            잠옷 | 가운
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=9" role="button" id="" >
            한복
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=10" role="button" id="" >
            레인코트
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=11" role="button" id="" >
           구명조끼
        </a>
        <a class="btn  " href="categorySearch.do?categoryNum=12" role="button" id="" >
            커플룩
        </a>
    
      </div>
      
      
    <select name="select" style="font-size: 15px; margin-bottom: 20px; margin-top: -5px;">
        <option value="">정렬방식</option>
        <option value="신상품">신상품</option>
        <option value="상품명">상품명</option>
        <option value="낮은가격">낮은가격</option>
        <option value="높은가격">높은가격</option>
        <option value="인기상품">인기상품</option>
        <option value="사용후기">사용후기</option>
        <option value="조회수">조회수</option>
    </select>
     

      <ul class="products_list">
      <c:forEach items="${productList}" var="product">
        <li>
          <a href="">
            <div class="picture" style="background-image: url('resources/images/product/${product.pd_num}/thumnail.jpg')">
              
            </div>
          </a>
          <h3><a href="">${product.pd_name}</a></h3>
          <h4>${product.pd_price}</h4>
        </li>
      </c:forEach>
 
      </ul>
    </div>

    <jsp:include page="menuBar.jsp"></jsp:include>

    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
