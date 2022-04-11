<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <p>이미지를 1부터 끝은 모르는데 있는 숫자까지 출력하고싶어요</p>

	<img src="resources/test/${상세페이지번호}/thumbnail.jpg" width="100px">
	컨트롤러에서 받아와서 List<String>으로 만들어서 모델에 띄운걸 받아서 foreach로 해야할듯
	<img src="resources/test/${상세페이지번호}/${}.jpg" width="100px">
	<img src="resources/test/2.jpg" width="100px">
	~~~~ 6번까지 --%>
	<c:forEach items="${product_img_list}" var="imgName">
		<img src="resources/test/${상세페이지번호}/${imgName}.jpg">
	</c:forEach>
</body>
</html>