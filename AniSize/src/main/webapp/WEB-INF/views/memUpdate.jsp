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
    <!-- Google Fonts : MuseoModerno μμ΄-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
      rel="stylesheet"
    />
    <!-- Google Fonts : Hahmlet νκΈ-->
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
    <script type="text/javascript" src="httpRequest.js"></script>
    <script
	src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script>

    <link rel="stylesheet" href="resources/css/style.css">

    <style>
      body {
        background-color: #ffffff;
        font-size: 10px;

        display: flex;
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
      }

      .btn {
        color: #fff;
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
            </i
          ></a>
        </div>
        <div class="col-11">
          <h3 style="margin-left: -20px; margin-top: 5px">Member Update</h3>
        </div>
      </div>
      <br />

      <hr />
      <br />
      <form action="memberUpdate.do" method="post">
      <div class="d-grid gap-3 col-12 form-group">
     
        <p style="text-align: right; font-size: 13px; font-weight: bold">
          <span style="color: red">*</span>λ νμμ¬ν­ μλλ€.
        </p>
         <input
          type="text"
          class="form-control"
          id="email"
          placeholder="μ΄λ©μΌ"
          name="mem_email"
          value="${member.mem_email}"
          style="visibility:hidden;"
        />
     

        <span style="font-size: 13px" id="pw_label"
          >λΉλ°λ²νΈ<span style="color: red">*</span></span
        >
        <input
          type="password"
          class="form-control"
          id="password"
          placeholder="λΉλ°λ²νΈ"
          name="mem_pw"
          required class="pass"
      
        />
        
        

        <input
          type="password"
          class="form-control"
          id="passwordCk"
          placeholder="λΉλ°λ²νΈ νμΈ"
          name="mem_pw_check"
          required class="pass"
      
        />
        
       <p id="checkPwd" ></p>
  


	<script type="text/javascript">
		
		 			 
		$('#passwordCk').focusout( function (){
		
			var pwd1=$("#password").val();
			var pwd2=$("#passwordCk").val();
			
		
		  if(pwd1 != pwd2){
		
			$('#checkPwd').text('λμΌν μνΈλ₯Ό μλ ₯νμΈμ');
			$("#checkPwd").css("color", 'red');
		  	/* document.getElementById('checkPwd').innerHTML = "λμΌν μνΈλ₯Ό μλ ₯νμΈμ."; */
		  }else{
			
			$('#checkPwd').text('μνΈκ° νμΈ λμμ΅λλ€');
			$("#checkPwd").css("color", 'blue');
		  	/* document.getElementById('checkPwd').innerHTML = "μνΈκ° νμΈ λμμ΅λλ€."; */
		   
		  	}
	   	  });
		 
			 
	</script>


        <span style="font-size: 13px"
          >λλ€μ<span style="color: red">*</span></span
        >
        <input
          type="text"
          class="form-control"
          id="nick"
          placeholder="λλ€μ"
          name="mem_nick"
        />
        <span style="font-size: 13px"
          >μ νλ²νΈ<span style="color: red">*</span></span
        >
        <input
          type="text"
          class="form-control"
          id="tel"
          placeholder="μ νλ²νΈ"
          name="mem_tel"
        />
        <span style="font-size: 13px"
          >μ£Όμ<span style="color: red">*</span></span
        >
        <input
          type="text"
          class="form-control"
          id="address"
          placeholder="μ£Όμ"
          name="mem_address"
        />
      </div>
      <br />
      <p style="text-align: left; font-size: 13px; font-weight: normal">
        - μ΄λ©μΌ λ³κ²½ μν  μ, μλ‘ νμκ°μ νμμΌ ν©λλ€.
      </p>

      <br />

      <div class="d-grid gap-1 col-12 mx-auto">
        <button
          type="submit"
          class="btn"
          style="background-color: rgb(173, 103, 234)"
        >
          λ³κ²½νκΈ°
        </button>
        
      </div>
   	</form>
   </div>
    
    
            <!-- λ©λ΄λ° + μΉ΄λ°κ³ λ¦¬ -->
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

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
