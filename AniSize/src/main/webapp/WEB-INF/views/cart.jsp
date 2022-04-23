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
    <!-- Google Fonts : MuseoModerno 영어-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=MuseoModerno:wght@200&display=swap" rel="stylesheet">
    <!-- Google Fonts : MuseoModerno 한글-->
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

        /* 상단 제목 */
        h1 {
            font-family: "InfinitySans-RegularA1";
            font-size: 18px;
            color: #2c2c2ca1;
            width: 200px;
            font-weight: normal;
            font-style: normal;
            text-align: center;
            margin-bottom: 0px;
            padding-right: 30px;

        }

        @font-face {
            font-family: "InfinitySans-RegularA1";
            src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        p {
            margin-bottom: 6px;
        }

        .btn {
            color: #ad67ea;
            padding: 0 0 0 0;
            /* border-color: #ad67ea;
            width: 160px;
            height: 28px;
            display: flex;
            text-align: center;
            justify-content: center;
            align-items: center; */

        }
        
        /* 결제하기 버튼 설정*/
        .container-fluid {
            width: 100%;
            /* 사이즈 fixed */
            max-width: 350px;
            min-width: 300px;
            padding: 0px;
            margin: auto;
            display: block;

        }



        /* 여백 킻 크기 확인 */
        .z {
            border: solid salmon;

        }
    </style>
</head>

<body>

    <div class="container">
        <!-- 뒤로 가기 + 로고 -->
        <div class="row">
            <div class="col-1">
                <a class="navbar-brand" href="javascript:history.back()">
                    <i class="bi bi-chevron-left" style=" color: #5e5e5e; text-align: start; font-size: 20px; ">
                    </i></a>
            </div>
            <div class="col-11" style="display: flex; justify-content: center; align-items: center;">
                <!-- My Order List -->
                <!-- <img src="logo_product.jpg" style="width: 200px; margin-left: 50px; margin-bottom: 30px;"> -->
                <h1 class="">장바구니</h1>
            </div>
        </div>

        <i class="bi bi-cart"
            style="color: #ad67ea; font-size: 50px;  display: flex; justify-content: center; align-items: center;"></i><br>

        <!-- 장바구니 담은 상품 리스트 -->
        <div class="row" style="margin-bottom: 12px;padding-left: 29px; ">
            <div class="form-check">
                <!-- 전체선택 -->
                <input class="form-check-input" type="checkbox" value="selectall" onclick='selectAll(this)'
                    name="" id="flexCheckDefault" style="font-weight: 600;font-size: 20px" />

                <label class="form-check-label" for="flexCheckDefault"
                    style="font-weight: 600;font-size: 14px; padding-top: 4px;">
                    전체 선택(선택한 숫자 / 전체 상품 숫자)
                </label>
                <!-- 지우기 금지 -->
                <script>
                    function selectAll(selectAll) {
                        const checkboxes
                            = document.getElementsByName('select');

                        checkboxes.forEach((checkbox) => {
                            checkbox.checked = selectAll.checked;
                        })
                    }
                </script>

            </div>
        </div>

		<c:forEach items="${cartList}" var="product" varStatus="i">
        <!-- 선택한 상품 정보 -->
        <div class="selected_Product" id="cartList${product.cart_num}">
            <hr style="display:flex; max-width: 330px;">

            <div class="row" style="margin-bottom: 12px; ">
                <!-- 선택 체크 -->
                <div class="col-10" style="padding-left: 15px;">
                    <div class="form-check" style="padding-left: 35px;">
                        <input class="form-check-input ckck" type="checkbox" value="" name="select" onclick=""
                            style="font-weight: 600;font-size: 20px; margin-top: 0rem;">
                    </div>
                </div>
                <div class="col-2">
                    <!-- 삭제 버튼 -->
                    <button type="button" class="btn" aria-label="Delete" onclick="deleteCart(${product.cart_num})">
                        <i class=" bi bi-x-square-fill" style="font-size: 20px; text-align: end; padding-top: 0px;"></i>
                    </button>
                </div>
            </div>
            <div class="row aa">
                <div class="col-5">
                    <!-- 상품 이미지 -->
                    <img src="images/product/${product.pd_num}/thumnail.jpg" class="rounded" style="display:flex; max-width: 120px; max-height: 120px;">
                </div>
                <div class="col-7 aa" style="font-size: 14px;">
                    <p style="font-weight: 600;font-size: 13px">상품명 ${product.pd_name}</p>
                    <!-- 옵션 선택시 후, 하단에 선택한 옵션 보여줌-->
                    <div class="selected_option" style="font-size: 14px;">
						<c:choose>
							<c:when test="${!empty product.stk_option}">
	                        <span>컬러 블루 / </span>
							</c:when>
						</c:choose>
                        <span>사이즈 ${product.stk_size}</span><br><br>

                        <p style="text-align: end;" class="pd_price">가격 ${product.stk_price}원</p>
						<input type="hidden" value="${product.stk_price}" class="sp">
                        <!--수량 수정  -->
                        <div class="number" style="font-size: 20px; text-align: left; ">
                            <a href="#" class="increaseQuantity">
                                <i class="bi bi-plus-square-fill" style="color: #5e5e5e;"></i></a>
                            <!-- <i class="bi bi-plus-square"></i> -->
                            <span class="numberUpDown">${product.cart_quantity}</span>
                            <a href="#" class="decreaseQuantity">
                                <i class="bi bi-dash-square" style="color: #5e5e5e;"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row rororo" style="margin-top: 0px; "> <!-- 16 -->
                <div class="col-6">
                    <!-- 바로 구매 -->
<!--                     <button type="button" class="btn btn secondary btn-sm" onclick="nowBuy()" style=" color: #fff;
            padding: 0 0 0 0; background-color: #ad67ea; width: 120px; height: 28px; display: flex; text-align: center; justify-content: center;
            align-items: center; "> 바로구매</button> -->
                </div>
                
                <div class="col-6 rongrong">
                    <!-- 가격 X 수량 => 총금액 -->
                    <p style="text-align: end; font-weight: 600; font-size: 18px;">총 ${product.stk_price * product.cart_quantity}원</p>
                    <input type="hidden" class="" value="${product.stk_price * product.cart_quantity}">
                    <input type="hidden" value="${product.stk_num}">
                </div>
            </div>
        </div>
        </c:forEach>
        

        <hr style="display:flex; max-width: 330px; margin-top: 8px; margin-bottom: 5px;">

        <div class="row" style="padding-right: 15px;">
            <div class="col-11" style="padding-right: 0px;margin-top: 7px;">
                <p style="text-align: end; font-weight: 600; font-size: 14px; padding: 0 0 0 0 ; margin-bottom: 0px;" id="sum_price">
                    상품 0 + 배송비 0 = 총 0</p>
            </div>

            <div class="col-1" style="padding-left: 0px; text-align: end;">
                <button type="button" class="btn btn secondary btn-sm" data-bs-toggle="tooltip" data-bs-placement="top"
                    title="50,000원 이상 구매시 &#13; 무료배송(배송비 3,000원)" style="width: 30px;padding-left: 0px;">
                    <i class=" bi bi-exclamation-square" style="font-size: 22px"></i>
                </button>
                <!-- 지우기 금지 -->
                <script>
                    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
                    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                        return new bootstrap.Tooltip(tooltipTriggerEl)
                    })
                </script>
            </div>
        </div>

        <style>
            th {
                width: 120px;
                font-size: 14px;
                color: #5e5e5e;
                font-weight: 600;
            }

            td {
                font-size: 18px;
                color: #5e5e5e;
                text-align: end;
                font-weight: 700;
                /* text-align: start; */
            }

            table {
                max-width: 320px;
                padding: 0 0 0 0;
            }

            hr.l {
                display: flex;
                max-width: 320px;
            }

            .pm {
                padding: 0 0 0 0;
                margin-top: 20px;
                margin-left: 8px;
                margin-right: 8px;
                width: 330px;
            }
        </style>
        <div class="row" style="margin-bottom: 12px; ">

            <div class="row pm">
                <span style="font-weight: 600;font-size: 18px">결제할 상품</span>
                <hr class="l">
                <table class="table">
                    <tbody>
                        <tr>
                            <th scope="row">주문 상품 수</th>
                            <td id="pd_cnt">총 0 개</td>
                        </tr>
                        <tr>
                            <th scope="row">총 주문금액</th>
                            <td id="del_price2">0 원</td>
                        </tr>
                        <tr>
                            <th scope="row">총 배송비</th>
                            <td>0 원</td>
                        </tr>
                        <tr>
                            <th scope="row">총 결제금액</th>
                            <td style="color: #d700d7;" id="sum_price2">0 원</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div><!-- 장바구니 내역 까지-->

</div><!--/ container  -->
        <!-- 하단 결제하기 버튼  -->
            <nav class="fixed-bottom" style="margin: 0px; padding: 0px; background-color:#c370de ;
                color:#ffffff; border-top: 0.1px solid #ad67ea;">
					
       				 <div class="container-fluid">
       				 	<div id="hidden"></div>
            			<button type="button fixed-bottom" class="btn" onclick="buy()"
               				 style="width: 350px;height: 40px; display: flex; justify-content: center; align-items: center; background:#c370de; color: #ffffff;">
               			 결제하기
          				</button>
        			</div>
    		</nav>
   	
    		
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
	function nowBuy(){ 
		if($('#optionSize').val().indexOf('[필수]') != -1){
			alert('사이즈를 선택해주세요')
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
    /* 갯수랑 번호 리스트로 담아서 넘기기 체크된거 찾아서 그 위치서 반복문 */
    function deleteCart(cart_num){
    	console.log(cart_num);
    	$.ajax({
 			url : 'deleteCart.do',
 			type : 'post',
 			data: {"cart_num" : cart_num},
 			success : function(res){
 				console.log(res);
 				$('#cartList'+cart_num).remove();
 			},
 			error : function(e){
 				console.log(e);
 			}
 		}); 
    }
    
    function buy(){
    	console.log(  $($(this).parent()).html() );
    	let pd_cnt = 0;
 	    var buyList = [];
 		$('.priceprice').each(function(){
 	   		buyList.push({
 	   	 		"stk_num" : $($(this).next('input')[0]).val(),
 	   	 		"cart_quantity" : $($(this).parent().parent().parent().children('div.aa').children('div.col-7').children('div.selected_option').children('div.number').children('span')).text()
 	   		})
 		});
		console.log(buyList);
/* 		var h = "";
		for(var i = 0; i < buyList.length; i++){
			h += "<input type='hidden' name='stk_num' value='"+buyList[i].stk_num+"'>";
			console.log(h);
		}
		$('#hidden').html(h); */
		
   		$.ajax({
 			url : 'buy.do',
 			type : 'post',
 			contentType:'application/json',
 			data: JSON.stringify(buyList),
 			success : function(res){
 				console.log(res);
				location.href="order.do";
 			},
 			error : function(e){
 				console.log(e);
 			}
 		});  
    }
	   
    
    
          $(function(){
        	$('.ckck').change(function (e){
        		e.preventDefault();
        		var ckTrue = $(this).is(":checked");
        		console.log(ckTrue);
        		if(ckTrue){
        			console.log('체크됨')
        			var ip = $($(this).parent().parent().parent().parent().children('div.rororo').children('div.rongrong').children('input')[0]);
        			ip.addClass('priceprice');
        			console.log(ip.attr('class'))
    				let sum = 0; 
    				let pd_count = 0;
    				$('.priceprice').each(function(){
    					sum+= Number($(this).val());
    					pd_count +=1;
    				});
    				pd_cnt = pd_count;
    				let del_price = 3000;
    				
    				if(sum>=50000){
    					del_price = 0;
    				}
    				$('#sum_price').text('상품 ' +sum + '  + 배송비 '+del_price+' = '+(sum+del_price));
    				$('#sum_price2').text((sum+del_price)+' 원');
    				$('#del_price2').text(del_price+' 원');
    				$('#pd_cnt').text('총 '+pd_count+' 개');
        			
        		}else{
        			console.log('체크 안됨')
        			var ip = $($(this).parent().parent().parent().parent().children('div.rororo').children('div.rongrong').children('input')[0]);
        			ip.removeClass('priceprice');
        			console.log(ip.attr('class'))
    				let sum = 0; 
    				let pd_count = 0;
    				pd_cnt = pd_count;
    				$('.priceprice').each(function(){
    					sum+= Number($(this).val());
    					pd_count +=1;
    				});
    				let del_price = 3000;
    				if(sum>=50000){
    					del_price = 0;
    				}
    				$('#sum_price').text('상품 ' +sum + '  + 배송비 '+del_price+' = '+(sum+del_price));
    				$('#sum_price2').text((sum+del_price)+' 원');
    				$('#del_price2').text(del_price+' 원');
    				$('#pd_cnt').text('총 '+pd_count+' 개');
        		}
        	});
        });   
      
        
        $(function () {
            $('.decreaseQuantity').click(function (e) {
                e.preventDefault();
                var stat = $($(this).prev('.numberUpDown')[0]).text();
                var num = parseInt(stat, 10);
                var stk_price = parseInt($($(this).parent().parent().children('input.sp')[0]).val(), 10);
                
                num--;
                if (num <= 0) {
                	alert('더이상 줄일수 없습니다.');
                	num = 1; 
                }
                $($(this).prev('.numberUpDown')[0]).text(num);
                $($(this).parent().parent().parent().parent().parent().children('div.rororo')[0].children[1].children[0]).text('총 '+(num*stk_price)+'원');
                $($(this).parent().parent().parent().parent().parent().children('div.rororo')[0].children[1].children[1]).val(num*stk_price);
				let sum = 0; 
				$('.priceprice').each(function(){
					sum+= Number($(this).val());
				});
				let del_price = 3000;
				if(sum>=50000){
					del_price = 0;
				}
				$('#sum_price').text('상품 ' +sum + '  + 배송비 '+del_price+' = '+(sum+del_price));
				$('#sum_price2').text((sum+del_price)+' 원');
				$('#del_price2').text(del_price+' 원');
                
            });
            $('.increaseQuantity').click(function (e) {
                e.preventDefault();
                var stat = $($(this).next('.numberUpDown')[0]).text();
                var num = parseInt(stat, 10);
                var stk_price = parseInt($($(this).parent().parent().children('input.sp')[0]).val(), 10);
                
                num++; 
                if (num > 10) {
                    alert('더이상 늘릴수 없습니다.');
                    num = 10;
                }
                $($(this).next('.numberUpDown')[0]).text(num);
                $($(this).parent().parent().parent().parent().parent().children('div.rororo')[0].children[1].children[0]).text('총 '+(num*stk_price)+'원');
                $($(this).parent().parent().parent().parent().parent().children('div.rororo')[0].children[1].children[1]).val(num*stk_price);
                let sum = 0; 
                $('.priceprice').each(function(){
                	sum+= Number($(this).val());
                });
                let del_price = 3000;
                if(sum>=50000){
                	del_price = 0;
                }
                $('#sum_price').text('상품 ' +sum + '  + 배송비 '+del_price+' = '+(sum+del_price));
                $('#sum_price2').text((sum+del_price)+' 원');
                $('#del_price2').text(del_price+' 원');
            });
        });


    </script>





    <!-- 아래 Popper 있어야 슬라이드로 나옴..... 절대 지우지마!!!!!!!! -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>







</body>

</html>