<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- Google Fonts : MuseoModerno -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=MuseoModerno:wght@600&display=swap"
        rel="stylesheet">


    <style>
        body {
            background-color: #ffffff;
            font-size: 10px;
            color: #5e5e5e;
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
            font-family: 'MuseoModerno', cursive;
            text-align: center;
            font-size: 60px;
        }

        .btn {
            background-color: #5e5e5e;
            color: #fff;
        }

        html,
        body {
            height: 100%;
        }
    </style>
</head>

<body>

    <div class="container">
        <h1>aniSize</h1>

        <h1>AniSize</h1>

        <h1>anisize</h1>

        <br>
        <div class="d-grid gap-3 col-12 form-group">
            <input type="email" class="form-control" id="email" placeholder="아이디(이메일)" name="email">

            <input type="password" class="form-control" id="password" placeholder="비밀번호" name="password">
        </div>

        <br>

        <div class="d-grid gap-1 col-12 mx-auto">

            <button type="button" class="btn" style="background-color: #5e5e5e;">로그인</button>
            <hr>
            <button type="button" class="btn" style="background-color: #5e5e5e;">회원가입</button>

        </div>

    </div>








    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>