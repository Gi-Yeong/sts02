<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 50px;
        }
    </style>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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
            <a class="navbar-brand" href="/sts04/">한빛교육센터</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/guest">리스트</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/guest/form">입력</a></li>
                <li><a href="${pageContext.request.contextPath}/login/form">로그인</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="jumbotron">
    <h1>ADD PAGE</h1>
    <p>guest table list</p>
    <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
</div>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/guest">List</a></li>
                <li class="active">Add</li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="page-header">
                <h1>입력페이지</h1>
            </div>
            <form class="form-horizontal" action="${pageContext.request.contextPath}/guest" method="post">
                <div class="form-group">
                    <label for="sabun" class="col-sm-2 control-label">사번</label>
                    <div class="col-sm-10 input-group input-group-sm">
                        <span class="input-group-addon" id="sizing-addon3">번호</span>
                        <input type="number" class="form-control" name="sabun" id="sabun" placeholder="사번을 입력하세요">
                    </div>
                </div>
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">이름</label>
                    <div class="col-sm-10 input-group input-group-sm">
                        <span class="input-group-addon">문자</span>
                        <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력하세요">
                    </div>
                </div>
                <div class="form-group">
                    <label for="pay" class="col-sm-2 control-label">금액</label>
                    <div class="col-sm-10 input-group input-group-sm">
                        <span class="input-group-addon">원</span>
                        <input type="number" class="form-control" name="pay" id="pay" placeholder="금액을 입력하세요">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="btn-group" role="group">
                            <button type="submit" class="btn btn-default">입 력</button>
                            <button type="reset" class="btn btn-default">취 소</button>
                        </div>
                    </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
