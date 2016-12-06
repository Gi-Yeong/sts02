<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LIST</title>
    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <style></style>
    <!-- jQuery (자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style type="text/css">
        body {
            padding-top: 50px;
        }

        .starter-template {
            padding: 40px 15px;
            text-align: center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">한빛교육센터</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/guest">리스트</a></li>
                <li><a href="${pageContext.request.contextPath}/guest/form">입력</a></li>
                <li><a href="${pageContext.request.contextPath}/login/form">로그인</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="jumbotron">
    <h1>LIST PAGE</h1>
    <p>guest table list</p>
    <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
</div>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-hover">
                <tr>
                    <th>사번</th>
                    <th>이름</th>
                    <th>날짜</th>
                    <th>금액</th>
                </tr>
                <c:forEach items="${alist}" var="bean">
                    <tr>
                        <td>${bean.sabun}</td>
                        <td>${bean.name}</td>
                        <td>${bean.nalja}</td>
                        <td>${bean.pay}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
