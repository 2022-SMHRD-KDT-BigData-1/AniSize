<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- Google Fonts : MuseoModerno 영어-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap"
      rel="stylesheet"
    />
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

    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="resources/css/style.css">

    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

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




      /* 탭 컬러 변경 */
      .nav-link {
        color: #ad67ea;
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
        margin-left: 15px;
        }
      
        .re-btn:active {
            position:relative;
            top:1px;
        }

        /*별점*/
        h4{
            text-align: center;
        }
        .star {
            position: relative;
            font-size: 3.3rem;
            text-align: center;
            margin-left: 45px;
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
            
            width: 335px;
            height: 150px;
            font-size: 1rem;
            color: rgba(39, 39, 39, 0.76);
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            margin-bottom: 30px;
           
             }

             /*이미지 업로드*/
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
        width: 335px;
        min-height: 150px;
        padding: 10px;
        border: 1px solid rgb(146, 146, 146);
        }

        #att_zone:empty:before {
        content: attr(data-placeholder);
        color: #999;
        font-size: .9em;
        }

             /*구매 만족도 표*/
             .review-check{
              padding-bottom: 4px;
              border-bottom: 1px solid #f1f1f1;
            }
            .n-radio-tab{
              padding-right: 1px;
            }
            .review-check li{
              padding:  15px 0 16px 153px;
              position: relative;
            }
            .review-check .label{
              position: absolute;
              left: 0;
              top: 20px;
            }
            .n-radio-tab input{
              display: block;
              position: absolute;
              overflow: hidden;
              width: 1px;
              height: 1px;
              margin: -1px;
              clip: rect(0 0 0 0);
            }
            input[type="radio"]{
              margin: 0;
              vertical-align: middle;
            }
            input[type="checkbox"]{
              box-sizing: border-box;
              padding: 0;
            }
            .review-check .n-radio-tab input + label{
              width: 88px;
              height: 26px;
              padding-top: 3px;
              margin-right: 0;
              border: 1px solid #ebebeb;
         
              border-right: 0;
              color: #5e5e5e;
              font-size: 12px;
            }
            .n-radio-tab input + label{
              display: inline-block;
              float: left;
              text-align: center;
              vertical-align: top;
              position: relative;
              cursor: pointer;
            }
            .n-radio-tab input:nth-child(4) + label {
            border-radius: 4px 0 0 4px;
             }
             .review-check .n-radio-tab input + label:last-child {
               border-right: 1px solid #ebebeb;
               border-radius: 0 4px 4px 0;
             }
             .review-check .n-radio-tab input:checked + label:last-child{
              border-right: 1px solid #0078ff
             }

             .review-check .n-radio-tab input:checked + label{
              border: 1px solid #0078ff;
              color: #fff;
              background: #0078ff;
              border-right: 0;
             }
             .n-radio-tab:after {
              content: "";
              display: block;
              clear: both;
            }
            .n-input {
                width: 177px;
                height: 32px;
                padding: 5px 6px;
                border: 1px solid #e5e5e5;
                background-color: #ffffff;
                box-sizing: border-box;
                font-family: "Apple SD Gothic Neo", "Noto Sans KR", sans-serif !important;
                font-size: 14px;
                line-height: 20px;
                -webkit-transition: border 0.2s ease-in-out;
                -moz-transition: border 0.2s ease-in-out;
                -o-transition: border 0.2s ease-in-out;
                transition: border 0.2s ease-in-out;
                margin-bottom: 14px;
                text-align: center;
         
            }
            .review-share-view li span {
            position: absolute;
            top: 20px;
            left: 307px;
            line-height: 21px;
            }
     
            .hrbar{
            color: #999;
             }
           
             

                
    </style>
  </head>

  <body>
    <div class="container">
      <!-- 뒤로 가기 + 로고 -->
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
          <h3 style="margin-right: 50px; margin-top: 0px">스타일 후기 작성</h3>
        </div>
      </div>

    
      <!-- 상품 이미지 (썸네일)-->
      <div class="row">
        <div class="detail_productname">
          <div class="one">
            <!-- 예시 이미지 -->
            <img
              src="resources/images/2.jpg"
              style="
                width: 120px;
                height: 120px;
                padding: 0px;
           
              "
            />
          </div>
        </div>
        <div class="row2">
          <div class="tow">브랜드명</div>
          <!--브랜드명-->
          <div class="three">상품명</div>
          <!--상품명-->
          <div class="four">사이즈</div>
          <!--사이즈-->
        </div>
        
      </div>
      <hr style="margin-block-end: 10px; margin-bottom: 20px;" /> 
    <div class="revuew-share">
        <span style="font-size: 13px;">신체정보</span>
   </div>  
   <div class="review-share-view">
    <ul class="review-check">
      <li class="n-radio-tab" value="1452">
        <em class="label" style="font-size: 13px;">성별</em>
        <input type="radio" id="choice0_25" value="25" name="answer0">
        <label for="choice0_25">수컷</label>
        <input type="radio" id="choice0_11" value="11" name="answer0">
        <label for="choice0_11">암컷</label>
      </li>
      <li>
        <em class="label" style="font-size: 13px;">목둘레</em>
        <input type="number" class="n-input" placeholder="" name="review_share_height" id="review_share_height" value="" style="ime-mode:disabled;">
        <span>cm</span>
      </li>
      <li>
        <em class="label" style="font-size: 13px;">가슴둘레</em>
        <input type="number" class="n-input" placeholder="" name="review_share_height" id="review_share_height" value="" style="ime-mode:disabled;">
        <span>cm</span>
      </li>
      <li>
        <em class="label" style="font-size: 13px;">등길이</em>
        <input type="number" class="n-input" placeholder="" name="review_share_height" id="review_share_height" value="" style="ime-mode:disabled;">
        <span>cm</span>
      </li>
      <li>
        <em class="label" style="font-size: 13px;">몸무게</em>
        <input type="number" class="n-input" placeholder="" name="review_share_height" id="review_share_height" value="" style="ime-mode:disabled;">
        <span>kg</span>
      </li>
      </ul>
   </div>

   <span style="font-size: 13px; margin-left: 2px;">내용</span>
    <input
    type="text"
    class="form-memo"
    id="email"
    placeholder="상품에 대한 평가를 20자 이상 작성해 주세요."
    name="address"
    />

    <!--이미지 업로드-->
    <div id='image_preview'>
     
        <input type='file' id='btnAtt' multiple='multiple' />
        <div id='att_zone'
          data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
      </div>
      <br>
      <br>
      <hr class="hrbar" style="margin-block-start: 20px; border: solid 10px #999;" /> 
    
      <script>
    ( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
      imageView = function imageView(att_zone, btn){
    
        var attZone = document.getElementById(att_zone);
        var btnAtt = document.getElementById(btn)
        var sel_files = [];
        
        // 이미지와 체크 박스를 감싸고 있는 div 속성
        var div_style = 'display:inline-block;position:relative;'
                      + 'width:150px;height:120px;margin:5px;border:1px solid rgb(146, 146, 146);z-index:1';
        // 미리보기 이미지 속성
        var img_style = 'width:100%;height:100%;z-index:none';
        // 이미지안에 표시되는 체크박스의 속성
        var chk_style = 'width:20px;height:26px;position:absolute;font-size:12px;'
                      + 'right:0px;bottom:0px;z-index:999;color:#9400ff; margin-bottom:92px';
      
        btnAtt.onchange = function(e){
          var files = e.target.files;
          var fileArr = Array.prototype.slice.call(files)
          for(f of fileArr){
            imageLoader(f);
          }
        }  
        
      
        // 탐색기에서 드래그앤 드롭 사용
        attZone.addEventListener('dragenter', function(e){
          e.preventDefault();
          e.stopPropagation();
        }, false)
        
        attZone.addEventListener('dragover', function(e){
          e.preventDefault();
          e.stopPropagation();
          
        }, false)
      
        attZone.addEventListener('drop', function(e){
          var files = {};
          e.preventDefault();
          e.stopPropagation();
          var dt = e.dataTransfer;
          files = dt.files;
          for(f of files){
            imageLoader(f);
          }
          
        }, false)
        
    
        
        /*첨부된 이미리즐을 배열에 넣고 미리보기 */
        imageLoader = function(file){
          sel_files.push(file);
          var reader = new FileReader();
          reader.onload = function(ee){
            let img = document.createElement('img')
            img.setAttribute('style', img_style)
            img.src = ee.target.result;
            attZone.appendChild(makeDiv(img, file));
          }
          
          reader.readAsDataURL(file);
        }
        
        /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
        makeDiv = function(img, file){
          var div = document.createElement('div')
          div.setAttribute('style', div_style)
          
          var btn = document.createElement('input')
          btn.setAttribute('type', 'button')
          btn.setAttribute('value', 'x')
          btn.setAttribute('delFile', file.name);
          btn.setAttribute('style', chk_style);
          btn.onclick = function(ev){
            var ele = ev.srcElement;
            var delFile = ele.getAttribute('delFile');
            for(var i=0 ;i<sel_files.length; i++){
              if(delFile== sel_files[i].name){
                sel_files.splice(i, 1);      
              }
            }
            
            dt = new DataTransfer();
            for(f in sel_files) {
              var file = sel_files[f];
              dt.items.add(file);
            }
            btnAtt.files = dt.files;
            var p = ele.parentNode;
            attZone.removeChild(p)
          }
          div.appendChild(img)
          div.appendChild(btn)
          return div
        }
      }
    )('att_zone', 'btnAtt')
    
    </script>


   


  

  
 

    <!-- 메뉴바 + 카데고리 -->
    <nav
    class="navbar fixed-bottom"
    style="
     
      margin: 0px;
      padding: 0px;
      background-color: #ffffff;
      color: #c370de;
      border-top: 0.1px solid #c370de;
    "
  >
  <button style="width: 100%; height: 50px; background-color: #a657e6;  color: #fff; border: 0px; font-size: 15px;">등록</button>
  </nav>




    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script> -->
  </body>
</html>
