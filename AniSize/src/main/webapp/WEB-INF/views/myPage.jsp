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
    <!-- Google Fonts : MuseoModerno μμ΄-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
      rel="stylesheet"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap" rel="stylesheet">

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
          /* λ‘κ³  */
          h1 {
            font-family: 'MuseoModerno', cursive;
            text-align: center;
            font-size: 60px;
        }
        
        /* λ§μ΄νμ΄μ§ */
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
            a.logout{
          display:block;
          width:80px;
          line-height:30px;
          text-align:center;
          background-color:#606060bd;
          color:#fff;
        }


    </style>
  </head>

  <body>
    <div class="container">
    <form action="logout.do" method="post">
      <div class="" >
      <img src="resources/images/logo.jpg" style="width: 200px; height: 150px; margin-left: 60px;" />
    </div>
    <!--λλ€μ λ€μ΄κ°λκ³³-->
    <i class="bi bi-person-circle" style="font-size: 50px; display: flex; justify-content: left; align-items: left; color: #c2c2c2;
    font-size: 40px;">   <p style="text-align: left; font-size: 15px; margin-top: 10px; margin-left: 10px; margin-bottom: 40px; color: rgba(0, 0, 0, 0.76); font-weight: lighter; width:230px">
    <c:choose>
    	<c:when test="${empty member}">
    		<a href="login.do">λ‘κ·ΈμΈ</a>
    	</c:when>
    	<c:otherwise>
   			 ${member.mem_nick}λ
    	</c:otherwise>
    </c:choose>
    </p>   
    <c:if test="${!empty member}">
    <div class="logout" style="display: flex; justify-content: right; align-items: right;">
                <a href="logout.do" class="logout" style="    width: 60px;
    height: 30px;
    font-size: 10px;
    margin-left: 0px;
    margin-top: 7px;
    border: none;">λ‘κ·Έμμ</a>
            </div>
    </c:if>
            </i>
     <div class="detail_product">
      <div style="border: 1px solid rgb(218, 218, 218); padding: 7px 7px; width: 70px;
      height: 70px;"><a href=""><span >0<br> μκΈ/κ²°μ </span></a></div>
      <div style="border: 1px solid rgb(218, 218, 218); padding: 8px 8px; width: 70px;
      height: 70px;"><a href=""><span >0<br> λ°°μ‘νν©</span></a></div>
      <div style="border: 1px solid rgb(218, 218, 218); padding: 8px 8px; width: 70px;
      height: 70px;"><a href=""><span >0<br> λ°°μ‘μλ£</span></a></div>
      <div style="border: 1px solid rgb(218, 218, 218); padding: 7px 7px; width: 70px;
      height: 70px;"><a href=""><span >0<br> μ·¨μ/νλΆ</span></a></div>
       
     
    </div>

    <hr style="margin-top: 90px;">
    <div class="grid">
      <div><a href=""><i class="bi bi-piggy-bank" style="color: #8b8b8b; font-size: 35px; margin-left: 30px;"></i></a></div>
      <div><a href=""><i class="bi bi-coin" style="color: #8b8b8b; font-size: 30px; margin-left: 30px;"></i></a></div>
      <div><a href=""><i class="bi bi-alarm" style="color: #8b8b8b; font-size: 30px; margin-left: 30px;"></i></a></div>
      <div><span style="margin-left: 30px;">μ λ¦½κΈ</span></div>
      <div><span style="margin-left: 33px;">μΏ ν°</span></div>
      <div><span style="margin-left: 15px; text-align: left;">μ¬μκ³  μλ¦Ό</span></div>
     
    </div>

    
   
    <hr style="margin-top: 100px;">
      <div class="d-grid gap-3 col-12 form-group" style=" width: 280px; "><span style="font-size: 10px; text-align: left; ">μΌνμ λ³΄</span>
        <div class="mp">
        <c:choose>
        	<c:when test="${!empty member}">
        	</c:when>
        	<c:otherwise>
		        
        	</c:otherwise>
        </c:choose>
        <c:choose>
        	<c:when test="${!empty member}">
		        <a class="" href="memUpdate.do">νμμ λ³΄ μμ </a>
		        <c:choose>
		        	<c:when test="${isAniJoinDone eq 0}">
						<a class="" href="aniJoin.do">λ°λ €λλ¬Ό μ λ³΄ λ±λ‘</a>
		        	</c:when>
		        	<c:otherwise>
						<a class="" href="aniUpdate.do">λ°λ €λλ¬Ό μ λ³΄ μμ </a>
		        	</c:otherwise>
		        </c:choose>
      			<a class="" href="javascript:hiddenQuery('purchaseHistory.do','${member.mem_num}')">κ΅¬λ§€ λ΄μ­</a>
		        <a class="" href="review.do">μν λ¦¬λ·°</a>
<%-- 		        <a class="" href="javascript:hiddenQuery('review.do', '${member.mem_num}')">μν λ¦¬λ·°</a> --%>
		        <a class="" href="#">μμ  λ¬Έμ</a>
        	</c:when>
        	<c:otherwise>
		        <a class="" href="#" onclick="requestLogin()">νμμ λ³΄ μμ </a>
		        <a class="" href="#" onclick="requestLogin()">λ°λ €λλ¬Ό μ λ³΄ λ±λ‘</a>
      			<a class="" href="#" onclick="requestLogin()">κ΅¬λ§€ λ΄μ­</a>
		        <a class="" href="#" onclick="requestLogin()">μν λ¦¬λ·°</a>
		        <a class="" href="#" onclick="requestLogin()">μμ  λ¬Έμ</a>
        	</c:otherwise>
        </c:choose>
      </div>
    </div>
    <script type="text/javascript">
    function hiddenQuery(url, mem_num){
        let f = document.createElement('form');
        let obj;
        obj = document.createElement('input');
        obj.setAttribute('type', 'hidden');
        obj.setAttribute('name', 'mem_num');
        obj.setAttribute('value', mem_num);
        
        f.appendChild(obj);
        f.setAttribute('method', 'post');
        f.setAttribute('action', url);
        document.body.appendChild(f);
        f.submit();
    }
 
    </script>
    
    <br>
    <br>

    <div class="d-grid gap-3 col-12 form-group" style=" width: 280px; "><span style="font-size: 10px; text-align: left; ">κ³ κ°μΌν°</span>
      <div class="mp">
      <a class="" href="#" >1:1λ¬Έμ</a>
      <a class="" href="#" >μνλ¬Έμ</a>
      <a class="" href="#">FAQ</a>
      <a class="" href="#">κ³΅μ§μ¬ν­</a>
    </div>
    
    <br><br><br><br><br>
    </div>
   </form>
  </div>

<jsp:include page="menuBar.jsp"></jsp:include>

<script type="text/javascript">
	function requestLogin(){
		alert('λ‘κ·ΈμΈμ ν΄μ£ΌμΈμ');
	}
</script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
