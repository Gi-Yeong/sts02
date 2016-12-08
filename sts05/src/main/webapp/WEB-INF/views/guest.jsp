<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LIST</title>
    <style type="text/css">
        .table {
            width: 80%;
            margin: auto;
        }

        .col {
            width: 24%;
            display: inline-block;
        }

        .col_link {
            text-decoration: none;
        }
    </style>
    <!-- jQuery (자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("button").click(function () {
//                var json = {'id': $("#id").val(), 'pw': $("#pw").val()};
//                var id = $("#id").val();
//                var pw = $("#pw").val();
                var json = {'id': $("#id").val(), 'pw': $("#pw").val()};
//                var json = new Object();

//                json.id = $("#id").val();
//                json.pw = $("#pw").val();
                json = $('#form1').serialize();
                alert(json);
//                alert(JSON.stringify(json));

                $.ajax({
                        url: '/guest/login',
                        type: 'post',
//                        dataType: 'text',   // 응답 타입
//                        data   : {'id': JSON.stringify(id), 'pw': JSON.stringify(pw)},
                        data: json,
//                        data   : json,
                        success: function (data) {
                            alert(data);
                            if (data == 'success') {
                                $('.login').remove();
//                                $('.login_ok').html('<h1>로그인 성공</h1>');
                                $('.login_ok').load('/loginOk.html');

                                window.localStorage.setItem("id", id);
//                                키 가져오기
//                                var value = window.localStorage.getItem("id");
                            } else if (data == 'fail') {
                                $('.login').remove();
                                $('.login_ok').html('<h1>로그인 실패</h1>');
                                window.localStorage.setItem("id", id);
                            }
                        }
                    }
                )
            })
        })
    </script>
</head>
<body>
<h1>LOGIN</h1>
<div class="login_ok"></div>
<div class="login">
    <form id="form1" action="${pageContext.request.contextPath}/guest/login" method="post">
        <label for="id">id</label>
        <input type="text" name="id" id="id"/>
        <label for="pw">pw</label>
        <input type="text" name="pw" id="pw"/>
        <button type="button">LOGIN</button>
    </form>
</div>
<h1>리스트페이지</h1>
<div class="table">
    <div>
        <span class="col">사번</span>
        <span class="col">이름</span>
        <span class="col">날짜</span>
        <span class="col">금액</span>
    </div>
    <c:forEach items="${alist}" var="bean">
        <a class="col_link" href="${pageContext.request.contextPath}/guest/detail?idx=${bean.sabun}">
            <div>
                <span class="col">${bean.sabun}</span>
                <span class="col">${bean.name}</span>
                <span class="col">${bean.nalja}</span>
                <span class="col">${bean.pay}</span>
            </div>
        </a>
    </c:forEach>
</div>
<p>
    <a href="${pageContext.request.contextPath}/guest/add">입력</a>
</p>
</body>
</html>
