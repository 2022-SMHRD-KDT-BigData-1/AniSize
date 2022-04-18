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

    <link rel="stylesheet" href="resources/css/style.css"/>
    <style>
    .myButton {
	background-color:#be94e0;
	border-radius:25px;
	border:1px solid #c584f3;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	padding:5px 10px;
	text-decoration:none;
	text-shadow:0px 1px 0px #9752cc;
    margin-right: 10px;
    margin-bottom: 30px;
    }
    .myButton:hover {
        background-color:#bc80ea;
    }
    .myButton:active {
        position:relative;
        top:1px;
    }

    .page-item {
		font-size: 3ch;
	}
    </style>
  </head>

  <body>
    <div class="container">
      <div class="brand" >
      <img src="resources/images/logo.jpg" style="width: 200px; height: 150px; margin-left:65px;" />
      <p style="text-align: center; font-size: 20px; font-weight: bold;">Best Item</p>
    </div>
      <br />
    <div class="order">
       <a href="best.do?filter=highSales"><button class="myButton" style="margin-left: 50px;">판매순</button></a>
       <a href="best.do?filter=highScore"><button class="myButton">별점순</button></a>
       <a href="best.do?filter=recent"><button class="myButton">최신순</button></a>
    </div>

      <ul class="products_list" id="pd_list">
      <c:forEach items="${productList}" var="product">
        <li>
          <a href="product.do?pd_num=${product.pd_num}">
            <div class="picture" style="background-image: url('images/product/${product.pd_num}/thumnail.jpg')">
            </div>
          </a>
          <h3><a href="">${product.pd_name}</a></h3>
          <h4>${product.pd_price}원</h4>
        </li>
      </c:forEach>
      </ul>
    
    <!-- 페이징 -->
			<div>
				<nav aria-label="Page navigation example">
					<ul class="pagination" style='text-align:center; display:block;'>
						<li class="page-item previous" style="display: none;"><a class="page-link" onclick ='previousPageList()'
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<c:forEach varStatus="pg" begin="1" end="${lastPage}">
							<c:choose>
								<c:when test='${pg.index<=5}'>
									<c:choose>
										<c:when test='${pg.index == currentPage}'>
											<li class="page-item active pageNum" style="display: inline-block;"><a
												class="page-link" href="best.do?filter=${filter}&page=${pg.index}">${pg.index}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item pageNum" style="display: inline-block;"><a
												class="page-link" href="best.do?filter=${filter}&page=${pg.index}">${pg.index}</a></li>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<c:choose>
										<c:when test='${pg.index == currentPage}'>
											<li class="page-item active pageNum" style="display: none;"><a
												class="page-link" href="best.do?filter=${filter}&page=${pg.index}">${pg.index}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item pageNum" style="display: none;"><a
												class="page-link" href="best.do?filter=${filter}&page=${pg.index}">${pg.index}</a></li>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test='${lastPage<=5}'>
							</c:when>
							<c:otherwise>
								<li class="page-item next" style="display: inline-block;"><a
									class="page-link" onclick='nextPageList()' aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
			</div>
			<br>
			<br>
			<br>
		</div>
		
	
    <!-- 메뉴바 + 카데고리 -->

    <!-- 메뉴바 -->
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
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
    <script>
    	var startNum = 0;
    	var endNum = 4;
    	var pageList = document.querySelectorAll('li.page-item.pageNum');
    	var previous = document.querySelector('li.page-item.previous');
    	var next = document.querySelector('li.page-item.next')
    	console.log(startNum,endNum);
		function previousPageList() {
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'none';
			}
			startNum = startNum-5;
			endNum = startNum+4;
			console.log(startNum,endNum);
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'inline-block';
			}
			previous.style.display='inline-block';
			next.style.display='inline-block';
			if (startNum==0){
				previous.style.display='none';
			}
		}
		
		function nextPageList() {
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'none';
			}
			startNum = startNum+5;
			endNum = startNum+4;
			if (endNum+1>=pageList.length){
				endNum = pageList.length-1;
			}
			console.log(startNum,endNum);
			for (var i = startNum; i <= endNum; i++){
				pageList[i].style.display = 'inline-block';
			}
			previous.style.display='inline-block';
			next.style.display='inline-block';
			if (endNum==pageList.length-1){
				next.style.display='none';
			}
			
		}
    </script>
    
  </body>
</html>
