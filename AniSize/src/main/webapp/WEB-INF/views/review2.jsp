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
        margin-top: 20px;
    
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
        margin: 20px auto;
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

        /*λ³μ */
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

            /*κ΅¬λ§€ λ§μ‘±λ ν*/
            .review-check{
              padding-bottom: 4px;
              border-bottom: 1px solid #f1f1f1;
            }
            .n-radio-tab{
              padding-right: 1px;
            }
            .review-check li{
              padding:  16px 0 16px 153px;
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
              width: 59px;
              height: 26px;
              padding-top: 2px;
              margin-right: 0;
              line-height: 24px;
              border: 1px solid #ebebeb;
              border-right: 0;
              color: #a5a5a5;
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
	        .review-share{
	        	justify-content: center;
       			text-align: center;
	        }
	        
	        td{
	        	width: 80px;
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
	          <h3 style="margin-right: 50px; margin-top: 0px">μ€νμΌ νκΈ° μμ±</h3>
	        </div>
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
	          <div class="two"></div>
	          <!--λΈλλλͺ-->
	          <div class="three">${ph.pd_name}</div>
	          <!--μνλͺ-->
	          <div class="four">${ph.stk_size}</div>
	          <!--μ¬μ΄μ¦-->
	        </div>
	      </div>
	    
	      <div class="review-share">
	       	<p style="font-size: 10px;">κ°μμ§ μ²΄ν μ λ³΄</p>
			<table style="margin: auto;">
				<tr>
					<td><span class="label" style="font-size: 10px;">λͺ©λλ  </span></td>
					<td><span class="label" style="font-size: 10px;">κ°μ΄λλ </span></td>
					<td><span class="label" style="font-size: 10px;">λ± κΈΈμ΄</span></td>
					<td><span class="label" style="font-size: 10px;">μ²΄μ€</span></td>
				</tr>
				<tr>
					<td>
						<c:if test="${!empty animal.ani_neck_length}">
							<span>${animal.ani_neck_length} cm</span>
						</c:if>
					</td>
					<td>
						<c:if test="${!empty animal.ani_chest_length}">
			 				<span>${animal.ani_chest_length} cm</span>
						</c:if>
					</td>
					<td>
						<c:if test="${!empty animal.ani_back_length}">
							<span>${animal.ani_back_length} cm</span>
						</c:if>
					</td>
					<td>
						<c:if test="${!empty animal.ani_weight}">
							<span>${animal.ani_weight} kg</span>
						</c:if>
					</td>
				</tr>
			</table>
	      </div>
	        
	      <hr style="margin-block-end: 10px; margin-bottom: 20px;" /> 
	      <h4>μνμ λ§μ‘±νμ¨λμ?</h4>
	  <form action="insertProductReview.do" method="post" enctype="multipart/form-data">
		      <input type="hidden" name="ph_num" value="${ph.ph_num}">
		      <input type="hidden" name="pd_num" value="${ph.pd_num}">
		      <!-- <input type="hidden" name="pd_num" value=""> -->
	     
		   	<span class="star">βββββ
		        <span>βββββ</span>
		        <input type="range" name="review_score" oninput="drawStar(this)" value="1" step="1" min="0" max="10" required>
		    </span>
		 
		    <!--λ³μ  μ±μ°κΈ°-->

	 
			<div class="review-share-view" style="display:none;">
				<c:if test="${!empty animal.ani_neck_length}">
				   <input type="number" name="ani_neck_length" value="${animal.ani_neck_length}">
				</c:if>
				<c:if test="${!empty animal.ani_chest_length}">
				   <input type="number" name="ani_chest_length" value="${animal.ani_chest_length}">
				</c:if>
				<c:if test="${!empty animal.ani_back_length}">
				   <input type="number" name="ani_back_length" value="${animal.ani_back_length}">
				</c:if>
				<c:if test="${!empty animal.ani_weight}">
				   <input type="number" name="ani_weight" value="${animal.ani_weight}">
				</c:if>
			</div>
		
		
		    <ul class="review-check">
		      <li class="n-radio-tab" value="1452">
		        <em class="label">μ¬μ΄μ¦</em>
		        <input type="radio" id="choice0_25" value="μ»€μ" name="satis_size">
		        <label for="choice0_25">μ»€μ</label>
		        <input type="radio" id="choice0_11" value="λ³΄ν΅μ΄μμ" name="satis_size">
		        <label for="choice0_11">λ³΄ν΅μ΄μμ</label>
		        <input type="radio" id="choice0_20" value="μμμ" name="satis_size">
		        <label for="choice0_20">μμμ</label>
		      </li>
		      <li class="n-radio-tab" value="1453">
		        <em class="label">λ°κΈ°</em>
		        <input type="radio" id="choice1_10" value="λ°μμ" name="satis_brightness">
		        <label for="choice1_10">λ°μμ</label>
		        <input type="radio" id="choice1_11" value="λ³΄ν΅μ΄μμ" name="satis_brightness">
		        <label for="choice1_11">λ³΄ν΅μ΄μμ</label>
		        <input type="radio" id="choice1_18" value="μ΄λμμ" name="satis_brightness">
		        <label for="choice1_18">μ΄λμμ</label>
		      </li>
		      <li class="n-radio-tab" value="1454">
		        <em class="label">μκ°</em>
		        <input type="radio" id="choice2_15" value="μ λͺν΄μ" name="satis_color">
		        <label for="choice2_15">μ λͺν΄μ</label>
		        <input type="radio" id="choice2_11" value="λ³΄ν΅μ΄μμ" name="satis_color">
		        <label for="choice2_11">λ³΄ν΅μ΄μμ</label>
		        <input type="radio" id="choice2_29" value="νλ €μ" name="satis_color">
		        <label for="choice2_29">νλ €μ</label>
		      </li>  
		      <li class="n-radio-tab" value="1455">
		        <em class="label">λκ»κ°</em>
		        <input type="radio" id="choice3_5" value="λκΊΌμμ" name="satis_thickness">
		        <label for="choice3_5">λκΊΌμμ</label>
		        <input type="radio" id="choice3_11" value="λ³΄ν΅μ΄μμ" name="satis_thickness">
		        <label for="choice3_11">λ³΄ν΅μ΄μμ</label>
		        <input type="radio" id="choice3_17" value="μμμ" name="satis_thickness">
		        <label for="choice3_17">μμμ</label>
		      </li>
		    </ul>
	
			<hr style="margin-block-end: 10px; margin-bottom: 20px;" /> 
	   
	
		    <span style="font-size: 13px; margin-left: 2px;">λ΄μ©</span>
		    <input
		    type="text"
		    class="form-memo"
		    id="email"
		    placeholder="μνμ λν νκ°λ₯Ό 20μ μ΄μ μμ±ν΄ μ£ΌμΈμ."
		    name="review_content"
		    required
		    />
		
		    <!--μ΄λ―Έμ§ μλ‘λ-->
		    <div id='image_preview'>
		        <input type='file' accept='image/*' id='btnAtt' name="review_image"/>
		        <div id='att_zone' data-placeholder='νμΌμ μ²¨λΆ νλ €λ©΄ νμΌ μ ν λ²νΌμ ν΄λ¦­νκ±°λ νμΌμ λλκ·Έμ€λλ‘­ νμΈμ'></div>
		    </div>
		    
		    <hr class="hrbar" style="margin-block-start: 20px; border: solid 10px #999;" />
    </div>

    <!-- λ©λ΄λ° + μΉ΄λ°κ³ λ¦¬ -->
    <nav
      class="navbar fixed-bottom" 
      style="
        margin: 0px;
        padding: 0px;
        background-color: #c370de;
        color: #c370de;
        border-top: 0.1px solid #c370de;
      "
    >
      <button type="submit" style="width: 100%; height: 50px; background-color: #a657e6;  color: #fff; border: 0px; font-size: 15px;">λ¦¬λ·° λ±λ‘</button>
    </nav>
    </form>
	 <script>
	        const drawStar = (target) => {
	       	 console.log(target.value)
	       	 // ${target.value * 10}
	           document.querySelector(`.star span`).style.width = (target.value * 10) + `%`;
	       }
	</script>
    <script>
      (/* att_zone : μ΄λ―Έμ§λ€μ΄ λ€μ΄κ° μμΉ id, btn : file tag id */
      imageView = function imageView(att_zone, btn){
    
        var attZone = document.getElementById(att_zone);
        var btnAtt = document.getElementById(btn)
        var sel_files = [];
        
        // μ΄λ―Έμ§μ μ²΄ν¬ λ°μ€λ₯Ό κ°μΈκ³  μλ div μμ±
        var div_style = 'display:inline-block;position:relative;'
                      + 'width:150px;height:120px;margin:5px;border:1px solid rgb(146, 146, 146);z-index:1';
        // λ―Έλ¦¬λ³΄κΈ° μ΄λ―Έμ§ μμ±
        var img_style = 'width:100%;height:100%;z-index:none';
        // μ΄λ―Έμ§μμ νμλλ μ²΄ν¬λ°μ€μ μμ±
        var chk_style = 'width:20px;height:26px;position:absolute;font-size:12px;'
                      + 'right:0px;bottom:0px;z-index:999;color:#9400ff; margin-bottom:92px';
      
        btnAtt.onchange = function(e){
          var files = e.target.files;
          var fileArr = Array.prototype.slice.call(files)
          for(f of fileArr){
            imageLoader(f);
          }
        }  
      
        // νμκΈ°μμ λλκ·Έμ€ λλ‘­ μ¬μ©
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
        
        /*μ²¨λΆλ μ΄λ―Έλ¦¬μ¦μ λ°°μ΄μ λ£κ³  λ―Έλ¦¬λ³΄κΈ° */
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
        
        /*μ²¨λΆλ νμΌμ΄ μλ κ²½μ° checkboxμ ν¨κ» attZoneμ μΆκ°ν  divλ₯Ό λ§λ€μ΄ λ°ν */
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
          return div;
        }
      }
    )('att_zone', 'btnAtt')
    
    </script>


    <!-- μλ Popper μμ΄μΌ μ¬λΌμ΄λλ‘ λμ΄..... μ λ μ§μ°μ§λ§!!!!!!!! -->
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
        
        
        <br><br><br><br><br><br><br><br><br><br>
  </body>
</html>