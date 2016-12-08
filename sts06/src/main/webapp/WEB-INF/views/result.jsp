<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RESULT</title>
    <!-- 부트스트랩 -->
    <link href="" rel="stylesheet">
    <style></style>
    <!-- jQuery (자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src=""></script>
</head>
<body>
<h1>파일전송 결과</h1>
<p>
upload 결과 : <a href="${pageContext.request.contextPath}/download?fnm=${filename}">${msg}</a>
</p>
</body>
</html>
