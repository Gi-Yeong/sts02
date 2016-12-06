<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DETAIL</title>
    <!-- 부트스트랩 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <style></style>
    <!-- jQuery (자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".edit").hide();
            $(".detail").show();
            $(".btnEdit").click(function () {
                $(".detail").hide();
                $(".edit").show();
                $(".page-hader").html("<h1>수정 페이지</h1>");
            });
        });
    </script>
    <style type="text/css">
        body {
            padding-top: 50px;
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

<div class="row">
    <div class="col-xs-12">
        <form method="post" class="form-horizontal">
            <input type="hidden" name="_method" value="put">
            <div class="form-group">
                <label for="sabun">사번</label>
                <input type="text" class="form-control" id="sabun" name="sabun" value="${bean.sabun}">
            </div>
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" class="form-control" id="name" name="name" value="${bean.name}">
            </div>
            <div class="form-group">
                <label for="pay">금액</label>
                <input type="text" class="form-control" id="pay" name="pay" value="${bean.pay}">
            </div>
            <button type="submit" class="btn btn-default">수정</button>
        </form>
    </div>
</div>
</body>
</html>
