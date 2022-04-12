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
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
      rel="stylesheet"
    />
    <!-- Google Fonts : Hahmlet 한글-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
      rel="stylesheet"
    />
    <!-- Bootstrap Icon -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="resources/css/style.css">

    <style>
        @font-face {
        font-family: "InfinitySans-RegularA1";
        src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff")
            format("woff");
        font-weight: normal;
        font-style: normal;
    }

      body {
        background-color: #ffffff;
        font-size: 10px;
        color: #5e5e5e;
        display: flex;
        font-family: "InfinitySans-RegularA1";
     
        font-weight: lighter;
        font-style: normal;
      }

      .container {
        width: 100%;
        height: 100%;
        max-width: 350px;
        min-width: 300px;
        padding: 10px;
        margin: auto;
        display: block;
      }
      .container-fluid {
        width: 100%;
        /* 사이즈 fixed */
        max-width: 350px;
        min-width: 300px;
        padding: 0px;
        margin: auto;
        display: block;
        position: relative;
        }

      h1 {
        font-family: "MuseoModerno", cursive;
        text-align: center;
        font-size: 60px;
      }

      .btn {
        background-color: #5e5e5e;
        color: #fff;
        width: 330px;
        height: 38px;
      }

      html,
      body {
        height: 100%;
      }
      .col-11 h3 {
        font-family: "Jua", sans-serif;
        font-size: 35px;
        color: rgb(173, 103, 234);
      }
      .form-memo {
        display: block;
        width: 100%;
        height: 100px;
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #ced4da;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: 0.25rem;
        transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
      }
      li {
      list-style: none;
    }

    img {
      width: 200px;
      height: 200px;
    }

    .real-upload {
      display: none;
    }

    .upload {
      width: 330px;
      height: 150px;
      border: 1px solid #bdbdbd;

    }

   
    .bi-camera{
       display: flex;
       justify-content: center;
       align-items: center;
       margin-top: 50px;
    }
    .form-check-label{
        font-size:15px ;
    }
    input[type=checkbox] {

    zoom: 1.5;

    }
    .form-control{
        font-weight: lighter;
    }
    </style>
  </head>

  <body>
    <div class="container">
      <div class="row">
        <div class="col-1">
          <a class="navbar-brand" href="javascript:history.back()">
            <i
              class="bi bi-chevron-left"
              style="color: #5e5e5e; text-align: start; font-size: 30px"
            >
            </i>
            <img
              src="resources/images/logi(2).jpg"
              style="
                width: 200px;
                height: 60px;
                margin-left: 40px;
                margin-bottom: 18px;
              "
          /></a>
        </div>
      </div>
      <br />
      <i
        class="bi bi-people-fill"
        style="
          font-size: 50px;
          display: flex;
          justify-content: center;
          align-items: center;
        "
      ></i
      >
      <p style="text-align: center; font-size: 15px">입점문의</p>
      <hr />

      <br />

      <br />
      <div class="d-grid gap-3 col-12 form-group">
        <input
          type="text"
          class="form-control"
          id="company"
          placeholder="회사명*"
          name="nick"
        />
        <input
          type="text"
          class="form-control"
          id="brand"
          placeholder="브랜드명*"
          name="password"
        />
        <input
          type="text"
          class="form-control"
          id="manager"
          placeholder="담당자명*"
          name="passwordCk"
        />

        <input
          type="text"
          class="form-control"
          id="tel"
          placeholder="연락처*"
          name="tel"
        />
        <input
          type="text"
          class="form-control"
          id="email"
          placeholder="이메일*"
          name="address"
        />
        <input
          type="text"
          class="form-control"
          id="url"
          placeholder="공식 홈페이지 주소"
          name="address"
        />
        <input
          type="text"
          class="form-control"
          id="address"
          placeholder="업체 주소"
          name="address"
        />
        <input
          type="text"
          class="form-memo"
          id="email"
          placeholder="회사, 상품 소개 및 관련 내용"
          name="address"
        />
               <span style="font-size: 15px"
          >첨부파일</span
        >
        <input type="file" class="real-upload" accept="image/*" required multiple>
        <div class="upload"><i class="bi bi-camera" style="font-size: 50px;"></i></div>
        <div class="form-check" style="margin-left: 8px;">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
            <label class="form-check-label" for="flexCheckChecked" style="font-weight: lighter;">
              개인정보 수정에 동의 합니다.
            </label>
          </div>
      </div>
      <br>
        <p style="text-align: left; font-size: 13px; font-weight: lighter">
          -모든 등록 건은 담당자가 확인하여 이메일 또는 전화로 반드시 회신드리오니 중복 등록하지 않으셔도 됩니다.
          - 브랜드 정보를 가능한 상세하게 입력하셔야 빠른 처리가 가능하며, 단순 입점 방식에 대한 문의는 답변드리지 않습니다.
        </p>
        <button
          type="button"
          class="btn"
          style="background-color: rgb(173, 103, 234); margin-top: 20px; margin-bottom: 80px;"
        >
          완료
        </button>
      </div>
      </div>
    </div>
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
      <div class="container-fluid">
        <a
          class="navbar-toggler"
          type="button"
          data-bs-toggle="offcanvas"
          data-bs-target="#offcanvasNavbar"
          aria-controls="offcanvasNavbar"
          style="margin: 0px; padding: 0px"
        >
          <i class="bi bi-list" style="font-size: 32px"></i>
          <!-- <i class="bi bi-card-list"></i> -->
        </a>

        <a class="navbar-brand" href="#"
          ><i class="bi bi-search" style="font-size: 25px"></i
        ></a>
        <a class="navbar-brand" href="#"><i class="bi bi-house-door"></i></a>
        <a class="navbar-brand" href="#"
          ><i class="bi bi-cart" style="font-size: 28px"></i
        ></a>
        <a class="navbar-brand" href="#"
          ><i class="bi bi-person" style="font-size: 32px"></i
        ></a>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>

    <script>
        function getImageFiles(e) {
          const uploadFiles = [];
          const files = e.currentTarget.files;
          const imagePreview = document.querySelector('.image-preview');
          const docFrag = new DocumentFragment();
    
          if ([...files].length >= 1) {
            alert('이미지는 최대 1개 까지 업로드가 가능합니다.');
            return;
          }
    
          // 파일 타입 검사
          [...files].forEach(file => {
            if (!file.type.match("image/.*")) {
              alert('이미지 파일만 업로드가 가능합니다.');
              return
            }
    
            // 파일 갯수 검사
            if ([...files].length < 2) {
              uploadFiles.push(file);
              const reader = new FileReader();
              reader.onload = (e) => {
                const preview = createElement(e, file);
                imagePreview.appendChild(preview);
              };
              reader.readAsDataURL(file);
            }
          });
        }
    
        function createElement(e, file) {
          const li = document.createElement('li');
          const img = document.createElement('img');
          img.setAttribute('src', e.target.result);
          img.setAttribute('data-file', file.name);
          li.appendChild(img);
    
          return li;
        }
    
        const realUpload = document.querySelector('.real-upload');
        const upload = document.querySelector('.upload');
    
        upload.addEventListener('click', () => realUpload.click());
    
        realUpload.addEventListener('change', getImageFiles);
      </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
